
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')




<div class="row">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('course.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-body">
                            <h3 class="card-title">course Info</h3>
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
                                            <label>Instructor</label>
                                            <input type="text" class="form-control" name="instructor_id">
                                        </div>
                                    </div>
                                    <!--/span-->
                            </div>

                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Photo</label>
                                        <input type="file" name="photo_id" class="form-control">
                                 </div>
                            </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Details</label>
                                        <textarea name="details" class="form-control" rows="3" placeholder="Enter Details"></textarea>

                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="control-label">Price</label>
                                            <input type="text" name="price" class="form-control">

                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->


                                <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label class="control-label">Hours</label>
                                                <input type="text" name="hours" class="form-control">

                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->




                        <div class="form-actions">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>Create Course</button>
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






