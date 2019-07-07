
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
                <div class="card-body p-5">

                <form action="{{route('videos.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal form-bordered">
                        @csrf

                        <div class="form-body">
                                <h3 class="card-title">Create Video</h3>
                                <hr>


                                    <div class="form-group row">
                                        <label class="control-label">الاسم</label>
                                        <input type="text" name="name_ar" class="form-control" required>
                                    </div>
                                    <div class="form-group row">
                                            <label class="control-label">Video Name</label>
                                            <input type="text" name="name_en" class="form-control">
                                    </div>

                                    <div class="form-group row">
                                                    <label class="control-label">الوصف</label>
                                                    <input type="text" name="description_ar" class="form-control" required>
                                    </div>

                                    <div class="form-group row">
                                            <label class="control-label">Details</label>
                                            <input type="text" name="description_en" class="form-control" required>
                                    </div>

                                    <div class="form-group row">
                                        <label class="control-label">Course Name</label>
                                        <select class="form-control custom-select" name="course_id" tabindex="1">

                                            @foreach($courses as $course)

                                              <option value="{{$course->id}}">{{$course->name_en}}</option>
                                              <option value="{{$course->id}}">{{$course->name_ar}}</option>

                                            @endforeach
                                        </select>
                                    </div>


                                    <div class="form-group row">

                                        <select class="form-control" id="select">
                                                <option value="">Select type</option>
                                                <option value="video">Video</option>
                                                <option value="url">URL</option>
                                        </select>
                                    </div>
                                            <div id="input_tag" class="mt-3 form-group row">

                                            </div>


                        <div class="form-actions mb-5 ">
                            <button type="submit" class="btn btn-info"> <i class="fa fa-check"></i>Store Video</button>
                        </div>




                        <script>
                                $("#select").change(function(){
                                    if($(this).val() == 'url'){
                                        $("#input_tag").html('<input type="text" name="url" class="form-control">');
                                    }else{
                                        $("#input_tag").html('<input type="file" name="path" class="form-control">');
                                    }
                                })
                        </script>
                  </form>
              </div>
           </div>
       </div>

   </div><!-- Row -->
</div>

@include('layouts.footer')


