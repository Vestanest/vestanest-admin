<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\NewsletterSubscription;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;
use App\Mail\NewsletterSubscriptionConfirmed;
use Carbon\Carbon;

class NewsletterController extends Controller
{
    /**
     * Subscribe to newsletter
     */
    public function subscribe(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|max:255',
            'first_name' => 'sometimes|string|max:255',
            'last_name' => 'sometimes|string|max:255',
            'preferences' => 'sometimes|array',
            'preferences.property_types' => 'sometimes|array',
            'preferences.price_range' => 'sometimes|array',
            'preferences.locations' => 'sometimes|array',
            'preferences.frequency' => 'sometimes|string|in:daily,weekly,monthly',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Check if email already exists
        $existingSubscription = NewsletterSubscription::where('email', $request->email)->first();

        if ($existingSubscription) {
            if ($existingSubscription->is_active) {
                return response()->json([
                    'success' => false,
                    'message' => 'Email is already subscribed to our newsletter'
                ], 400);
            } else {
                // Resubscribe existing user
                $existingSubscription->resubscribe();
                $existingSubscription->update([
                    'first_name' => $request->first_name ?? $existingSubscription->first_name,
                    'last_name' => $request->last_name ?? $existingSubscription->last_name,
                    'preferences' => $request->preferences ?? $existingSubscription->preferences,
                ]);

                // Send welcome back email
                try {
                    Mail::to($existingSubscription->email)->send(new NewsletterSubscriptionConfirmed([
                        'id' => $existingSubscription->id,
                        'email' => $existingSubscription->email,
                        'first_name' => $existingSubscription->first_name,
                        'last_name' => $existingSubscription->last_name,
                        'preferences' => $existingSubscription->preferences,
                        'subscribed_at' => $existingSubscription->subscribed_at,
                    ]));
                    Log::info("Newsletter welcome email sent successfully to: {$existingSubscription->email}");
                } catch (\Exception $e) {
                    Log::error("Failed to send newsletter welcome email to: {$existingSubscription->email} - Error: " . $e->getMessage());
                }

                return response()->json([
                    'success' => true,
                    'message' => 'Successfully resubscribed to our newsletter',
                    'data' => [
                        'subscription' => [
                            'id' => $existingSubscription->id,
                            'email' => $existingSubscription->email,
                            'first_name' => $existingSubscription->first_name,
                            'last_name' => $existingSubscription->last_name,
                            'is_active' => $existingSubscription->is_active,
                            'preferences' => $existingSubscription->preferences,
                            'subscribed_at' => $existingSubscription->subscribed_at,
                        ]
                    ]
                ]);
            }
        }

        // Create new subscription
        $subscription = NewsletterSubscription::create([
            'email' => $request->email,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'is_active' => true,
            'preferences' => $request->preferences ?? [],
            'subscribed_at' => Carbon::now(),
        ]);

        // Send welcome email
        try {
            Mail::to($subscription->email)->send(new NewsletterSubscriptionConfirmed([
                'id' => $subscription->id,
                'email' => $subscription->email,
                'first_name' => $subscription->first_name,
                'last_name' => $subscription->last_name,
                'preferences' => $subscription->preferences,
                'subscribed_at' => $subscription->subscribed_at,
            ]));
            Log::info("Newsletter welcome email sent successfully to: {$subscription->email}");
        } catch (\Exception $e) {
            Log::error("Failed to send newsletter welcome email to: {$subscription->email} - Error: " . $e->getMessage());
        }

        return response()->json([
            'success' => true,
            'message' => 'Successfully subscribed to our newsletter',
            'data' => [
                'subscription' => [
                    'id' => $subscription->id,
                    'email' => $subscription->email,
                    'first_name' => $subscription->first_name,
                    'last_name' => $subscription->last_name,
                    'is_active' => $subscription->is_active,
                    'preferences' => $subscription->preferences,
                    'subscribed_at' => $subscription->subscribed_at,
                ]
            ]
        ], 201);
    }

    /**
     * Unsubscribe from newsletter
     */
    public function unsubscribe(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $subscription = NewsletterSubscription::where('email', $request->email)->first();

        if (!$subscription) {
            return response()->json([
                'success' => false,
                'message' => 'Email not found in our newsletter subscriptions'
            ], 404);
        }

        if (!$subscription->is_active) {
            return response()->json([
                'success' => false,
                'message' => 'Email is already unsubscribed from our newsletter'
            ], 400);
        }

        $subscription->unsubscribe();

        return response()->json([
            'success' => true,
            'message' => 'Successfully unsubscribed from our newsletter',
            'data' => [
                'subscription' => [
                    'id' => $subscription->id,
                    'email' => $subscription->email,
                    'is_active' => $subscription->is_active,
                    'unsubscribed_at' => $subscription->unsubscribed_at,
                ]
            ]
        ]);
    }

    /**
     * Update subscription preferences
     */
    public function updatePreferences(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|max:255',
            'preferences' => 'required|array',
            'preferences.property_types' => 'sometimes|array',
            'preferences.price_range' => 'sometimes|array',
            'preferences.locations' => 'sometimes|array',
            'preferences.frequency' => 'sometimes|string|in:daily,weekly,monthly',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $subscription = NewsletterSubscription::where('email', $request->email)->first();

        if (!$subscription) {
            return response()->json([
                'success' => false,
                'message' => 'Email not found in our newsletter subscriptions'
            ], 404);
        }

        if (!$subscription->is_active) {
            return response()->json([
                'success' => false,
                'message' => 'Cannot update preferences for unsubscribed email'
            ], 400);
        }

        $subscription->update([
            'preferences' => $request->preferences,
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Subscription preferences updated successfully',
            'data' => [
                'subscription' => [
                    'id' => $subscription->id,
                    'email' => $subscription->email,
                    'first_name' => $subscription->first_name,
                    'last_name' => $subscription->last_name,
                    'is_active' => $subscription->is_active,
                    'preferences' => $subscription->preferences,
                    'subscribed_at' => $subscription->subscribed_at,
                ]
            ]
        ]);
    }

    /**
     * Get subscription status
     */
    public function status(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $subscription = NewsletterSubscription::where('email', $request->email)->first();

        if (!$subscription) {
            return response()->json([
                'success' => true,
                'data' => [
                    'is_subscribed' => false,
                    'message' => 'Email is not subscribed to our newsletter'
                ]
            ]);
        }

        return response()->json([
            'success' => true,
            'data' => [
                'is_subscribed' => $subscription->is_active,
                'subscription' => [
                    'id' => $subscription->id,
                    'email' => $subscription->email,
                    'first_name' => $subscription->first_name,
                    'last_name' => $subscription->last_name,
                    'is_active' => $subscription->is_active,
                    'preferences' => $subscription->preferences,
                    'subscribed_at' => $subscription->subscribed_at,
                    'unsubscribed_at' => $subscription->unsubscribed_at,
                ]
            ]
        ]);
    }

    /**
     * Get newsletter statistics (Admin only - for future implementation)
     */
    public function statistics(): JsonResponse
    {
        $stats = [
            'total_subscribers' => NewsletterSubscription::count(),
            'active_subscribers' => NewsletterSubscription::active()->count(),
            'inactive_subscribers' => NewsletterSubscription::inactive()->count(),
            'subscribers_this_month' => NewsletterSubscription::whereMonth('subscribed_at', Carbon::now()->month)
                ->whereYear('subscribed_at', Carbon::now()->year)
                ->count(),
            'subscribers_this_week' => NewsletterSubscription::whereBetween('subscribed_at', [
                Carbon::now()->startOfWeek(),
                Carbon::now()->endOfWeek()
            ])->count(),
            'unsubscribers_this_month' => NewsletterSubscription::whereMonth('unsubscribed_at', Carbon::now()->month)
                ->whereYear('unsubscribed_at', Carbon::now()->year)
                ->count(),
        ];

        return response()->json([
            'success' => true,
            'data' => [
                'statistics' => $stats
            ]
        ]);
    }

    /**
     * Get all subscriptions (Admin only - for future implementation)
     */
    public function index(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'page' => 'sometimes|integer|min:1',
            'per_page' => 'sometimes|integer|min:1|max:100',
            'status' => 'sometimes|string|in:active,inactive,all',
            'search' => 'sometimes|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $query = NewsletterSubscription::query();

        // Apply status filter
        $status = $request->get('status', 'all');
        if ($status === 'active') {
            $query->active();
        } elseif ($status === 'inactive') {
            $query->inactive();
        }

        // Apply search filter
        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('email', 'like', "%{$search}%")
                  ->orWhere('first_name', 'like', "%{$search}%")
                  ->orWhere('last_name', 'like', "%{$search}%");
            });
        }

        // Order by subscription date
        $query->orderBy('subscribed_at', 'desc');

        // Pagination
        $perPage = $request->get('per_page', 20);
        $subscriptions = $query->paginate($perPage);

        $transformedSubscriptions = $subscriptions->getCollection()->map(function ($subscription) {
            return [
                'id' => $subscription->id,
                'email' => $subscription->email,
                'first_name' => $subscription->first_name,
                'last_name' => $subscription->last_name,
                'full_name' => $subscription->full_name,
                'is_active' => $subscription->is_active,
                'preferences' => $subscription->preferences,
                'subscribed_at' => $subscription->subscribed_at,
                'unsubscribed_at' => $subscription->unsubscribed_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'subscriptions' => $transformedSubscriptions,
                'pagination' => [
                    'current_page' => $subscriptions->currentPage(),
                    'last_page' => $subscriptions->lastPage(),
                    'per_page' => $subscriptions->perPage(),
                    'total' => $subscriptions->total(),
                    'from' => $subscriptions->firstItem(),
                    'to' => $subscriptions->lastItem(),
                ]
            ]
        ]);
    }
}
