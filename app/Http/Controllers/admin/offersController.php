<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Offer;
use App\Course;
use App\Notification;
use App\User;
use Illuminate\Http\Request;

class offersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $offers=offer::all();
        return view('admin.offers.index',compact('offers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses=course::all();
        return view('admin.offers.create',compact('courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([

            'newprice'  => 'required',
            'course_id' =>'required',

        ]);

        $offer=offer::create([
            'course_id' => $request->input('course_id'),
            'newprice'  => $request->input('newprice'),
        ]);

        $notification=notification::create([

            'body_en' => 'new offer is created',
            'body_ar' => 'عرض جديد ',
            'title_en' => 'new offer',
            'title_ar' => 'عرض جديد',
            'offer_id' => $offer->id,

        ]);

        $users=user::where('role_id',3)->get();
        $notification->users()->attach($users);
        flash('Offer Created.......');
        return redirect()->route('offers.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $offer=offer::find($id);
        $courses=course::all();
        return view('admin.offers.edit',compact('offer','courses'));
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
        $offer=offer::find($id);
        request()->validate([
         'newprice' => 'required',
         'course_id'=> 'required'
        ]);

        $offer->update([

            'newprice'  => $request->input('newprice'),
            'course_id' => $request->input('course_id'),

        ]);
        flash('Offer Updated.......');

        return redirect()->route('offers.index');



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $offer=offer::find($id);
        $offer->delete();
        flash('Offer Deleted.......');
        return back();
    }
}
