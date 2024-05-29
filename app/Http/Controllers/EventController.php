<?php

namespace App\Http\Controllers;

use App\Models\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EventController extends Controller
{
    /**
     * Display a listing of the events.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $events = Event::all();
        return response(
            [
                'data' => $events,
                'status' => true,
            ],
            200,
        );
    }

    /**
     * Store a newly created event in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store_event(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'start_time' => 'required|date',
            'end_time' => 'required|date',
        ]);

        $event = Event::create([
            'user_id' => auth()->id(),
            'title' => $validatedData['title'],
            'description' => $validatedData['description'],
            'start_time' => $validatedData['start_time'],
            'end_time' => $validatedData['end_time'],
        ]);

        return response()->json($event, 201);
    }

    /**
     * Display the specified event.
     *
     * @param  int  $event_id
     * @return \Illuminate\Http\JsonResponse
     */
    public function get_event($event_id)
    {
        $validator = Validator::make(['event_id' => $event_id], [
            'event_id' => 'required|exists:events,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => false, 'message' => 'Invalid ID provided'], 422);
        }

        $event = Event::find($event_id);

        // Return success response
        return response()->json(['status' => true, 'data' => $event], 200);
    }

    /**
     * Update the specified event in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Event  $event
     * @return \Illuminate\Http\JsonResponse
     */
    public function update_event(Request $request, Event $event)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'start_time' => 'required|date',
            'end_time' => 'required|date',
        ]);

        $event->update($validatedData);

        // Return success response
        return response()->json(['status' => true, 'message' => 'Event updated successfully', 'data' => $event], 200);
    }

    /**
     * Remove the specified event from storage.
     *
     * @param  int  $event_id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($event_id)
    {
        $validator = Validator::make(['event_id' => $event_id], [
            'event_id' => 'required|exists:events,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => false, 'message' => 'Invalid ID provided'], 422);
        }
        $event = Event::find($event_id);
        $event->delete();

        // Return success response
        return response()->json(['status' => true, 'message' => 'Event deleted successfully'], 200);
    }
}
