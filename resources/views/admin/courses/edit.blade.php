
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
                {{-- <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white">Update Course</h4>
                </div> --}}
                <div class="card-body p-5">
                    <form action="{{route('course.update',$course->id)}}" enctype="multipart/form-data" method="POST" class="form-horizontal form-bordered">

                        @csrf
                        @method('PATCH')
                        <div class="form-body">
                                <h3 class="card-title">Update Courae</h3>
                                <hr>


                                    <div class="form-group row">
                                        <label class="control-label">الاسم</label>
                                        <input type="text" name="name_ar" class="form-control" value="{{$course->name_ar}}">
                                     </div>
                                    <div class="form-group row">
                                        <label class="control-label">Name</label>
                                       <input type="text" name="name_en" class="form-control" value="{{$course->name_en}}">
                                    </div>



                                    <div class="form-group row">
                                            <label>Instructor</label>
                                        <input type="text" class="form-control" name="instructor_id" value="{{$course->instructor->name}}">
                                        </div>

                                    </div>

                                    <div class="form-group row">
                                        <label class="control-label">Photo</label>
                                        <input type="file" name="photo_id" class="form-control">
                                 </div>



                                 <div class="form-group row">
                                        <label class="control-label">التفاصيل</label>
                                    <textarea name="details_ar" class="form-control" rows="3">{{$course->details_ar}}</textarea>

                                </div>
                                <div class="form-group row">
                                            <label class="control-label">Details</label>
                                        <textarea name="details_en" class="form-control" rows="3">{{$course->details_en}}</textarea>

                                </div>

                                <div class="form-group row">
                                            <label class="control-label">Price</label>
                                        <input type="text" name="price" class="form-control" value="{{$course->price}}">

                               </div>


                               <div class="form-group row">
                                                <label class="control-label">Hours</label>
                                                <input type="text" name="hours" class="form-control" value="{{$course->hours}}">

                               </div>



                        <div class="form-actions">
                            <button type="submit" class="btn btn-info mb-2"> <i class="fa fa-check"></i>update Course</button>
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




@include('layouts.footer')
</div>
<!-- Row -->
</div>








