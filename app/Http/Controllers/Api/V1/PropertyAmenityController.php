<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\PropertyAmenity;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;

class PropertyAmenityController extends Controller
{
    /**
     * Get all property amenities
     */
    public function index(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'search' => 'sometimes|string|max:255',
            'per_page' => 'sometimes|integer|min:1|max:100',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $query = PropertyAmenity::query();

        // Apply search filter
        if ($request->filled('search')) {
            $query->search($request->search);
        }

        // Order by name
        $query->orderBy('name', 'asc');

        // Pagination
        $perPage = $request->get('per_page', 50);
        $amenities = $query->paginate($perPage);

        // Transform the data
        $transformedAmenities = $amenities->getCollection()->map(function ($amenity) {
            return [
                'id' => $amenity->id,
                'name' => $amenity->name,
                'description' => $amenity->description,
                'properties_count' => $amenity->properties()->count(),
                'created_at' => $amenity->created_at,
                'updated_at' => $amenity->updated_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'amenities' => $transformedAmenities,
                'pagination' => [
                    'current_page' => $amenities->currentPage(),
                    'last_page' => $amenities->lastPage(),
                    'per_page' => $amenities->perPage(),
                    'total' => $amenities->total(),
                    'from' => $amenities->firstItem(),
                    'to' => $amenities->lastItem(),
                ]
            ]
        ]);
    }

    /**
     * Get a single property amenity by ID
     */
    public function show($id): JsonResponse
    {
        $amenity = PropertyAmenity::with('properties')->find($id);

        if (!$amenity) {
            return response()->json([
                'success' => false,
                'message' => 'Property amenity not found'
            ], 404);
        }

        $transformedAmenity = [
            'id' => $amenity->id,
            'name' => $amenity->name,
            'description' => $amenity->description,
            'properties_count' => $amenity->properties->count(),
            'properties' => $amenity->properties->map(function ($property) {
                return [
                    'id' => $property->id,
                    'title' => $property->title,
                    'location' => $property->location,
                    'city' => $property->city,
                    'price' => $property->price,
                    'formatted_price' => $property->formatted_price,
                    'property_type' => $property->property_type,
                    'price_type' => $property->price_type,
                    'status' => $property->status,
                ];
            }),
            'created_at' => $amenity->created_at,
            'updated_at' => $amenity->updated_at,
        ];

        return response()->json([
            'success' => true,
            'data' => [
                'amenity' => $transformedAmenity
            ]
        ]);
    }

    /**
     * Get popular amenities (most used)
     */
    public function popular(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'limit' => 'sometimes|integer|min:1|max:50',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $limit = $request->get('limit', 10);

        $amenities = PropertyAmenity::withCount('properties')
            ->orderBy('properties_count', 'desc')
            ->limit($limit)
            ->get();

        $transformedAmenities = $amenities->map(function ($amenity) {
            return [
                'id' => $amenity->id,
                'name' => $amenity->name,
                'description' => $amenity->description,
                'properties_count' => $amenity->properties_count,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'amenities' => $transformedAmenities
            ]
        ]);
    }

    /**
     * Get amenities grouped by category (if you want to implement categories later)
     */
    public function categories(): JsonResponse
    {
        // For now, return all amenities as a single category
        // This can be extended later to support amenity categories
        $amenities = PropertyAmenity::orderBy('name', 'asc')->get();

        $transformedAmenities = $amenities->map(function ($amenity) {
            return [
                'id' => $amenity->id,
                'name' => $amenity->name,
                'description' => $amenity->description,
                'properties_count' => $amenity->properties()->count(),
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'categories' => [
                    [
                        'name' => 'All Amenities',
                        'amenities' => $transformedAmenities
                    ]
                ]
            ]
        ]);
    }
}
