<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Spotlight;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    // Display the home page with news and spotlights
    public function home()
    {
        // Fetch the spotlight articles (e.g., latest 3)
        $spotlights = News::orderBy('views', 'desc')->take(3)->get();

        // Fetch paginated news articles
        $news = News::orderBy('created_at', 'desc')->paginate(3);

        return view('home', compact('spotlights', 'news'));
    }

    public function index()
    {
        $news = News::orderBy('created_at', 'desc')->paginate(9);

        return view('news.index', compact('news'));
    }

    // Show a specific news article
    public function show($id)
    {
        $news = News::findOrFail($id);
        $news->increment('views');
        return view('news.show', compact('news'));
    }
}
