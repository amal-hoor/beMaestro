
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')




<div class="row">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('course.update',$course->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PATCH')
                        <div class="form-body">
                            <h3 class="card-title">course Info</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Name</label>
                                    <input type="text" name="name" class="form-control" value="{{$course->name}}">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

                            <div class="row p-t-20">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label>Instructor</label>
                                        <input type="text" class="form-control" name="instructor_id" value="{{$course->instructor->name}}">
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
                                    <textarea name="details" class="form-control" rows="3">{{$course->details}}</textarea>

                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="control-label">Price</label>
                                        <input type="text" name="price" class="form-control" value="{{$course->price}}">

                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->


                                <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label class="control-label">Hours</label>
                                                <input type="text" name="hours" class="form-control" value="{{$course->hours}}">

                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->




                        <div class="form-actions">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>update Course</button>
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








