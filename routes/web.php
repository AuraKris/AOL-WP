<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ReplyController;
use App\Http\Controllers\ThreadController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [NewsController::class, 'home'])->name(name: 'home');
Route::get('/news', [NewsController::class, 'index'])->name('news.index');
Route::get('/news/{id}', [NewsController::class, 'show'])->name('news.show');
Route::get('/forum', [ThreadController::class, 'index'])->name('forum.index');
Route::get('/forum/create', [ThreadController::class, 'create'])->middleware(['auth', 'verified'])->name('forum.create');
Route::get('/forum/{id}', [ThreadController::class, 'show'])->name('forum.show');
Route::get('/aboutus', [AboutUsController::class, 'index'])->name('aboutus');

// Thread delete route
Route::delete('/forum/{thread}', [ThreadController::class, 'destroy'])->name('forum.destroy');

// Reply delete route
Route::delete('/forum/{thread}/reply/{reply}', [ReplyController::class, 'destroy'])->name('reply.destroy');


Route::middleware('auth')->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->middleware(['auth', 'verified'])->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // Route::get('/forum/create', [ThreadController::class, 'create'])->name('forum.create');
    Route::post('/forum', [ThreadController::class, 'store'])->name('forum.store');
    Route::post('/forum/{id}/reply', [ReplyController::class, 'store'])->name('reply.store');
});

require __DIR__ . '/auth.php';
