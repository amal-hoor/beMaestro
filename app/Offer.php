<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    protected $fillable=[
        'newprice','course_id'
    ];

    public function course(){
        return $this->belongsTo('App\Course');
    }
}
