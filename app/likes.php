<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class likes extends Model
{
    protected $fillable=[
        'user_id',
        'comment_id',
        'blog_id'
    ];
}
