<x-app-layout>
    <div class="container mx-auto py-6">
        <a href="{{ route('forum.index') }}" class="inline-flex items-center text-teal-500 hover:font-extrabold mb-4">
            ← Back to Threads
        </a>
        <div class="bg-white rounded-lg shadow-md p-6 mb-4">
            <h1 class="text-2xl font-bold mb-4">{{ $thread->title }}</h1>
            <p class="text-sm text-gray-500 mb-4">Posted by: {{ $thread->user->name }}</p>
            <p class="text-gray-700">{{ $thread->content }}</p>
        </div>

        <div class="replies-section bg-gray-100 p-6 rounded-lg mb-4">
            <h2 class="text-lg font-bold mb-4">Replies</h2>
            @foreach ($thread->replies as $reply)
                <div class="p-4 bg-white rounded-lg shadow-md mb-2">
                    <p class="text-lg font-bold text-gray-900 mb-2">{{ $reply->user->name }}</p>
                    <p class="text-gray-700">{{ $reply->content }}</p>
                </div>
            @endforeach
        </div>

        @auth
            <form action="{{ route('reply.store', $thread->id) }}" method="POST" class="bg-white p-6 rounded-lg shadow-md">
                @csrf
                <textarea name="content" rows="4" class="w-full p-2 border rounded-lg"
                    placeholder="Add your reply"></textarea>
                <button type="submit" class="bg-teal-500 text-white px-4 py-2 rounded-lg mt-2">Submit</button>
            </form>
        @endauth
    </div>
</x-app-layout>