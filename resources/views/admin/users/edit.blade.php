@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')



<div class="row">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('user.update',$user->id)}}" method="POST">
                        @csrf
                        @method('PATCH')
                        <div class="form-body">
                            <h3 class="card-title">Update user</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Name</label>
                                    <input type="text" name="name" class="form-control" value="{{$user->name}}">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Email</label>
                                        <input type="text" name="email" class="form-control" value="{{$user->email}}">
                                 </div>
                            </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Roles</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a Category" name="role_id" tabindex="1">

                                            @foreach($roles as $role)

                                              <option value="{{$role->id}}"  @if($user->role->name == $role->name) selected @endif>{{$role->name}}</option>

                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->

                            <div class="row">
                                 <div class="col-md-8">
                                    <label class="control-label">Country</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a Category" name="country_id" tabindex="1">

                                            @foreach($countries as $country)

                                              <option value="{{$country->id}}" @if($user->country->name==$country->name) selected @endif>{{$country->name}}</option>

                                            @endforeach
                                        </select>
                                </div>
                            </div>


                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="text" class="form-control" name="password" value="{{$user->passowrd}}">
                                    </div>
                                </div>
                                <!--/span-->
                            </div>

                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Status</label>
                                        <select class="form-control custom-select"  name="block" tabindex="1">


                                              <option value="1" selected>un blocked</option>
                                            @else
                                              <option value="0" selected> blocked</option>
                                            @endif

                                            <option value="1">un blocked</option>
                                            <option value="0"> blocked</option>

                                         </select>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>

                        <div class="form-actions mb-5">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>Update user</button>
                        </div>


                        @if($errors->any())
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $error)

                                       <p> {{$error}} </p>

                                @endforeach
                            </div>

                        @endif
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Row -->



@include('layouts.footer')
