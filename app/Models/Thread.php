<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Thread extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'content', 'replies_count', 'likes_count', 'user_id'];

    // A thread belongs to a user
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // A thread has many replies
    public function replies()
    {
        return $this->hasMany(Reply::class);
    }
}

