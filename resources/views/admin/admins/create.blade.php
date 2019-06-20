@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')


<div class="row">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('admin.store')}}" method="POST">
                        @csrf
                        <div class="form-body">
                            <h3 class="card-title">Admin Info</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Name</label>
                                        <input type="text" name="name" class="form-control" placeholder="Enter Name">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Email</label>
                                        <input type="email" name="email" class="form-control" placeholder="someone@yahoo.com">
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
                                              <option value="{{$role->id}}">{{$role->name}}</option>
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
                                              <option value="{{$country->id}}">{{$country->name}}</option>
                                            @endforeach
                                        </select>
                                </div>
                            </div>


                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="text" class="form-control" name="password">
                                    </div>
                                </div>
                                <!--/span-->
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Create Admin</button>
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
