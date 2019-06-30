<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Video;
use App\Course;

use Illuminate\Http\Request;

class videosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $videos=Video::all();
        return view('admin.videos.index',compact('videos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses=Course::all();
        return view('admin.videos.create',compact('courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // ini_set('memory_limit', '-1');
        // ini_set('post_max_size', '200M');
        request()->validate([

            'name_ar'        => 'required',
            'name_en'        => 'required',
            'description_ar' => 'required',
            'description_en' => 'required',
            'course_id'      => 'required',

        ]);

        if($file=$request->file('path')){
            $fileNameToStore=$request->file('path')->getClientOriginalName();
            $path = public_path().'/videos/';
            $path = $request->file('path')->move($path, $fileNameToStore);
        }
    

        Video::create([

            'name_ar'        => $request->input('name_ar'),
            'name_en'        => $request->input('name_en'),
            'description_ar' => $request->input('description_ar'),
            'description_en' => $request->input('description_en'),
            'course_id' => $request->input('course_id'),
            'url'       => $request->input('url')  ? $request->input('url') : '',

        ]);

        flash('Video Added.......');
        return redirect()->route('videos.index');
    }

 
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $video=Video::find($id);
        $courses=Course::all();
        return view('admin.videos.edit',compact('video','courses'));
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
        $video=Video::find($id);

            request()->validate([

                'name_ar'         => 'required',
                'name_en'         => 'required',
                'description_ar'  => 'required',
                'description_en'  => 'required',
                'course_id' => 'required',
                'url'       => 'required',

            ]);

            if($file=$request->file('path')){
                $fileNameToStore=$request->file('path')->getClientOriginalName();
                $path = public_path().'/videos/';
                $path = $request->file('path')->move($path, $fileNameToStore);
            }


       $video->update([

        'name_ar'      => $request->input('name_ar'),
        'name_en'      => $request->input('name_en'),
        'description_ar' => $request->input('description_ar'),
        'description_en' => $request->input('description_en'),
        'course_id'    => $request->input('course_id'),
        'url'           => $request->input('url')  ? $request->input('url') : $video->url,

       ]);
       flash('Video Updated.......');
       return redirect()->route('videos.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $video=Video::find($id);
        $video->delete();
        flash('Video Deleted.......');
        return back();
    }
}

