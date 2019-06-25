
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')



<div class="row">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('videos.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="form-body">
                            <h3 class="card-title">Create Video</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">الاسم</label>
                                        <input type="text" name="name_ar" class="form-control">
                                    </div>
                                    <div class="form-group">
                                            <label class="control-label">Video Name</label>
                                            <input type="text" name="name_en" class="form-control">
                                        </div>
                                </div>
                            </div>
                            <!--/row-->

                            <div class="row p-t-20">
                                    <div class="col-md-8">
                                            <div class="form-group">
                                                    <label class="control-label">الوصف</label>
                                                    <input type="text" name="description_ar" class="form-control">
                                                </div>
                                        <div class="form-group">
                                            <label class="control-label">Details</label>
                                            <input type="text" name="description_en" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->

                             <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Course Name</label>
                                        <select class="form-control custom-select" name="course_id" tabindex="1">

                                            @foreach($courses as $course)

                                              <option value="{{$course->id}}">{{$course->name_en}}</option>
                                              <option value="{{$course->id}}">{{$course->name_ar}}</option>

                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                    <div class="row mb-2">
                        <div class="col-md-8">

                            <select class="form-control" id="select">
                                    <option value="">Select type</option>
                                    <option value="video">Video</option>
                                    <option value="url">URL</option>
                            </select>
                                <div id="input_tag" class="mt-3">

                                </div>
                        </div>
                    </div>

                        <div class="form-actions mb-5 ">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>Store Video</button>
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

<script>
        $("#select").change(function(){
            if($(this).val() == 'url'){
                $("#input_tag").html('<input type="text" name="url" class="form-control">');
            }else{
                $("#input_tag").html('<input type="file" name="path" class="form-control">');
            }
        })
</script>
