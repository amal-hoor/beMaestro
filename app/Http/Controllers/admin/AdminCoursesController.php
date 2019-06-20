<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Course;
use App\Instructor;
use App\Photo;

class AdminCoursesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses=course::all();
        return view('admin.courses.index',compact('courses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.courses.create');
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

            'name'          => 'required|max:255',
            'instructor_id' => 'required',
            'details'       => 'required',
            'price'         => 'required',
            'hours'         => 'required',

          ]);

          if($file=$request->file('photo_id')){
            $name=$file->getClientOriginalName();
            $file->move('images',$name);
            $photo=photo::create(['name' => $name,'path' => 'images/'.$name]);
            $photo_id=$photo->id;

          }else{
              $photo_id=null;
          }



          $instructor=instructor::where('name',request('instructor_id'))->first();
          $instructor_id=$instructor->id;
          course::create([

                'name'          =>$request->input('name'),
                'details'       => $request->input('details'),
                'instructor_id' => $instructor_id,
                'price'         =>$request->input('price'),
                'hours'         =>$request->input('hours'),
                'photo_id'      => $photo_id,

          ]);
          flash('Course Added........');
          return redirect()->route('course.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $course=course::find($id);
        return view('admin.courses.edit',compact('course'));
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
        $course=course::find($id);
        request()->validate([

            'name'          => 'required|max:255',
            'instructor_id' => 'required',
            'details'       => 'required',
            'price'         => 'required',
            'hours'         => 'required',

          ]);


        $instructor=instructor::where('name',request('instructor_id'))->first();
        $instructor_id=$instructor->id;

        if($file=$request->file('photo_id')){
            $name=$file->getClientOriginalName();
            $file->move('images',$name);
            $photo=photo::create(['name' => $name,'path' => 'images/'.$name]);
            $photo_id=$photo->id;
          }else{
              $photo_id=null;
          }

        $course->update([

              'name'         =>$request->input('name'),
              'details'      => $request->input('details'),
              'instructor_id'=> $instructor_id,
              'price'        => $request->input('price'),
              'hours'        => $request->input('hours'),
              'photo_id'     => $photo_id,

        ]);
        flash('Course updated........');
        return redirect()->route('course.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $course=course::find($id);
        $course->delete();
        flash('Course deleted........');
        return back();
    }
}

