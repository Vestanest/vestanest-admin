<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\Inquiry;
use App\Models\Property;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\InquiryReceived;
use App\Mail\AdminNewInquiry;

class InquiryController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'property_id' => 'required|integer|exists:properties,id',
            'name' => 'required_without:user|string|max:255',
            'email' => 'required_without:user|email|max:255',
            'phone' => 'nullable|string|max:30',
            'message' => 'required|string|max:5000',
            'inquiry_type' => 'sometimes|string|in:viewing,information,offer,general',
            'preferred_date' => 'sometimes|date',
            'preferred_time' => 'sometimes|string|max:50',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $user = $request->user();

        $inquiry = Inquiry::create([
            'property_id' => $request->property_id,
            'user_id' => $user?->id,
            'name' => $user?->full_name ?? $request->name,
            'email' => $user?->email ?? $request->email,
            'phone' => $request->phone,
            'message' => $request->message,
            'inquiry_type' => $request->inquiry_type ?? 'general',
            'status' => 'new',
            'preferred_date' => $request->preferred_date,
            'preferred_time' => $request->preferred_time,
        ]);

        $inquiry->load('property');

        // Send email acknowledgment
        try {
            Mail::to($inquiry->email)->send(new InquiryReceived([
                'id' => $inquiry->id,
                'property' => [
                    'id' => $inquiry->property->id,
                    'title' => $inquiry->property->title,
                    'location' => $inquiry->property->location,
                ],
                'name' => $inquiry->name,
                'email' => $inquiry->email,
                'phone' => $inquiry->phone,
                'message' => $inquiry->message,
                'inquiry_type' => $inquiry->inquiry_type,
                'preferred' => $inquiry->formatted_preferred_date_time,
            ]));
            // Notify admin
            $adminEmail = config('mail.admin');
            if ($adminEmail) {
                Mail::to($adminEmail)->send(new AdminNewInquiry([
                    'id' => $inquiry->id,
                    'property' => [
                        'id' => $inquiry->property->id,
                        'title' => $inquiry->property->title,
                        'location' => $inquiry->property->location,
                    ],
                    'name' => $inquiry->name,
                    'email' => $inquiry->email,
                    'phone' => $inquiry->phone,
                    'message' => $inquiry->message,
                    'inquiry_type' => $inquiry->inquiry_type,
                    'preferred' => $inquiry->formatted_preferred_date_time,
                ]));
            }
            // Notify agent if available
            if ($inquiry->property && $inquiry->property->agent && $inquiry->property->agent->email) {
                Mail::to($inquiry->property->agent->email)->send(new AdminNewInquiry([
                    'id' => $inquiry->id,
                    'property' => [
                        'id' => $inquiry->property->id,
                        'title' => $inquiry->property->title,
                        'location' => $inquiry->property->location,
                    ],
                    'name' => $inquiry->name,
                    'email' => $inquiry->email,
                    'phone' => $inquiry->phone,
                    'message' => $inquiry->message,
                    'inquiry_type' => $inquiry->inquiry_type,
                    'preferred' => $inquiry->formatted_preferred_date_time,
                ]));
            }
        } catch (\Exception $e) {
            // Silently ignore email errors in API response
        }

        return response()->json([
            'success' => true,
            'message' => 'Inquiry submitted successfully',
            'data' => [
                'inquiry' => [
                    'id' => $inquiry->id,
                    'property' => [
                        'id' => $inquiry->property->id,
                        'title' => $inquiry->property->title,
                        'location' => $inquiry->property->location,
                    ],
                    'name' => $inquiry->name,
                    'email' => $inquiry->email,
                    'phone' => $inquiry->phone,
                    'message' => $inquiry->message,
                    'inquiry_type' => $inquiry->inquiry_type,
                    'status' => $inquiry->status,
                    'preferred' => $inquiry->formatted_preferred_date_time,
                    'created_at' => $inquiry->created_at,
                ],
            ],
        ], 201);
    }

    public function index(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'status' => 'sometimes|string|in:new,contacted,scheduled,completed,cancelled',
            'inquiry_type' => 'sometimes|string|in:viewing,information,offer,general',
            'property_id' => 'sometimes|integer|exists:properties,id',
            'per_page' => 'sometimes|integer|min:1|max:100',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $query = Inquiry::with('property');

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }
        if ($request->filled('inquiry_type')) {
            $query->where('inquiry_type', $request->inquiry_type);
        }
        if ($request->filled('property_id')) {
            $query->where('property_id', $request->property_id);
        }

        $query->orderBy('created_at', 'desc');
        $perPage = $request->get('per_page', 20);
        $inquiries = $query->paginate($perPage);

        $items = $inquiries->getCollection()->map(function ($i) {
            return [
                'id' => $i->id,
                'property' => [
                    'id' => $i->property->id,
                    'title' => $i->property->title,
                    'location' => $i->property->location,
                ],
                'name' => $i->name,
                'email' => $i->email,
                'phone' => $i->phone,
                'message' => $i->message,
                'inquiry_type' => $i->inquiry_type,
                'status' => $i->status,
                'preferred' => $i->formatted_preferred_date_time,
                'created_at' => $i->created_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'inquiries' => $items,
                'pagination' => [
                    'current_page' => $inquiries->currentPage(),
                    'last_page' => $inquiries->lastPage(),
                    'per_page' => $inquiries->perPage(),
                    'total' => $inquiries->total(),
                    'from' => $inquiries->firstItem(),
                    'to' => $inquiries->lastItem(),
                ],
            ],
        ]);
    }
}
