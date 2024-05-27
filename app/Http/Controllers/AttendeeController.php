<?php

namespace App\Http\Controllers;

use App\Models\Attendee;
use App\Models\Event;
use Illuminate\Http\Request;

class AttendeeController extends Controller
{
    public function index(Event $event)
    {
        return $event->attendees;
    }

    public function store_attendees(Request $request, Event $event)
    {
        $validatedData = $request->validate([
            'user_id' => 'required|exists:users,id',
        ]);

        $attendee = Attendee::create([
            'event_id' => $event->id,
            'user_id' => $validatedData['user_id'],
        ]);

        return response()->json($attendee, 201);
    }

    public function delete(Event $event, Attendee $attendee)
    {
        $attendee->delete();
        return response()->noContent();
    }
}
