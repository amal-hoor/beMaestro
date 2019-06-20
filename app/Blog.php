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


    public function user(){
        return $this->belongsTo('App\user');
    }


    public function photo(){
        return $this->belongsTo('App\Photo');
    }


    public function getCover(){
        return isset($this->photo) ? $this->photo->path : 'images/blog.png';
    }


    public function likes(){
        return $this->hasMany('App\Likes');
    }
}

