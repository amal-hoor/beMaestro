@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')





<div class="row">
        <div class="col-lg-2 offset-2" style="margin-top:100px">
           <img src="/images/{{$blog->photo->name}}" alt="" class="img-responsive">
        </div>
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <form action="{{route('blog.update',$blog->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PATCH')
                        <div class="form-body">
                            <h3 class="card-title">Blog Info</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label"> العنوان </label>
                                    <input type="text" name="title_ar" class="form-control" value="{{$blog->title_ar}}">
                                    <label class="control-label mt-1">Title English</label>
                                    <input type="text" name="title_en" class="form-control" value="{{$blog->title_en}}">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Photo</label>
                                        <input type="file" name="photo_id" class="form-control">

                                          <img src="{{ asset($blog->getCover()) }}" height="70" class="mt-2" alt="">

                                 </div>
                            </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">المحتوي </label>
                                    <textarea name="content_ar" class="form-control" rows="3">{{$blog->content_ar}}</textarea>
                                    <label class="control-label">Content English</label>
                                    <textarea name="content_en" class="form-control" rows="3">{{$blog->content_en}}</textarea>

                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->


                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Author</label>
                                        <input type="text" class="form-control" name="author_id" value={{$blog->user->name}}>
                                    </div>
                                </div>
                                <!--/span-->
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-success mb-2"> <i class="fa fa-check"></i>Update Blog</button>
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







