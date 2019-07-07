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
            @include('layouts.form-errors')

            <div class="card">
                {{-- <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white">Create Admin</h4>
                </div> --}}
                <div class="card-body p-5">
                    <form action="{{route('client.store')}}" method="POST" enctype="multipart/form-data"  class="form-horizontal form-bordered">
                        @csrf
                        <div class="form-body">
                                <h3 class="card-title">Create Client</h3>
                                <hr>

                            <div class="form-group row">
                                        <label class="control-label">Name</label>
                                        <input type="text" name="name" class="form-control" placeholder="Enter Name" required>
                            </div>


                            <div class="form-group row">
                                        <label class="control-label">Email</label>
                                        <input type="email" name="email" class="form-control" placeholder="someone@yahoo.com" required>

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
                                    <label class="control-label">Mobile</label>
                                    <input type="text" name="mobile" class="form-control" placeholder="Enter Mobile Number" required>
                        </div>


                        <div class="form-actions">
                            <button type="submit" class="btn btn-info"> <i class="fa fa-check"></i> Create Client</button>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Row -->

@include('layouts.footer')


</div>
</div>
