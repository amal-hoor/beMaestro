
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
                    <h4 class="m-b-0 text-white">Create Course</h4>
                </div> --}}
                <div class="card-body p-5">
                    <form action="{{route('course.store')}}" enctype="multipart/form-data" method="POST" class="form-horizontal form-bordered">

                        @csrf
                        <div class="form-body">
                                <h3 class="card-title">Create Course</h3>
                                <hr>

                                    <div class="form-group row">
                                        <label class="control-label"> الاسم </label>
                                        <input type="text" name="name_ar" class="form-control" placeholder="ادخل الاسم" required>
                                    </div>
                                    <div class="form-group row">
                                            <label class="control-label">Name</label>
                                            <input type="text" name="name_en" class="form-control" placeholder="Enter Name" required>
                                    </div>



                                    <div class="form-group row">
                                            <label>Instructor</label>
                                            <input type="text" class="form-control" name="instructor_id" required>

                                   </div>

                                   <div class="form-group row">
                                        <label class="control-label">Photo</label>
                                        <input type="file" name="photo_id" class="form-control">
                                   </div>



                                   <div class="form-group row">
                                        <label class="control-label">التفاصيل</label>
                                        <textarea name="details_ar" class="form-control" rows="3" placeholder="ادخل التفاصيل"></textarea>

                                    </div>

                                    <div class="form-group row">
                                            <label class="control-label">Details</label>
                                            <textarea name="details_en" class="form-control" rows="3" placeholder="Enter Details"></textarea>

                                     </div>

                                     <div class="form-group row">
                                            <label class="control-label">Price</label>
                                            <input type="text" name="price" class="form-control" required>

                                    </div>




                                    <div class="form-group row">
                                            <label class="control-label">Category</label>
                                            <select name="category_id" class="form-control">

                                                @foreach ($categories as $category)
                                                  <option value="{{$category->id}}" class="form-control">{{$category->name_en}}</option>
                                                @endforeach

                                            </select>

                                     </div>


                                     <div class="form-group row">
                                                <label class="control-label">Hours</label>
                                                <input type="text" name="hours" class="form-control" required>

                                     </div>

                                     <div class="form-group row">
                                        <label class="control-label">Videos Number</label>
                                        <input id="videos_number" type="number" name="videos_number" class="form-control" required>
                                </div>



                                        <div id="videos-data">
                                              {{-- video data --}}
                                        </div>



                        <div class="form-actions">
                            <button type="submit" class="btn btn-info mb-4"> <i class="fa fa-check"></i>Create Course</button>
                        </div>



    <!-- Row -->




<script>
        $("#videos_number").change(function(){
           var i = $(this).val();
           var x;
           for(x=0;x<i;x++){
               $("#videos-data").append('<div class="form-group row"><label class="control-label">الاسم'+parseInt(x+1)+'</label><input type="text" name="video_name_ar[]" placeholder="الاسم" class="form-control" required></div><div class="form-group row"><label class="control-label">Video Name '+parseInt(x+1)+'</label><input type="text" name="video_name_en[]" placeholder="Video Name" class="form-control" required></div><div class="form-group row"><label class="control-label">الوصف'+ parseInt(x+1) +'</label><textarea class="form-control" name="video_description_ar[]" placeholder="الوصف"></textarea> </div><div class="form-group row"><label class="control-label">Video Description '+ parseInt(x+1) +'</label><textarea class="form-control" name="video_description_en[]" placeholder="Video Description"></textarea> </div><div class="form-group row"><label class="control-label">Video URL '+ parseInt(x+1) +'</label>  <input type="text" name="video_url[]" class="form-control" required> </div><hr>');
           }
        });
</script>
  </form>
                </div>
              </div>
           </div>
         </div>
      </div>
      @include('layouts.footer')
    </div>
</div>



