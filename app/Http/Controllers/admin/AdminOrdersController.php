<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Order;

class AdminOrdersController extends Controller
{
    public function show()
    {

        $orders=order::all();
        return view('admin.orders.show',compact('orders'));

    }
}
