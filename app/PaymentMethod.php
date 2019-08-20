<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentMethod extends Model
{
    protected $fillable=['name_ar','name_en','description_ar','description_en','type_ar','type_en','numbers'];
//    protected $casts = [
//        'numbers' => 'array'
//    ];

}
