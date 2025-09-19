<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Property;
use App\Models\PropertyAmenity;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;

class PropertyController extends Controller
{
    /**
     * Get all properties with filtering and pagination
     */
    public function index(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'page' => 'sometimes|integer|min:1',
            'per_page' => 'sometimes|integer|min:1|max:100',
            'search' => 'sometimes|string|max:255',
            'property_type' => 'sometimes|string|in:apartment,house,condo,villa,townhouse,studio,commercial,land',
            'price_type' => 'sometimes|string|in:sale,rent',
            'min_price' => 'sometimes|numeric|min:0',
            'max_price' => 'sometimes|numeric|min:0|gte:min_price',
            'bedrooms' => 'sometimes|integer|min:0',
            'bathrooms' => 'sometimes|integer|min:0',
            'location' => 'sometimes|string|max:255',
            'city' => 'sometimes|string|max:255',
            'region' => 'sometimes|string|max:255',
            'is_featured' => 'sometimes|boolean',
            'status' => 'sometimes|string|in:available,sold,rented,off_market',
            'sort_by' => 'sometimes|string|in:price_asc,price_desc,created_at_desc,created_at_asc,views_count_desc,rating_desc',
            'amenities' => 'sometimes|array',
            'amenities.*' => 'integer|exists:property_amenities,id',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $query = Property::with(['owner', 'agent', 'amenities']);

        // Apply filters
        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('title', 'like', "%{$search}%")
                  ->orWhere('description', 'like', "%{$search}%")
                  ->orWhere('location', 'like', "%{$search}%")
                  ->orWhere('city', 'like', "%{$search}%");
            });
        }

        if ($request->filled('property_type')) {
            $query->where('property_type', $request->property_type);
        }

        if ($request->filled('price_type')) {
            $query->where('price_type', $request->price_type);
        }

        if ($request->filled('min_price') || $request->filled('max_price')) {
            $minPrice = $request->min_price ?? 0;
            $maxPrice = $request->max_price ?? PHP_FLOAT_MAX;
            $query->whereBetween('price', [$minPrice, $maxPrice]);
        }

        if ($request->filled('bedrooms')) {
            $query->where('bedrooms', '>=', $request->bedrooms);
        }

        if ($request->filled('bathrooms')) {
            $query->where('bathrooms', '>=', $request->bathrooms);
        }

        if ($request->filled('location')) {
            $query->where('location', 'like', "%{$request->location}%");
        }

        if ($request->filled('city')) {
            $query->where('city', $request->city);
        }

        if ($request->filled('region')) {
            $query->where('region', $request->region);
        }

        if ($request->filled('is_featured')) {
            $query->where('is_featured', $request->is_featured);
        }

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        // Filter by amenities
        if ($request->filled('amenities')) {
            $query->whereHas('amenities', function ($q) use ($request) {
                $q->whereIn('property_amenities.id', $request->amenities);
            });
        }

        // Apply sorting
        $sortBy = $request->get('sort_by', 'created_at_desc');
        switch ($sortBy) {
            case 'price_asc':
                $query->orderBy('price', 'asc');
                break;
            case 'price_desc':
                $query->orderBy('price', 'desc');
                break;
            case 'created_at_asc':
                $query->orderBy('created_at', 'asc');
                break;
            case 'views_count_desc':
                $query->orderBy('views_count', 'desc');
                break;
            case 'rating_desc':
                $query->orderBy('rating', 'desc');
                break;
            default:
                $query->orderBy('created_at', 'desc');
        }

        // Pagination
        $perPage = $request->get('per_page', 15);
        $properties = $query->paginate($perPage);

        // Transform the data
        $transformedProperties = $properties->getCollection()->map(function ($property) {
            return [
                'id' => $property->id,
                'title' => $property->title,
                'description' => $property->description,
                'image' => $property->image,
                'images' => $property->images,
                'location' => $property->location,
                'city' => $property->city,
                'region' => $property->region,
                'latitude' => $property->latitude,
                'longitude' => $property->longitude,
                'price' => $property->price,
                'formatted_price' => $property->formatted_price,
                'price_type' => $property->price_type,
                'property_type' => $property->property_type,
                'bedrooms' => $property->bedrooms,
                'bathrooms' => $property->bathrooms,
                'area_sqm' => $property->area_sqm,
                'area_sqft' => $property->area_sqft,
                'year_built' => $property->year_built,
                'floors' => $property->floors,
                'parking_spaces' => $property->parking_spaces,
                'is_featured' => $property->is_featured,
                'status' => $property->status,
                'views_count' => $property->views_count,
                'favorites_count' => $property->favorites_count,
                'rating' => $property->rating,
                'owner' => $property->owner ? [
                    'id' => $property->owner->id,
                    'name' => $property->owner->full_name,
                    'email' => $property->owner->email,
                ] : null,
                'agent' => $property->agent ? [
                    'id' => $property->agent->id,
                    'name' => $property->agent->full_name,
                    'email' => $property->agent->email,
                ] : null,
                'amenities' => $property->amenities->map(function ($amenity) {
                    return [
                        'id' => $amenity->id,
                        'name' => $amenity->name,
                        'description' => $amenity->description,
                    ];
                }),
                'created_at' => $property->created_at,
                'updated_at' => $property->updated_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'properties' => $transformedProperties,
                'pagination' => [
                    'current_page' => $properties->currentPage(),
                    'last_page' => $properties->lastPage(),
                    'per_page' => $properties->perPage(),
                    'total' => $properties->total(),
                    'from' => $properties->firstItem(),
                    'to' => $properties->lastItem(),
                ],
                'filters' => [
                    'applied_filters' => $request->only([
                        'search', 'property_type', 'price_type', 'min_price', 'max_price',
                        'bedrooms', 'bathrooms', 'location', 'city', 'region',
                        'is_featured', 'status', 'sort_by', 'amenities'
                    ])
                ]
            ]
        ]);
    }

    /**
     * Get a single property by ID
     */
    public function show($id): JsonResponse
    {
        $property = Property::with(['owner', 'agent', 'amenities', 'reviews'])
            ->find($id);

        if (!$property) {
            return response()->json([
                'success' => false,
                'message' => 'Property not found'
            ], 404);
        }

        $transformedProperty = [
            'id' => $property->id,
            'title' => $property->title,
            'description' => $property->description,
            'detailed_description' => $property->detailed_description,
            'image' => $property->image,
            'images' => $property->images,
            'location' => $property->location,
            'city' => $property->city,
            'region' => $property->region,
            'latitude' => $property->latitude,
            'longitude' => $property->longitude,
            'price' => $property->price,
            'formatted_price' => $property->formatted_price,
            'price_type' => $property->price_type,
            'property_type' => $property->property_type,
            'bedrooms' => $property->bedrooms,
            'bathrooms' => $property->bathrooms,
            'area_sqm' => $property->area_sqm,
            'area_sqft' => $property->area_sqft,
            'year_built' => $property->year_built,
            'floors' => $property->floors,
            'parking_spaces' => $property->parking_spaces,
            'is_featured' => $property->is_featured,
            'status' => $property->status,
            'views_count' => $property->views_count,
            'favorites_count' => $property->favorites_count,
            'rating' => $property->rating,
            'owner' => $property->owner ? [
                'id' => $property->owner->id,
                'name' => $property->owner->full_name,
                'email' => $property->owner->email,
                'phone' => $property->owner->phone,
            ] : null,
            'agent' => $property->agent ? [
                'id' => $property->agent->id,
                'name' => $property->agent->full_name,
                'email' => $property->agent->email,
                'phone' => $property->agent->phone,
            ] : null,
            'amenities' => $property->amenities->map(function ($amenity) {
                return [
                    'id' => $amenity->id,
                    'name' => $amenity->name,
                    'description' => $amenity->description,
                ];
            }),
            'reviews' => $property->reviews->map(function ($review) {
                return [
                    'id' => $review->id,
                    'rating' => $review->rating,
                    'comment' => $review->comment,
                    'user' => [
                        'id' => $review->user->id,
                        'name' => $review->user->full_name,
                    ],
                    'created_at' => $review->created_at,
                ];
            }),
            'created_at' => $property->created_at,
            'updated_at' => $property->updated_at,
        ];

        return response()->json([
            'success' => true,
            'data' => [
                'property' => $transformedProperty
            ]
        ]);
    }

    /**
     * Get featured properties
     */
    public function featured(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'limit' => 'sometimes|integer|min:1|max:20',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $limit = $request->get('limit', 6);
        $properties = Property::with(['owner', 'agent', 'amenities'])
            ->featured()
            ->available()
            ->orderBy('created_at', 'desc')
            ->limit($limit)
            ->get();

        $transformedProperties = $properties->map(function ($property) {
            return [
                'id' => $property->id,
                'title' => $property->title,
                'description' => $property->description,
                'image' => $property->image,
                'images' => $property->images,
                'location' => $property->location,
                'city' => $property->city,
                'region' => $property->region,
                'price' => $property->price,
                'formatted_price' => $property->formatted_price,
                'price_type' => $property->price_type,
                'property_type' => $property->property_type,
                'bedrooms' => $property->bedrooms,
                'bathrooms' => $property->bathrooms,
                'area_sqm' => $property->area_sqm,
                'is_featured' => $property->is_featured,
                'status' => $property->status,
                'views_count' => $property->views_count,
                'rating' => $property->rating,
                'agent' => $property->agent ? [
                    'id' => $property->agent->id,
                    'name' => $property->agent->full_name,
                ] : null,
                'amenities' => $property->amenities->take(3)->map(function ($amenity) {
                    return [
                        'id' => $amenity->id,
                        'name' => $amenity->name,
                    ];
                }),
                'created_at' => $property->created_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'properties' => $transformedProperties
            ]
        ]);
    }
}
