<x-app-layout>
    <div class="container mx-auto py-6">
        <!-- <div class="flex justify-between mb-6">
            <h2 class="text-2xl font-bold">All Articles</h2>
            <div class="flex w-3/5 justify-end">
                <input type="text" id="searchInput" placeholder="Search articles..."
                    class="w-1/2 px-4 py-2 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 shadow-sm focus:ring focus:ring-teal-300 focus:outline-none">
            </div>
        </div> -->
        <!-- Heading and Search Bar for larger screens -->
        <div class="flex flex-col md:flex-row justify-between mb-4">
            <h2 class="text-2xl font-bold mb-4 md:mb-0">All Articles</h2>

            <!-- Search Bar for larger screens -->
            <div class="hidden md:flex w-3/5 justify-end">
                <input type="text" id="searchInput" placeholder="Search articles..."
                    class="w-1/2 px-4 py-2 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 shadow-sm focus:ring focus:ring-teal-300 focus:outline-none">
            </div>
        </div>

        <!-- Search Bar for smaller screens -->
        <div class="flex md:hidden mb-6">
            <input type="text" id="searchInputMobile" placeholder="Search articles..."
                class="w-full px-4 py-2 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 shadow-sm focus:ring focus:ring-teal-300 focus:outline-none">
        </div>

        <div id="threadsContainer" class="grid grid-cols-1 w-full gap-6 md:grid-cols-2 lg:grid-cols-3">
            @foreach ($news as $article)
                <div class="thread-item flex flex-col justify-between bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
                    data-title="{{ strtolower($article->title) }}" data-content="{{ strtolower($article->content) }}"
                    data-author="{{ strtolower($article->author) }}">
                    <a href="#">
                        <img class="w-full aspect-[4/3] object-cover rounded-t-lg" src="{{ $article->image }}" alt="" />
                    </a>
                    <div class="flex flex-col justify-between p-5 h-full">
                        <div class="">
                            <a href="#">
                                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                    {{ $article->title }}
                                </h5>
                            </a>
                            <p>By {{ $article->author }} | Views: {{ $article->views }}</p>
                            <p class="mb-3 font-normal text-gray-700 text-justify dark:text-gray-400">
                                {{ Str::limit($article->content, 150) }}
                            </p>
                        </div>
                        <div class="py-2">
                            <a href="{{ route('news.show', $article->id) }}"
                                class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-teal-700 rounded-lg hover:bg-teal-800 focus:ring-4 focus:outline-none focus:ring-teal-300 dark:bg-teal-600 dark:hover:bg-teal-700 dark:focus:ring-teal-800">
                                Read more
                                <svg class="rtl:rotate-180 w-3.5 h-3.5 ms-2" aria-hidden="true"
                                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9" />
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="mt-6">
            {{ $news->links() }}
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