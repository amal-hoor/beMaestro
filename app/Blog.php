<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable=[
        'content','title','author_id','photo_id','status',
    ];


    public function comments()
    {
        return $this->hasMany('App\Comment', 'blog_id');
    }


}
