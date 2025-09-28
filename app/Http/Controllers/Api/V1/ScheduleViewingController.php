<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ScheduleViewing;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\ScheduleViewingConfirmed;
use App\Mail\AdminNewScheduleViewing;

class ScheduleViewingController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'property_id' => 'required|integer|exists:properties,id',
            'full_name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone_number' => 'required|string|max:30',
            'preferred_date' => 'sometimes|date',
            'preferred_time' => 'sometimes|string|max:50',
            'notes' => 'sometimes|string|max:2000',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $schedule = ScheduleViewing::create($validator->validated());

        // Send confirmation email
        try {
            Mail::to($schedule->email)->send(new ScheduleViewingConfirmed([
                'id' => $schedule->id,
                'property_id' => $schedule->property_id,
                'full_name' => $schedule->full_name,
                'email' => $schedule->email,
                'phone_number' => $schedule->phone_number,
                'preferred_date' => $schedule->preferred_date,
                'preferred_time' => $schedule->preferred_time,
                'notes' => $schedule->notes,
            ]));
            $adminEmail = config('mail.admin');
            if ($adminEmail) {
                Mail::to($adminEmail)->send(new AdminNewScheduleViewing([
                    'id' => $schedule->id,
                    'property_id' => $schedule->property_id,
                    'full_name' => $schedule->full_name,
                    'email' => $schedule->email,
                    'phone_number' => $schedule->phone_number,
                    'preferred_date' => $schedule->preferred_date,
                    'preferred_time' => $schedule->preferred_time,
                    'notes' => $schedule->notes,
                ]));
            }

            // CC property agent and owner when available
            try {
                $property = \App\Models\Property::find($schedule->property_id);
                $ccEmails = [];
                if ($property && $property->agent && $property->agent->email) {
                    $ccEmails[] = $property->agent->email;
                }
                if ($property && $property->owner && $property->owner->email) {
                    $ccEmails[] = $property->owner->email;
                }
                if (!empty($ccEmails)) {
                    Mail::to($adminEmail ?: $schedule->email)->cc($ccEmails)->send(new AdminNewScheduleViewing([
                        'id' => $schedule->id,
                        'property_id' => $schedule->property_id,
                        'full_name' => $schedule->full_name,
                        'email' => $schedule->email,
                        'phone_number' => $schedule->phone_number,
                        'preferred_date' => $schedule->preferred_date,
                        'preferred_time' => $schedule->preferred_time,
                        'notes' => $schedule->notes,
                    ]));
                }
            } catch (\Exception $e) {
                // ignore
            }
        } catch (\Exception $e) {
            // Ignore email failures
        }

        return response()->json([
            'success' => true,
            'message' => 'Viewing scheduled successfully',
            'data' => [
                'schedule' => [
                    'id' => $schedule->id,
                    'property_id' => $schedule->property_id,
                    'full_name' => $schedule->full_name,
                    'email' => $schedule->email,
                    'phone_number' => $schedule->phone_number,
                    'preferred_date' => $schedule->preferred_date,
                    'preferred_time' => $schedule->preferred_time,
                    'notes' => $schedule->notes,
                    'created_at' => $schedule->created_at,
                ],
            ],
        ], 201);
    }
}
