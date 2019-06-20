@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')






<div class="row">
        <div class="col-lg-8 offset-3">
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
                                        <label class="control-label">Title</label>
                                    <input type="text" name="title" class="form-control" value="{{$blog->title}}">
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
                                        <label class="control-label">Content</label>
                                    <textarea name="content" class="form-control" rows="3">{{$blog->content}}</textarea>

                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->

                            <div class="row">
                                 <div class="col-md-8">
                                    <label class="control-label">Status</label>
                                        <select class="form-control custom-select"  name="status" tabindex="1">
                                               @if ($blog->status == 0)
                                               <option value="0">Un Approved</option>
                                               @else
                                               <option value="1">Approved</option>
                                               @endif

                                               <option value="1">Approved</option>
                                               <option value="0">Un Approved</option>
                                        </select>
                                </div>
                            </div>


                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Author</label>
                                        <input type="text" class="form-control" name="author_id" value={{$blog->user ? $blog->user->name : ""}}>
                                    </div>
                                </div>
                                <!--/span-->
                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>Update Blog</button>
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







