<?php

namespace App\Http\Controllers;

use App\Models\Thread;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ThreadController extends Controller
{
    // Display all threads
    // public function index(Request $request)
    // {
    //     $search = $request->query('search');

    //     $threads = Thread::when($search, function ($query, $search) {
    //         $query->where('title', 'like', "%{$search}%")
    //             ->orWhere('content', 'like', "%{$search}%");
    //     })
    //         ->with('user') // Ensure user relation is loaded for displaying usernames
    //         ->orderBy('created_at', 'desc')
    //         ->paginate(15);

    //     return view('forum.index', compact('threads'));
    // }
    public function index()
    {

        $threads = Thread::with('user') // Ensure user relation is loaded for displaying usernames
            ->orderBy('created_at', 'desc')
            ->paginate(15);

        return view('forum.index', compact('threads'));
    }


    // Show the form to create a new thread
    public function create()
    {
        return view('forum.create');
    }

    // Store a new thread
    public function store(Request $request)
    {
        if (!Auth::check()) {
            return redirect()->route('login'); // Or handle it differently
        }

        // Now you know the user is logged in, continue with thread creation
        $thread = new Thread;
        $thread->title = $request->input('title');
        $thread->content = $request->input('content');
        $thread->user_id = Auth::id(); // Assign the logged-in user's ID
        $thread->save();

        return redirect()->route('forum.show', $thread->id);
    }

    // Show a specific thread with its replies
    public function show($id)
    {
        $thread = Thread::with('replies.user')->findOrFail($id);
        return view('forum.show', compact('thread'));
    }

    public function destroy(Thread $thread)
    {
        // Check if the logged-in user is the owner of the thread
        if (auth()->id() !== $thread->user_id) {
            return redirect()->route('forum.index')->with('error', 'Unauthorized action.');
        }

        $thread->delete();
        return redirect()->route('forum.index')->with('success', 'Thread deleted successfully.');
    }

}
