@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')



<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">Table Layout</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item">pages</li>
                <li class="breadcrumb-item active">Table Layout</li>
            </ol>
        </div>
        <div>
            <button class="right-side-toggle waves-effect waves-light btn-inverse btn btn-circle btn-sm pull-right m-l-10"><i class="ti-settings text-white"></i></button>
        </div>
    </div>



    <div class="row">

            <div class="col-lg-8 offset-3">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table color-table success-table">
                                <thead>
                                        <tr>
                                            <th>Author</th>
                                            <th>Photo</th>
                                            <th>title</th>
                                            <th>Content</th>
                                            <th>Status</th>
                                            <th>View Comments</th>
                                            <th>Edit Blog</th>
                                            <th>Delete Blog</th>
                                        </tr>

                                </thead>
                                <tbody>
                                    @foreach($blogs as $blog)
                                            <tr>
                                                <td>{{$blog->author_id}}</td>
                                                <td>{{$blog->photo_id}}</td>
                                                <td>{{$blog->title}}</td>
                                                <td>{{$blog->content}}</td>
                                                <td>{{$blog->status}}</td>
                                                <td><a href="#">view comments</a></td>
                                                <td><a href="{{route('blog.edit',$blog->id)}}">Edit</a></td>
                                                <td>
                                                    <form action="{{route('blog.delete',$blog->id)}}" method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button class="btn btn-link" type="submit">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

    </div><!-- row -->

</div><!-- container_fluid -->






@include('layouts.footer')
