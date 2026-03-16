<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/cache', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('config:clear');

    //  Artisan::call('route:cache');
    //  Artisan::call('view:cache');
    //  Artisan::call('filament:optimize');
});
