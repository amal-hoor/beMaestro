@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')






<div class="row">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                    <form action="{{route('blog.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-body">
                            <h3 class="card-title">Blog Info</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">العنوان</label>
                                        <input type="text" name="title_ar" class="form-control" placeholder="ادخل العنوان">
                                        <label class="control-label">Title</label>
                                        <input type="text" name="title_en" class="form-control" placeholder="Enter Title English">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

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
                                        <label class="control-label">المحتوي</label>
                                        <textarea name="content_ar" class="form-control" rows="3" placeholder="ادخل المحتوي"></textarea>
                                        <label class="control-label">Content</label>
                                        <textarea name="content_en" class="form-control" rows="3" placeholder="Enter Content English"></textarea>

                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Author</label>
                                        <input type="text" class="form-control" name="author_id">
                                    </div>
                                </div>
                                <!--/span-->
                           </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-success mb-2"> <i class="fa fa-check"></i> Create Blog</button>
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








