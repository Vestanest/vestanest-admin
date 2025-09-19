<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Review;
use App\Models\Property;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;

class ReviewController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $user = $request->user();
        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Authentication required'
            ], 401);
        }

        $validator = Validator::make($request->all(), [
            'property_id' => 'required|integer|exists:properties,id',
            'rating' => 'required|integer|min:1|max:5',
            'title' => 'sometimes|string|max:255',
            'comment' => 'required|string|max:3000',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        // Prevent duplicate review by same user for same property (optional rule)
        $existing = Review::where('property_id', $request->property_id)
            ->where('user_id', $user->id)
            ->first();
        if ($existing) {
            return response()->json([
                'success' => false,
                'message' => 'You have already reviewed this property'
            ], 400);
        }

        $review = Review::create([
            'property_id' => $request->property_id,
            'user_id' => $user->id,
            'rating' => $request->rating,
            'title' => $request->title,
            'comment' => $request->comment,
            'is_verified' => true,
            'is_approved' => true,
        ]);

        $review->load(['property', 'user']);

        return response()->json([
            'success' => true,
            'message' => 'Review submitted successfully',
            'data' => [
                'review' => [
                    'id' => $review->id,
                    'property' => [
                        'id' => $review->property->id,
                        'title' => $review->property->title,
                    ],
                    'user' => [
                        'id' => $review->user->id,
                        'name' => $review->user->full_name,
                    ],
                    'rating' => $review->rating,
                    'title' => $review->title,
                    'comment' => $review->comment,
                    'created_at' => $review->created_at,
                ],
            ],
        ], 201);
    }

    public function propertyReviews(Request $request, $propertyId): JsonResponse
    {
        $validator = Validator::make(['property_id' => $propertyId] + $request->all(), [
            'property_id' => 'required|integer|exists:properties,id',
            'per_page' => 'sometimes|integer|min:1|max:100',
            'min_rating' => 'sometimes|integer|min:1|max:5',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $query = Review::with('user')
            ->where('property_id', $propertyId)
            ->approved();

        if ($request->filled('min_rating')) {
            $query->minRating($request->min_rating);
        }

        $query->orderBy('created_at', 'desc');
        $perPage = $request->get('per_page', 10);
        $reviews = $query->paginate($perPage);

        $items = $reviews->getCollection()->map(function ($r) {
            return [
                'id' => $r->id,
                'user' => [
                    'id' => $r->user->id,
                    'name' => $r->user->full_name,
                ],
                'rating' => $r->rating,
                'title' => $r->title,
                'comment' => $r->comment,
                'created_at' => $r->created_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'reviews' => $items,
                'pagination' => [
                    'current_page' => $reviews->currentPage(),
                    'last_page' => $reviews->lastPage(),
                    'per_page' => $reviews->PerPage(),
                    'total' => $reviews->total(),
                    'from' => $reviews->firstItem(),
                    'to' => $reviews->lastItem(),
                ],
            ],
        ]);
    }
}
