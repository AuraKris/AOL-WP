<x-app-layout>
    <div class="container mx-auto py-6">
        <!-- Forum Threads Header -->
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-2xl justify-center font-bold md:mb-0">Forum Threads</h2>

            <!-- Search Bar for larger screens -->
            <div class="hidden md:flex w-3/5 justify-center">
                <input type="text" id="searchInput" placeholder="Search threads..."
                    class="w-1/2 px-4 py-2 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 shadow-sm focus:ring focus:ring-teal-300 focus:outline-none">
            </div>

            <a href="{{ route('forum.create') }}" class="bg-teal-500 text-sm text-white px-4 py-2 rounded-lg">
                Create Thread
            </a>
        </div>
        <!-- Search Bar for smaller screens -->
        <div class="flex md:hidden mb-4">
            <input type="text" id="searchInputMobile" placeholder="Search threads..."
                class="w-full px-4 py-2 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 shadow-sm focus:ring focus:ring-teal-300 focus:outline-none">
        </div>

        <!-- Threads List -->
        <div id="threadsContainer" class="grid grid-row-1 md:grid-row-2 lg:grid-row-3 gap-6">
            @foreach ($threads as $thread)
                <div class="thread-item bg-white shadow-md rounded-lg p-6" data-title="{{ strtolower($thread->title) }}"
                    data-content="{{ strtolower($thread->content) }}" data-author="{{ strtolower($thread->user->name) }}">
                    <h3 class="text-lg font-semibold text-teal-600">
                        <a href="{{ route('forum.show', $thread->id) }}" class="hover:underline">
                            {{ $thread->title }}
                        </a>
                    </h3>
                    <p class="text-sm text-gray-600 mt-2 text-justify">{{ Str::limit($thread->content, 200) }}</p>
                    <div class="flex justify-between">
                        <div class="mt-4 text-sm text-gray-500">
                            Posted by: {{ $thread->user->name }} &middot; {{ $thread->created_at->diffForHumans() }}
                        </div>
                        <div class="mt-2 text-sm text-gray-600">
                            Replies: {{ $thread->replies->count() }}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const searchInput = document.getElementById('searchInput');
            const threadsContainer = document.getElementById('threadsContainer');
            const threads = Array.from(document.querySelectorAll('.thread-item'));

            searchInput.addEventListener('input', (e) => {
                const query = e.target.value.toLowerCase();

                threads.forEach(thread => {
                    const title = thread.dataset.title;
                    const content = thread.dataset.content;
                    const author = thread.dataset.author;

                    if (title.includes(query) || content.includes(query) || author.includes(query)) {
                        thread.classList.remove('hidden');
                    } else {
                        thread.classList.add('hidden');
                    }
                });
            });
        });
    </script>

</x-app-layout>