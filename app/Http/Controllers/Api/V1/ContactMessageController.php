<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\ContactMessage;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMessageReceived;
use App\Mail\AdminNewContactMessage;

class ContactMessageController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'nullable|string|max:30',
            'subject' => 'required|string|max:255',
            'message' => 'required|string|max:5000',
            'message_type' => 'sometimes|string|in:general,support,partnership,feedback',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $contact = ContactMessage::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'subject' => $request->subject,
            'message' => $request->message,
            'message_type' => $request->message_type ?? 'general',
            'status' => 'new',
            'ip_address' => $request->ip(),
            'user_agent' => $request->header('User-Agent'),
        ]);

        // Send acknowledgment email
        try {
            Mail::to($contact->email)->send(new ContactMessageReceived([
                'id' => $contact->id,
                'name' => $contact->name,
                'email' => $contact->email,
                'phone' => $contact->phone,
                'subject' => $contact->subject,
                'message' => $contact->message,
                'message_type' => $contact->message_type,
            ]));
            $adminEmail = config('mail.admin');
            if ($adminEmail) {
                Mail::to($adminEmail)->send(new AdminNewContactMessage([
                    'id' => $contact->id,
                    'name' => $contact->name,
                    'email' => $contact->email,
                    'phone' => $contact->phone,
                    'subject' => $contact->subject,
                    'message' => $contact->message,
                    'message_type' => $contact->message_type,
                ]));
            }
        } catch (\Exception $e) {
            // Ignore email failures
        }

        return response()->json([
            'success' => true,
            'message' => 'Message received successfully',
            'data' => [
                'message' => [
                    'id' => $contact->id,
                    'name' => $contact->name,
                    'email' => $contact->email,
                    'phone' => $contact->phone,
                    'subject' => $contact->subject,
                    'message' => $contact->message,
                    'message_type' => $contact->message_type,
                    'status' => $contact->status,
                    'created_at' => $contact->created_at,
                ],
            ],
        ], 201);
    }

    public function index(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'status' => 'sometimes|string|in:new,read,replied,closed',
            'message_type' => 'sometimes|string|in:general,support,partnership,feedback',
            'search' => 'sometimes|string|max:255',
            'per_page' => 'sometimes|integer|min:1|max:100',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $query = ContactMessage::query();

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }
        if ($request->filled('message_type')) {
            $query->where('message_type', $request->message_type);
        }
        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%")
                  ->orWhere('subject', 'like', "%{$search}%")
                  ->orWhere('message', 'like', "%{$search}%");
            });
        }

        $query->orderBy('created_at', 'desc');
        $perPage = $request->get('per_page', 20);
        $messages = $query->paginate($perPage);

        $items = $messages->getCollection()->map(function ($m) {
            return [
                'id' => $m->id,
                'name' => $m->name,
                'email' => $m->email,
                'phone' => $m->phone,
                'subject' => $m->subject,
                'message' => $m->message,
                'message_type' => $m->message_type,
                'status' => $m->status,
                'created_at' => $m->created_at,
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'messages' => $items,
                'pagination' => [
                    'current_page' => $messages->currentPage(),
                    'last_page' => $messages->lastPage(),
                    'per_page' => $messages->perPage(),
                    'total' => $messages->total(),
                    'from' => $messages->firstItem(),
                    'to' => $messages->lastItem(),
                ],
            ],
        ]);
    }
}
