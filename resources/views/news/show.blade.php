<x-app-layout>
    <div class="container mx-auto py-6">
        <a href="{{ route('news.index') }}" class="inline-flex items-center text-teal-500 hover:font-extrabold mb-4">
            ← Back to Threads
        </a>
        <div class="bg-white rounded-lg shadow-md p-6">
            <h1 class="text-2xl font-bold p-4">{{ $news->title }}</h1>
            <p class="p-4">By {{ $news->author }} | Views: {{ $news->views }}</p>
            <div class="flex justify-center p-4">
                <img src="{{ $news->image }}" alt="{{ $news->title }}" class="w-3/5 rounded-lg object-cover">
            </div>
            <p class="text-gray-700 text-justify p-4">{{ $news->content }}</p>
        </div>
    </div>
</x-app-layout>