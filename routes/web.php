<?php

use App\Http\Controllers\AttendeeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\EventController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Guest route
Route::group(['middleware' => ['guest']], function () {
    Route::get('/signup', [AuthController::class, "signup_view"])->name('signup');
    Route::get('/signin', [AuthController::class, "signin_view"])->name('signin');
    Route::get('/forgot-password', [AuthController::class, "forgot_password_view"])->name('forgot-password');
});

// Authentication route
Route::post("/signup", [AuthController::class, "signup"])->name('signup.post');
Route::post("/signin", [AuthController::class, "signin"])->name('signin.post');
Route::get('/email/verify/{id}/{hash}', [AuthController::class, 'verify_email'])->name('verification.verify');

Route::group(['middleware' => ['auth']], function () {
    Route::get("/Signout", [AuthController::class, "Signout"])->name('Signout');
    // Dashboard route
    Route::get('/dashboard', [AuthController::class, "dashboard"])->name('dashboard');

    // Events route
    Route::get('/events', [EventController::class, "index"])->name('dashboard');
    Route::post('/events', [EventController::class, "store_event"])->name('dashboard');
    Route::get('/events/{event_id}', [EventController::class, "get_event"])->name('dashboard');
    Route::put('/events/{event_id}', [EventController::class, "update_event"])->name('dashboard');
    Route::delete('/events', [EventController::class, "delete"])->name('dashboard');

    // Attendees route
    Route::get('/events/{event_id}/attendees', [AttendeeController::class, "index"])->name('dashboard');
    Route::post('/events/{event_id}/attendees', [AttendeeController::class, "store_attendees"])->name('dashboard');
    Route::delete('/events/{event_id}/attendees', [AttendeeController::class, "delete"])->name('dashboard');
});
