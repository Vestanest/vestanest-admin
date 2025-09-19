<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\PropertyController;
use App\Http\Controllers\Api\V1\PropertyAmenityController;
use App\Http\Controllers\Api\V1\PropertyViewController;
use App\Http\Controllers\Api\V1\NewsletterController;
use App\Http\Controllers\Api\V1\PropertyComparisonController;
use App\Http\Controllers\Api\V1\ContactMessageController;
use App\Http\Controllers\Api\V1\InquiryController;
use App\Http\Controllers\Api\V1\ReviewController;
use App\Http\Controllers\Api\V1\ScheduleViewingController;
use App\Http\Controllers\Api\V1\ContactAgentController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// API Version 1 Routes
Route::prefix('v1')->group(function () {

    // Public authentication routes
    Route::prefix('auth')->group(function () {
        Route::post('register', [AuthController::class, 'register']);
        Route::post('login', [AuthController::class, 'login']);
        Route::post('verify-email', [AuthController::class, 'verifyEmail']);
        Route::post('resend-email-otp', [AuthController::class, 'resendEmailOtp']);
        Route::post('forgot-password', [AuthController::class, 'forgotPassword']);
        Route::post('reset-password', [AuthController::class, 'resetPassword']);
    });

    // Protected authentication routes
    Route::prefix('auth')->middleware('auth:sanctum')->group(function () {
        Route::post('logout', [AuthController::class, 'logout']);
        Route::post('logout-all', [AuthController::class, 'logoutAll']);
        Route::post('refresh-token', [AuthController::class, 'refreshToken']);
        Route::get('profile', [AuthController::class, 'profile']);
        Route::put('profile', [AuthController::class, 'updateProfile']);
        Route::post('change-password', [AuthController::class, 'changePassword']);
    });

    // Property routes (public)
    Route::prefix('properties')->group(function () {
        Route::get('/', [PropertyController::class, 'index']);
        Route::get('/featured', [PropertyController::class, 'featured']);
        Route::get('/statistics', [PropertyController::class, 'statistics']);
        Route::get('/{id}', [PropertyController::class, 'show']);
    });

    // Property amenities routes (public)
    Route::prefix('amenities')->group(function () {
        Route::get('/', [PropertyAmenityController::class, 'index']);
        Route::get('/popular', [PropertyAmenityController::class, 'popular']);
        Route::get('/categories', [PropertyAmenityController::class, 'categories']);
        Route::get('/{id}', [PropertyAmenityController::class, 'show']);
    });

    // Property views routes
    Route::prefix('property-views')->group(function () {
        Route::post('/', [PropertyViewController::class, 'store']);
        Route::get('/statistics', [PropertyViewController::class, 'statistics']);
        Route::get('/property/{propertyId}', [PropertyViewController::class, 'propertyViews']);
    });

    // Newsletter routes (public)
    Route::prefix('newsletter')->group(function () {
        Route::post('/subscribe', [NewsletterController::class, 'subscribe']);
        Route::post('/unsubscribe', [NewsletterController::class, 'unsubscribe']);
        Route::post('/update-preferences', [NewsletterController::class, 'updatePreferences']);
        Route::get('/status', [NewsletterController::class, 'status']);
        Route::get('/statistics', [NewsletterController::class, 'statistics']);
    });

    // Communication routes
    Route::prefix('contact-messages')->group(function () {
        Route::post('/', [ContactMessageController::class, 'store']);
        // Admin listing can be protected later; exposing GET for now
        Route::get('/', [ContactMessageController::class, 'index']);
    });

    Route::prefix('inquiries')->group(function () {
        Route::post('/', [InquiryController::class, 'store']);
        Route::get('/', [InquiryController::class, 'index']);
    });

    Route::prefix('reviews')->group(function () {
        Route::post('/', [ReviewController::class, 'store'])->middleware('auth:sanctum');
        Route::get('/property/{propertyId}', [ReviewController::class, 'propertyReviews']);
    });

    Route::prefix('schedule-viewings')->group(function () {
        Route::post('/', [ScheduleViewingController::class, 'store']);
    });

    Route::prefix('contact-agents')->group(function () {
        Route::post('/', [ContactAgentController::class, 'store']);
    });

    // Protected user routes
    Route::middleware('auth:sanctum')->group(function () {
        // User profile routes
        Route::get('/user', function (Request $request) {
            return $request->user();
        });

        // Protected property views routes
        Route::prefix('property-views')->group(function () {
            Route::get('/my-views', [PropertyViewController::class, 'userViews']);
        });

        // Property comparison routes (protected)
        Route::prefix('property-comparisons')->group(function () {
            Route::get('/', [PropertyComparisonController::class, 'index']);
            Route::post('/', [PropertyComparisonController::class, 'store']);
            Route::get('/{id}', [PropertyComparisonController::class, 'show']);
            Route::put('/{id}', [PropertyComparisonController::class, 'update']);
            Route::delete('/{id}', [PropertyComparisonController::class, 'destroy']);
            Route::post('/{id}/add-property', [PropertyComparisonController::class, 'addProperty']);
            Route::post('/{id}/remove-property', [PropertyComparisonController::class, 'removeProperty']);
        });

        // Admin newsletter routes (protected)
        Route::prefix('admin/newsletter')->group(function () {
            Route::get('/subscriptions', [NewsletterController::class, 'index']);
        });
    });
});
