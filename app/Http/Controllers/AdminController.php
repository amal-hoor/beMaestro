<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;
use App\Role;
use App\Country;
class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $admins =User::where('role_id',2)->get();
        return view('admin.admins.index',compact('admins'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles=role::all();
        $countries=country::all();
        return view('admin.admins.create',compact('roles','countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request->all();
        
        request()->validate([
            'name'        => 'required|min:4|max:255',
            'email'       => 'required|email|string|unique:users',
            'role_id'     => 'required',
            'country_id'  => 'required',
            'password'    => 'required|min:6'
        ]);

        if(trim($request->input('password')) == ''){

            request()->validate([
                'password' => 'required|min:6',
            ]);
         }

        user::create([

            'name'       => $request->input('name'),
            'email'      => $request->input('email'),
            'role_id'    => $request->input('role_id'),
            'country_id' => $request->input('country_id'),
            'password'   => Hash::make($request->input('password'))

        ]);

        return redirect()->route('admin.index');
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
        $roles=role::all();
        $countries=country::all();
        $admin=user::find($id);
        return view('admin.admins.edit',compact('roles','countries','admin'));
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
        $admin=user::find($id);

        request()->validate([
            'name'        => 'required|min:4',
            'email'       => 'required|string|email',
            'role_id'     => 'required',
            'country_id'  => 'required',
            'password'    => 'required|min:6'
        ]);


        if(trim($request->input('password')) == ''){

           request()->validate([
               'password' => 'required|min:6',
           ]);
        }

        $admin->update([

            'name'       => $request->input('name'),
            'email'      => $request->input('email'),
            'role_id'    => $request->input('role_id'),
            'country_id' => $request->input('country_id'),
            'password'   => Hash::make($request->input('password'))

        ]);

        return redirect()->route('admin.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $admin=user::find($id);
        $admin->delete();
        return redirect()->back();
    }
}
