<?php

namespace App\Http\Controllers;

use App\Models\Attendee;
use App\Models\Event;
use Illuminate\Http\Request;

class AttendeeController extends Controller
{
    /**
     * Display a listing of the attendees for a specific event.
     *
     * @param  int  $event_id
     * @return \Illuminate\Http\JsonResponse
     */
    public function index($event_id)
    {
        $event = Event::find($event_id);

        if (!$event) {
            return response()->json(['status' => false, 'message' => 'Event not found'], 404);
        }

        $attendees = $event->attendees;
        return response()->json(['status' => true, 'data' => $attendees], 200);
    }

    /**
     * Store a newly created attendee in storage for a specific event.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $event_id
     * @return \Illuminate\Http\JsonResponse
     */
    public function store_attendees(Request $request, $event_id)
    {
        $event = Event::find($event_id);

        if (!$event) {
            return response()->json(['status' => false, 'message' => 'Event not found'], 404);
        }

        $user_id = auth()->user()->id;
        $attendee = Attendee::create([
            'event_id' => $event->id,
            'user_id' => $user_id,
        ]);

        return response()->json(['status' => true, 'data' => $attendee], 201);
    }

    /**
     * Remove the specified attendee from storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $event_id
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete(Request $request, $event_id)
    {
        $event = Event::find($event_id);

        if (!$event) {
            return response()->json(['status' => false, 'message' => 'Event not found'], 404);
        }

        $validatedData = $request->validate([
            'attendee_id' => 'required|exists:attendees,id',
        ]);

        $attendee = Attendee::find($validatedData['attendee_id']);

        if ($attendee->event_id != $event->id) {
            return response()->json(['status' => false, 'message' => 'Attendee does not belong to this event'], 422);
        }
        $attendee->delete();
        return response()->json(['status' => true, 'message' => 'Attendee deleted successfully'], 200);
    }
}
