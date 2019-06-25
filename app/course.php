<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class course extends Model
{
    protected $fillable=[
        'name_ar','name_en','details_ar','details_en','price','hours','instructor_id','status','photo_id','category_id',
    ];


        public function instructor()
        {
            return $this->belongsTo('App\Instructor');
        }


        public function comments()
        {
            return $this->hasMany('App\Comment', 'course_id');
        }


        public function orders()
        {
            return $this->hasMany('App\Order');
        }


        public function photo()
        {
            return $this->belongsTo('App\Photo');
        }


        public function getCover(){
            return isset($this->photo) ? $this->photo->path : 'images/blog.png';
        }

        public function likes(){
            return $this->hasMany('App\Likes');
        }


        public function offers(){
            return $this->hasMany('App\Offer');
        }

        public function videos(){
            return $this->hasMany('App\Video');
        }

        public function notifications(){
            return $this->hasMany('App\Notification');
        }

        public function Category(){
            return $this->belongsTo('App\Category');
        }
}




