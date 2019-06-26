
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
                                        <label class="control-label"> الاسم </label>
                                        <input type="text" name="name_ar" class="form-control" placeholder="ادخل الاسم">
                                    </div>
                                    <div class="form-group">
                                            <label class="control-label">Name</label>
                                            <input type="text" name="name_en" class="form-control" placeholder="Enter Name">
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
                                        <label class="control-label">التفاصيل</label>
                                        <textarea name="details_ar" class="form-control" rows="3" placeholder="ادخل التفاصيل"></textarea>

                                    </div>

                                    <div class="form-group">
                                            <label class="control-label">Details</label>
                                            <textarea name="details_en" class="form-control" rows="3" placeholder="Enter Details"></textarea>

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
                                            <label class="control-label">Category</label>
                                            <select name="category_id" class="form-control">

                                                @foreach ($categories as $category)
                                                  <option value="{{$category->id}}" class="form-control">{{$category->name_en}}</option>
                                                @endforeach

                                            </select>

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
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                        <label class="control-label">Videos Number</label>
                                        <input id="videos_number" type="number" name="videos_number" class="form-control">
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-8">
                                   <div class="form-group">
                                        <div id="videos-data">
                                              {{-- video data --}}
                                        </div>
                                    </div>
                            </div>
                            <!--/span-->
                        </div>
                        <!--/row-->

                        <div class="form-actions">
                            <button type="submit" class="btn btn-success mb-4"> <i class="fa fa-check"></i>Create Course</button>
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
        $("#videos_number").change(function(){
           var i = $(this).val();
           var x;
           for(x=0;x<i;x++){
               $("#videos-data").append('<div class="form-group"><label class="control-label">الاسم'+parseInt(x+1)+'</label><input type="text" name="video_name_ar[]" placeholder="الاسم" class="form-control"></div><div class="form-group"><label class="control-label">Video Name '+parseInt(x+1)+'</label><input type="text" name="video_name_en[]" placeholder="Video Name" class="form-control"></div><div class="form-group"><label class="control-label">الوصف'+ parseInt(x+1) +'</label><textarea class="form-control" name="video_description_ar[]" placeholder="الوصف"></textarea> </div><div class="form-group"><label class="control-label">Video Description '+ parseInt(x+1) +'</label><textarea class="form-control" name="video_description_en[]" placeholder="Video Description"></textarea> </div><div class="form-group"><label class="control-label">Video URL '+ parseInt(x+1) +'</label>  <input type="text" name="video_url[]" class="form-control"> </div><hr>');
           }
        });
</script>



