<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ContactAgent;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactAgentSent;
use App\Mail\AdminNewContactAgent;

class ContactAgentController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'property_id' => 'required|integer|exists:properties,id',
            'full_name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone_number' => 'nullable|string|max:30',
            'message' => 'required|string|max:5000',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $contact = ContactAgent::create($validator->validated());

        // Send acknowledgment email
        try {
            Mail::to($contact->email)->send(new ContactAgentSent([
                'id' => $contact->id,
                'property_id' => $contact->property_id,
                'full_name' => $contact->full_name,
                'email' => $contact->email,
                'phone_number' => $contact->phone_number,
                'message' => $contact->message,
            ]));
            $adminEmail = config('mail.admin');
            if ($adminEmail) {
                Mail::to($adminEmail)->send(new AdminNewContactAgent([
                    'id' => $contact->id,
                    'property_id' => $contact->property_id,
                    'full_name' => $contact->full_name,
                    'email' => $contact->email,
                    'phone_number' => $contact->phone_number,
                    'message' => $contact->message,
                ]));
            }
        } catch (\Exception $e) {
            // Ignore email failures
        }

        return response()->json([
            'success' => true,
            'message' => 'Agent contact request sent successfully',
            'data' => [
                'contact' => [
                    'id' => $contact->id,
                    'property_id' => $contact->property_id,
                    'full_name' => $contact->full_name,
                    'email' => $contact->email,
                    'phone_number' => $contact->phone_number,
                    'message' => $contact->message,
                    'created_at' => $contact->created_at,
                ],
            ],
        ], 201);
    }
}
