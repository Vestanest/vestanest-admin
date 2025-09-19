<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Property;
use App\Models\PropertyView;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;

class PropertyViewController extends Controller
{
    /**
     * Record a property view
     */
    public function store(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'property_id' => 'required|integer|exists:properties,id',
            'user_agent' => 'sometimes|string|max:500',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Check if property exists
        $property = Property::find($request->property_id);
        if (!$property) {
            return response()->json([
                'success' => false,
                'message' => 'Property not found'
            ], 404);
        }

        // Get user ID if authenticated, otherwise null
        $userId = $request->user() ? $request->user()->id : null;

        // Get IP address
        $ipAddress = $request->ip();

        // Get user agent
        $userAgent = $request->user_agent ?? $request->header('User-Agent');

        // Check if this is a duplicate view (same user/IP within 1 hour)
        $existingView = PropertyView::where('property_id', $request->property_id)
            ->where('viewed_at', '>=', Carbon::now()->subHour())
            ->when($userId, function ($query) use ($userId) {
                return $query->where('user_id', $userId);
            }, function ($query) use ($ipAddress) {
                return $query->where('ip_address', $ipAddress);
            })
            ->first();

        if ($existingView) {
            return response()->json([
                'success' => true,
                'message' => 'View already recorded recently',
                'data' => [
                    'view' => [
                        'id' => $existingView->id,
                        'property_id' => $existingView->property_id,
                        'viewed_at' => $existingView->viewed_at,
                        'is_duplicate' => true,
                    ]
                ]
            ]);
        }

        // Create new property view
        $propertyView = PropertyView::create([
            'property_id' => $request->property_id,
            'user_id' => $userId,
            'ip_address' => $ipAddress,
            'user_agent' => $userAgent,
            'viewed_at' => Carbon::now(),
        ]);

        // Update property views count
        $property->increment('views_count');

        return response()->json([
            'success' => true,
            'message' => 'Property view recorded successfully',
            'data' => [
                'view' => [
                    'id' => $propertyView->id,
                    'property_id' => $propertyView->property_id,
                    'user_id' => $propertyView->user_id,
                    'viewed_at' => $propertyView->viewed_at,
                    'is_duplicate' => false,
                ],
                'property' => [
                    'id' => $property->id,
                    'title' => $property->title,
                    'views_count' => $property->views_count,
                ]
            ]
        ], 201);
    }

    /**
     * Get property views for a specific property
     */
    public function propertyViews(Request $request, $propertyId): JsonResponse
    {
        $validator = Validator::make(['property_id' => $propertyId], [
            'property_id' => 'required|integer|exists:properties,id',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $query = PropertyView::with(['user'])
            ->where('property_id', $propertyId);

        // Apply date range filter if provided
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->dateRange($request->start_date, $request->end_date);
        }

        // Apply pagination
        $perPage = $request->get('per_page', 20);
        $views = $query->orderBy('viewed_at', 'desc')->paginate($perPage);

        $transformedViews = $views->getCollection()->map(function ($view) {
            return [
                'id' => $view->id,
                'property_id' => $view->property_id,
                'user' => $view->user ? [
                    'id' => $view->user->id,
                    'name' => $view->user->full_name,
                ] : null,
                'ip_address' => $view->ip_address,
                'viewed_at' => $view->viewed_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'views' => $transformedViews,
                'pagination' => [
                    'current_page' => $views->currentPage(),
                    'last_page' => $views->lastPage(),
                    'per_page' => $views->perPage(),
                    'total' => $views->total(),
                    'from' => $views->firstItem(),
                    'to' => $views->lastItem(),
                ]
            ]
        ]);
    }

    /**
     * Get user's property views (if authenticated)
     */
    public function userViews(Request $request): JsonResponse
    {
        $user = $request->user();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Authentication required'
            ], 401);
        }

        $query = PropertyView::with(['property'])
            ->where('user_id', $user->id);

        // Apply date range filter if provided
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->dateRange($request->start_date, $request->end_date);
        }

        // Apply pagination
        $perPage = $request->get('per_page', 20);
        $views = $query->orderBy('viewed_at', 'desc')->paginate($perPage);

        $transformedViews = $views->getCollection()->map(function ($view) {
            return [
                'id' => $view->id,
                'property' => [
                    'id' => $view->property->id,
                    'title' => $view->property->title,
                    'location' => $view->property->location,
                    'city' => $view->property->city,
                    'price' => $view->property->price,
                    'formatted_price' => $view->property->formatted_price,
                    'property_type' => $view->property->property_type,
                    'price_type' => $view->property->price_type,
                    'image' => $view->property->image,
                    'status' => $view->property->status,
                ],
                'viewed_at' => $view->viewed_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'views' => $transformedViews,
                'pagination' => [
                    'current_page' => $views->currentPage(),
                    'last_page' => $views->lastPage(),
                    'per_page' => $views->perPage(),
                    'total' => $views->total(),
                    'from' => $views->firstItem(),
                    'to' => $views->lastItem(),
                ]
            ]
        ]);
    }

    /**
     * Get property view statistics
     */
    public function statistics(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'property_id' => 'sometimes|integer|exists:properties,id',
            'start_date' => 'sometimes|date',
            'end_date' => 'sometimes|date|after_or_equal:start_date',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $query = PropertyView::query();

        // Filter by property if provided
        if ($request->filled('property_id')) {
            $query->where('property_id', $request->property_id);
        }

        // Filter by date range if provided
        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->dateRange($request->start_date, $request->end_date);
        }

        $stats = [
            'total_views' => $query->count(),
            'unique_users' => $query->distinct('user_id')->whereNotNull('user_id')->count(),
            'unique_ips' => $query->distinct('ip_address')->count(),
            'views_today' => PropertyView::whereDate('viewed_at', Carbon::today())->count(),
            'views_this_week' => PropertyView::whereBetween('viewed_at', [
                Carbon::now()->startOfWeek(),
                Carbon::now()->endOfWeek()
            ])->count(),
            'views_this_month' => PropertyView::whereMonth('viewed_at', Carbon::now()->month)
                ->whereYear('viewed_at', Carbon::now()->year)
                ->count(),
            'most_viewed_properties' => PropertyView::selectRaw('property_id, COUNT(*) as views_count')
                ->groupBy('property_id')
                ->orderBy('views_count', 'desc')
                ->limit(10)
                ->with('property:id,title,location')
                ->get()
                ->map(function ($item) {
                    return [
                        'property_id' => $item->property_id,
                        'property_title' => $item->property->title,
                        'property_location' => $item->property->location,
                        'views_count' => $item->views_count,
                    ];
                }),
        ];

        return response()->json([
            'success' => true,
            'data' => [
                'statistics' => $stats
            ]
        ]);
    }
}
