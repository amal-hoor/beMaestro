<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Course;
use App\Comment;

class AdminCourseCommentsController extends Controller
{
     public function show($id)
     {
         $course=course::find($id);
         $comments=$course->comments;
         return view('admin.coursecomments.show',compact('course','comments'));

     }


     public function update(Request $request, $id)
     {
         $comment=comment::find($id);

         if($request->input('approve')){
          $comment->update(['status' => 1 ]);
         }

         if( $request->input('unapprove')){
             $comment->update(['status' => 0 ]);
         }

         return back();

     }
}
