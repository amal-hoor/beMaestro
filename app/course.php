<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class course extends Model
{
    protected $fillable=[
        'name','details','price','hours','instructor_id','status'
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

}




