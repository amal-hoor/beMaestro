<?php

namespace App\Http\Controllers\admin;

use App\PaymentMethod;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class paymentMethodsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Payments=PaymentMethod::all();
        return view('admin.payments.index',compact('Payments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.payments.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       //return implode($request->input('number'),',');
        request()->validate([
            'name_ar' => 'required',
            'name_en' => 'required',
            'description_ar' => 'required',
            'description_en' => 'required',
            'type_ar' => 'required',
            'type_en' => 'required',
            'number' => 'required',
        ]);
        //$arr_tojson = json_encode($request->input('number'));
        PaymentMethod::create([
            'name_ar' => $request->input('name_ar'),
            'name_en' => $request->input('name_en'),
            'description_ar' => $request->input('description_ar'),
            'description_en' => $request->input('description_en'),
            'type_ar' => $request->input('type_ar'),
            'type_en' => $request->input('type_en'),
            'numbers' =>  json_encode($request->input('number')),
        ]);
        flash('Payment Method is Created......');
        return redirect()->route('paymentmethods.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $payment=PaymentMethod::find($id);
        return view('admin.payments.edit',compact('payment'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        request()->validate([
            'name_ar' => 'required',
            'name_en' => 'required',
            'description_ar' => 'required',
            'description_en' => 'required',
            'type_ar' => 'required',
            'type_en' => 'required',
            'number' => 'required',
        ]);

        $payment=PaymentMethod::find($id);
        $payment->update([
            'name_ar' => $request->input('name_ar'),
            'name_en' => $request->input('name_en'),
            'description_ar' => $request->input('description_ar'),
            'description_en' => $request->input('description_en'),
            'type_ar' => $request->input('type_ar'),
            'type_en' => $request->input('type_en'),
            'numbers' => json_encode($request->input('number')),
        ]);
        flash('Payment Method is Updated......');
        return redirect()->route('paymentmethods.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $payment=PaymentMethod::find($id)->delete();
        flash('Payment Method is Deleted......');
        return back();
    }
}
