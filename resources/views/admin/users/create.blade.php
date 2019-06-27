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
                    <h4 class="m-b-0 text-white">Create User</h4>
                </div>
                <div class="card-body p-5">
                    <form action="{{route('user.store')}}" method="POST" enctype="multipart/form-data"  class="form-horizontal form-bordered">
                        @csrf
                        <div class="form-body">

                            <div class="form-group row">
                                        <label class="control-label">Name</label>
                                        <input type="text" name="name" class="form-control" placeholder="Enter Name">
                            </div>
                            <!--/row-->


                            <div class="form-group row">
                                        <label class="control-label">Email</label>
                                        <input type="email" name="email" class="form-control" placeholder="someone@yahoo.com">
                            </div>
                            <!--/row-->


                            <div class="form-group row">
                                        <label class="control-label">Roles</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a Category" name="role_id" tabindex="1">

                                            @foreach($roles as $role)
                                              <option value="{{$role->id}}">{{$role->name}}</option>
                                            @endforeach
                                        </select>
                            </div>
                            <!--/row-->


                            <div class="form-group row">
                                    <label class="control-label">Country</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a Category" name="country_id" tabindex="1">

                                            @foreach($countries as $country)
                                              <option value="{{$country->id}}">{{$country->name}}</option>
                                            @endforeach
                                        </select>
                            </div>



                            <div class="form-group row">
                                        <label>Password</label>
                                        <input type="text" class="form-control" name="password">
                           </div>


                           <div class="form-group row">
                                        <label>Status</label>
                                        <select class="form-control custom-select"  name="block" tabindex="1">

                                            <option value="1">un blocked</option>
                                            <option value="0"> blocked</option>

                                        </select>
                          </div>


                                <div class="form-actions mb-5">
                                    <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Create user</button>
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
</div>
