<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Course;
use App\Instructor;
use App\Photo;
use App\Notification;
use App\User;
use App\Video;
use App\Category;

class CoursesController extends Controller
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
        $categories=category::all();
        return view('admin.courses.create',compact('categories'));
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

            'name_ar'             => 'required|max:255',
            'name_en'             => 'required|max:255',
            'instructor_id'       => 'required',
            'details_ar'          => 'required',
            'details_en'          => 'required',
            'price'               => 'required',
            'hours'               => 'required',

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

          $course =course::create([

                'name_ar'          => $request->input('name_ar'),
                'name_en'          => $request->input('name_en'),
                'details_ar'       => $request->input('details_ar'),
                'details_en'       => $request->input('details_en'),
                'instructor_id'    => 1,
                'price'            => $request->input('price'),
                'hours'            => $request->input('hours'),
                'photo_id'         => $photo_id,
                'category_id'      => $request->input('category_id'),

          ]);


          if($request->input('videos_number')){


                $n=$request->input('videos_number');



                for($i=0 ; $i<$n ;$i++){

                     $request->input('video_name_ar')[$i];
                     $video = video::create([
                        'name_ar' => $request->input('video_name_ar')[$i],
                        'name_en' => $request->input('video_name_en')[$i],
                        'url'     => $request->input('video_url')[$i],
                        'description_ar' =>$request->input('video_description_ar')[$i],
                        'description_en' =>$request->input('video_description_en')[$i],
                        'course_id'   =>$course->id,
                    ]);

                }


          $notifcation = Notification::create([
              'title_en'=> 'New Course',
              'title_ar'=> 'كورس جديد',
              'body_en'=> 'New Course has been added',
              'body_ar'=> 'تم اضافه كورس جديد',
              'course_id' => $course->id
          ]);

          $users = User::where('role_id' , 3)->get();
          $notifcation->users()->attach($users);

          flash('Course Added........');
          return redirect()->route('course.index');
    }
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

            'name_ar'          => 'required|max:255',
            'name_en'          => 'required|max:255',
            'instructor_id'    => 'required',
            'details_ar'       => 'required',
            'details_en'       => 'required',
            'price'            => 'required',
            'hours'            => 'required',

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

              'name_ar'         =>$request->input('name_ar'),
              'name_en'         =>$request->input('name_en'),
              'details_ar'      => $request->input('details_ar'),
              'details_en'      => $request->input('details_en'),
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

