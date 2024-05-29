<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AttendeeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\EventController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// Authentication route
Route::post("/signup", [AuthController::class, "signup"]);
Route::post("/signin", [AuthController::class, "signin"]);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get("/signout", [AuthController::class, "Signout"]);

    // Events route
    Route::get('/events', [EventController::class, "index"]);
    Route::post('/events', [EventController::class, "store_event"]);
    Route::get('/events/{event_id}', [EventController::class, "get_event"]);
    Route::put('/events/{event_id}', [EventController::class, "update_event"]);
    Route::delete('/events/{event_id}', [EventController::class, "delete"]);

    // Attendees route
    Route::get('/events/{event_id}/attendees', [AttendeeController::class, "index"]);
    Route::post('/events/{event_id}/attendees', [AttendeeController::class, "store_attendees"]);
    Route::delete('/events/{event_id}/attendees', [AttendeeController::class, "delete"]);
});
