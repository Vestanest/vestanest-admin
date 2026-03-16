<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\DatabaseRefreshController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::redirect('/', '/admin');

Route::get('/key-generate', function () {

    Artisan::call('db:seed');
});

Route::get('/migrate', function () {
    Artisan::call('migrate', ['--force' => true]);
});

// Add fresh migration with seed
Route::get('/fresh', function () {
    Artisan::call('migrate:fresh', ['--force' => true]);
    Artisan::call('db:seed', ['--force' => true]);
});

Route::get('/cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('config:clear');

//  Artisan::call('route:cache');
//  Artisan::call('view:cache');
//  Artisan::call('filament:optimize');
});

// add a route to the database refesh feature [system/reborn?token=vesta-reborn-magic]
Route::get('/system/reborn', [DatabaseRefreshController::class , 'reborn']);