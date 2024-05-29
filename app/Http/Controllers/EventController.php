<?php

namespace App\Http\Controllers;

use App\Models\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
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

    public function get_event(Event $event)
    {
        return $event;
    }

    public function update_event(Request $request, Event $event)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'start_time' => 'required|date',
            'end_time' => 'required|date',
        ]);

        $event->update($validatedData);

        return response()->json($event, 200);
    }

    public function delete(Event $event)
    {
        $event->delete();
        return response()->noContent();
    }
}
