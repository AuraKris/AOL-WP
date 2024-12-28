<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    use HasFactory;

    protected $fillable = ['content', 'thread_id', 'user_id'];

    // A reply belongs to a thread
    public function thread()
    {
        return $this->belongsTo(Thread::class);
    }

    // A reply belongs to a user
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
