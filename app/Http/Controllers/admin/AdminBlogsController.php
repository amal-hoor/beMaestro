<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Blog;
use App\User;
use App\Photo;
class AdminBlogsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs=blog::all();
        return view('admin.blogs.index',compact('blogs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.blogs.create');
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

         'title'     => 'required|max:255',
         'content'   => 'required|min:5',
         'author_id' => 'required',

       ]);

       if($file=$request->file('photo_id')){

         $name=$file->getClientOriginalName();
         $file->move('images',$name);

         $photo=photo::create(['name' => $name,'path' => 'images/'.$name]);
         $photo_id=$photo->id;

       }

       $author=user::where('name',$request->input('author_id'))->first();
       $author_id=$author->id;

       blog::create([

             'title'     => $request->input('title'),
             'content'   => $request->input('content'),
             'author_id' => $author_id,

       ]);
       flash('Blog Added........');
       return redirect()->route('blog.index');
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
        $blog=blog::find($id);
        return view('admin.blogs.edit',compact('blog'));
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
        $blog=blog::find($id);
        request()->validate([

            'title'     => 'required|max:255',
            'content'   => 'required|min:5',
            'author_id' => 'required',

          ]);

          if($file=$request->file('photo_id')){

            $name=$file->getClientOriginalName();
            $file->move('images',$name);

            $photo=photo::create(['name' => $name]);
            $blog->photo_id=$photo->id;
            $blog->update();
          }

          $author=user::where('name',$request->input('author_id'))->first();
          $author_id=$author->id;

          $blog->update([

                'title'     => $request->input('title'),
                'content'   => $request->input('content'),
                'author_id' => $author_id,
            
          ]);
          flash('Blog Updated........');
          return redirect()->route('blog.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog=blog::find($id);
        $blog->delete();
        flash('Blog deleted........');
        return redirect()->back();
    }
}




