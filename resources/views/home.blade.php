<x-app-layout>
    <div class="container mx-auto py-6">
        @auth
            <h2 class="text-4xl font-bold mb-4">Hi, {{ auth()->user()->name }}</h2>
        @endauth
        <!-- Carousel Section -->
        <div class="carousel-section mb-8">
            <h2 class="text-2xl font-bold mb-4">Latest News</h2>
            <div class="swiper-container relative overflow-hidden">
                <div class="swiper-wrapper">
                    @foreach ($news as $article)
                        <div class="swiper-slide">
                            <div
                                class="bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                <p>
                                    <img class="w-full aspect-[8/3] object-cover rounded-t-lg" src="{{ $article->image }}"
                                        alt="" />
                                </p>
                                <div class="flex flex-col justify-between p-5 h-full">
                                    <div class="">
                                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            {{ $article->title }}
                                        </h5>
                                        <p>By {{ $article->author }} | Views: {{ $article->views }}</p>
                                        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                                            {{ Str::limit($article->content, 300) }}
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
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

        <!-- Spotlight Section -->
        <div class="spotlight-section mt-8">
            <h2 class="text-2xl font-bold mb-4">Spotlights</h2>
            <div class="grid grid-cols-1 w-full gap-6 md:grid-cols-2 lg:grid-cols-3">
                @foreach ($spotlights as $spotlight)
                    <div
                        class="flex flex-col max-w-md bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                        <p>
                            <img class="w-full aspect-[4/3] object-cover rounded-t-lg" src="{{ $spotlight->image }}"
                                alt="" />
                        </p>
                        <div class="flex flex-col justify-between p-5 h-full">
                            <div class="">
                                <p class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                    {{ $spotlight->title }}
                                </p>
                                <p>By {{ $spotlight->author }} | Views: {{ $spotlight->views }}</p>
                                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                                    {{ Str::limit($spotlight->content, 100) }}
                                </p>
                            </div>
                            <div>
                                <a href="{{ route('news.show', $spotlight->id) }}"
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
        </div>
    </div>
</x-app-layout>