<?php

namespace App\Http\Controllers;

use App\Models\Reply;
use Illuminate\Http\Request;

class ReplyController extends Controller
{
    // Store a new reply
    public function store(Request $request, $threadId)
    {
        $request->validate([
            'content' => 'required',
        ]);

        Reply::create([
            'content' => $request->content,
            'thread_id' => $threadId,
            'user_id' => auth()->id(),
        ]);

        return redirect()->route('forum.show', $threadId);
    }
    public function destroy(Reply $reply)
    {
        // Check if the logged-in user is the owner of the reply
        if (auth()->id() !== $reply->user_id) {
            return redirect()->back()->with('error', 'Unauthorized action.');
        }

        $reply->delete();
        return redirect()->back()->with('success', 'Reply deleted successfully.');
    }

}
