<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Property;
use App\Models\PropertyComparison;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;

class PropertyComparisonController extends Controller
{
    /**
     * Get user's property comparisons
     */
    public function index(Request $request): JsonResponse
    {
        $user = $request->user();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Authentication required'
            ], 401);
        }

        $comparisons = PropertyComparison::with(['properties'])
            ->where('user_id', $user->id)
            ->orderBy('created_at', 'desc')
            ->get();

        $transformedComparisons = $comparisons->map(function ($comparison) {
            return [
                'id' => $comparison->id,
                'name' => $comparison->name,
                'property_count' => $comparison->property_count,
                'properties' => $comparison->properties->map(function ($property) {
                    return [
                        'id' => $property->id,
                        'title' => $property->title,
                        'image' => $property->image,
                        'location' => $property->location,
                        'city' => $property->city,
                        'price' => $property->price,
                        'formatted_price' => $property->formatted_price,
                        'property_type' => $property->property_type,
                        'price_type' => $property->price_type,
                        'bedrooms' => $property->bedrooms,
                        'bathrooms' => $property->bathrooms,
                        'area_sqm' => $property->area_sqm,
                        'area_sqft' => $property->area_sqft,
                        'status' => $property->status,
                        'rating' => $property->rating,
                    ];
                }),
                'created_at' => $comparison->created_at,
                'updated_at' => $comparison->updated_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'comparisons' => $transformedComparisons
            ]
        ]);
    }

    /**
     * Get a specific property comparison
     */
    public function show(Request $request, $id): JsonResponse
    {
        $user = $request->user();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Authentication required'
            ], 401);
        }

        $comparison = PropertyComparison::with(['properties.amenities', 'properties.agent'])
            ->where('user_id', $user->id)
            ->find($id);

        if (!$comparison) {
            return response()->json([
                'success' => false,
                'message' => 'Property comparison not found'
            ], 404);
        }

        $transformedComparison = [
            'id' => $comparison->id,
            'name' => $comparison->name,
            'property_count' => $comparison->property_count,
            'properties' => $comparison->properties->map(function ($property) {
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
                    'property_type' => $property->property_type,
                    'price_type' => $property->price_type,
                    'bedrooms' => $property->bedrooms,
                    'bathrooms' => $property->bathrooms,
                    'area_sqm' => $property->area_sqm,
                    'area_sqft' => $property->area_sqft,
                    'year_built' => $property->year_built,
                    'floors' => $property->floors,
                    'parking_spaces' => $property->parking_spaces,
                    'status' => $property->status,
                    'views_count' => $property->views_count,
                    'rating' => $property->rating,
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
                ];
            }),
            'created_at' => $comparison->created_at,
            'updated_at' => $comparison->updated_at,
        ];

        return response()->json([
            'success' => true,
            'data' => [
                'comparison' => $transformedComparison
            ]
        ]);
    }

    /**
     * Update a property comparison
     */
    public function update(Request $request, $id): JsonResponse
    {
        $user = $request->user();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Authentication required'
            ], 401);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|required|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $comparison = PropertyComparison::where('user_id', $user->id)->find($id);

        if (!$comparison) {
            return response()->json([
                'success' => false,
                'message' => 'Property comparison not found'
            ], 404);
        }

        // Check if name is being changed and if it conflicts
        if ($request->filled('name') && $request->name !== $comparison->name) {
            $existingComparison = PropertyComparison::where('user_id', $user->id)
                ->where('name', $request->name)
                ->where('id', '!=', $id)
                ->first();

            if ($existingComparison) {
                return response()->json([
                    'success' => false,
                    'message' => 'A comparison with this name already exists'
                ], 400);
            }
        }

        $comparison->update($request->only(['name']));

        return response()->json([
            'success' => true,
            'message' => 'Property comparison updated successfully',
            'data' => [
                'comparison' => [
                    'id' => $comparison->id,
                    'name' => $comparison->name,
                    'property_count' => $comparison->property_count,
                    'updated_at' => $comparison->updated_at,
                ]
            ]
        ]);
    }

    /**
     * Create a new property comparison
     */
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
            'name' => 'required|string|max:255',
            'property_ids' => 'sometimes|array|max:5',
            'property_ids.*' => 'integer|exists:properties,id',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Check if user already has a comparison with this name
        $existingComparison = PropertyComparison::where('user_id', $user->id)
            ->where('name', $request->name)
            ->first();

        if ($existingComparison) {
            return response()->json([
                'success' => false,
                'message' => 'A comparison with this name already exists'
            ], 400);
        }

        // Create the comparison
        $comparison = PropertyComparison::create([
            'user_id' => $user->id,
            'name' => $request->name,
        ]);

        // Add properties if provided
        if ($request->filled('property_ids')) {
            $properties = Property::whereIn('id', $request->property_ids)->get();

            foreach ($properties as $index => $property) {
                $comparison->addProperty($property, $index + 1);
            }
        }

        // Load the comparison with properties
        $comparison->load('properties');

        $transformedComparison = [
            'id' => $comparison->id,
            'name' => $comparison->name,
            'property_count' => $comparison->property_count,
            'properties' => $comparison->properties->map(function ($property) {
                return [
                    'id' => $property->id,
                    'title' => $property->title,
                    'image' => $property->image,
                    'location' => $property->location,
                    'city' => $property->city,
                    'price' => $property->price,
                    'formatted_price' => $property->formatted_price,
                    'property_type' => $property->property_type,
                    'price_type' => $property->price_type,
                    'bedrooms' => $property->bedrooms,
                    'bathrooms' => $property->bathrooms,
                    'area_sqm' => $property->area_sqm,
                    'area_sqft' => $property->area_sqft,
                    'status' => $property->status,
                    'rating' => $property->rating,
                ];
            }),
            'created_at' => $comparison->created_at,
            'updated_at' => $comparison->updated_at,
        ];

        return response()->json([
            'success' => true,
            'message' => 'Property comparison created successfully',
            'data' => [
                'comparison' => $transformedComparison
            ]
        ], 201);
    }

    /**
     * Add a property to comparison
     */
    public function addProperty(Request $request, $id): JsonResponse
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
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $comparison = PropertyComparison::where('user_id', $user->id)->find($id);

        if (!$comparison) {
            return response()->json([
                'success' => false,
                'message' => 'Property comparison not found'
            ], 404);
        }

        if ($comparison->isFull()) {
            return response()->json([
                'success' => false,
                'message' => 'Comparison is full. Maximum ' . PropertyComparison::getMaxProperties() . ' properties allowed.'
            ], 400);
        }

        $property = Property::find($request->property_id);

        if ($comparison->hasProperty($property)) {
            return response()->json([
                'success' => false,
                'message' => 'Property is already in this comparison'
            ], 400);
        }

        $comparison->addProperty($property);

        return response()->json([
            'success' => true,
            'message' => 'Property added to comparison successfully',
            'data' => [
                'comparison' => [
                    'id' => $comparison->id,
                    'name' => $comparison->name,
                    'property_count' => $comparison->property_count,
                ],
                'property' => [
                    'id' => $property->id,
                    'title' => $property->title,
                    'location' => $property->location,
                    'price' => $property->price,
                    'formatted_price' => $property->formatted_price,
                ]
            ]
        ]);
    }

    /**
     * Remove a property from comparison
     */
    public function removeProperty(Request $request, $id): JsonResponse
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
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        $comparison = PropertyComparison::where('user_id', $user->id)->find($id);

        if (!$comparison) {
            return response()->json([
                'success' => false,
                'message' => 'Property comparison not found'
            ], 404);
        }

        $property = Property::find($request->property_id);

        if (!$comparison->hasProperty($property)) {
            return response()->json([
                'success' => false,
                'message' => 'Property is not in this comparison'
            ], 400);
        }

        $comparison->removeProperty($property);

        return response()->json([
            'success' => true,
            'message' => 'Property removed from comparison successfully',
            'data' => [
                'comparison' => [
                    'id' => $comparison->id,
                    'name' => $comparison->name,
                    'property_count' => $comparison->property_count,
                ],
                'property' => [
                    'id' => $property->id,
                    'title' => $property->title,
                ]
            ]
        ]);
    }

    /**
     * Delete a property comparison
     */
    public function destroy(Request $request, $id): JsonResponse
    {
        $user = $request->user();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Authentication required'
            ], 401);
        }

        $comparison = PropertyComparison::where('user_id', $user->id)->find($id);

        if (!$comparison) {
            return response()->json([
                'success' => false,
                'message' => 'Property comparison not found'
            ], 404);
        }

        $comparison->delete();

        return response()->json([
            'success' => true,
            'message' => 'Property comparison deleted successfully'
        ]);
    }
}
