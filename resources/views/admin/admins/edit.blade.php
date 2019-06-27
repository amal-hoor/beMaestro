@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')




<div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-10 m-auto">
            <div class="card">
                <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white">Update Admin</h4>
                </div>
                <div class="card-body p-5">
                    <form action="{{route('admin.update',$admin->id)}}" method="POST" enctype="multipart/form-data"  class="form-horizontal form-bordered">
                        @csrf
                        @method('PATCH')
                        <div class="form-body">

                                    <div class="form-group row">
                                        <label class="control-label">Name</label>
                                    <input type="text" name="name" class="form-control" value="{{$admin->name}}">
                                    </div>



                                    <div class="form-group row">
                                        <label class="control-label">Email</label>
                                        <input type="text" name="email" class="form-control" value="{{$admin->email}}">
                                    </div>


                                    <div class="form-group row">
                                        <label class="control-label">Roles</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a Category" name="role_id" tabindex="1">

                                            @foreach($roles as $role)

                                              <option value="{{$role->id}}"  @if($admin->role->name == $role->name) selected @endif>{{$role->name}}</option>

                                            @endforeach
                                        </select>
                                    </div>


                                    <div class="form-group row">
                                        <label class="control-label">Country</label>
                                            <select class="form-control custom-select" data-placeholder="Choose a Category" name="country_id" tabindex="1">

                                                @foreach($countries as $country)

                                                <option value="{{$country->id}}"   @if($admin->country->name == $country->name) selected @endif>{{$country->name}}</option>
                                                @endforeach
                                            </select>
                                    </div>



                                    <div class="form-group row">
                                        <label>Password</label>
                                        <input type="text" class="form-control" name="password">

                                    </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-info"> <i class="fa fa-check"></i>Update Admin</button>
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
</div>
