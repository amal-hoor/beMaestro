
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')



<div class="row">


        <div class="col-lg-3 offset-3" style="margin-top:200px">
                    @if ($video->url)
                    <iframe width='auto' height="200"
                    src="{{$video->url}}" frameborder="0"
                     allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                   </iframe>
                    @endif
        </div>

        <div class="col-lg-6">
            {{-- <div class="card"> --}}
               <div class="card-body">
                    <form action="{{route('videos.update',$video->id)}}" method="POST">
                        @csrf
                        @method('PATCH')
                        <div class="form-body">
                            <h3 class="card-title">Update Video</h3>
                            <hr>

                                    <div class="form-group">
                                        <label class="control-label">الاسم</label>
                                       <input type="text" name="name_ar" class="form-control" value="{{$video->name_ar}}">
                                    </div>

                                    <div class="form-group">
                                            <label class="control-label">Video Name</label>
                                           <input type="text" name="name_en" class="form-control" value="{{$video->name_en}}">
                                    </div>

                                    <div class="form-group">
                                            <label class="control-label">الوصف</label>
                                           <textarea type="text" name="description_ar" class="form-control">{{$video->description_ar}}</textarea>
                                        </div>
    
                                        <div class="form-group">
                                                <label class="control-label">Video Description</label>
                                               <textarea type="text" name="description_en" class="form-control">{{$video->description_en}}</textarea>
                                        </div>
                                    <div class="form-group">
                                        <label class="control-label">Course Name</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a course" name="course_id" tabindex="1">

                                            @foreach($courses as $course)

                                              <option value="{{$course->id}}" @if($video->course->name == $course->name_ar || $video->course->name_en == $course->name_en ) selected @endif >{{$course->name_ar}}</option>

                                            @endforeach
                                        </select>
                                    </div>



                                    <div class="form-group">
                                       <select class="form-control" id="select">
                                                <option value="">Select type</option>
                                                <option value="video">Video</option>
                                                <option value="url">URL</option>
                                        </select>
                                            <div id="input_tag" class="mt-3">

                                            </div>
                                    </div>

                        <div class="form-actions mb-5 ">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>Update Video</button>
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
