@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')



<div class="page-wrapper">

        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
 <div class="container-fluid">

    <div class="row">
        
         
        <div class="col-12">
                @include('flash::message')
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                            <thead class="table-primary">
                                        <tr>
                                            <th>الاسم</th>
                                            <th>Name</th>
                                            <th>الوصف</th>
                                            <th>Description</th>
                                            <th>Course Name</th>
                                            <th>Videos</th>
                                            <th>Edit</th>
                                            <th>Delete</th>

                                        </tr>

                                </thead>
                                <tbody>
                                    @foreach($videos as $video)
                                            <tr>
                                            <td>{{$video->name_ar}}</td>
                                            <td>{{$video->name_en}}</td>
                                            <td>{{$video->description_ar}}</td>
                                            <td>{{$video->description_en}}</td>
                                            <td>{{$video->course->name_en}}</td>
                                            <td>
                                                @if($video->url)
                                                <iframe width="200" height="200"
                                                 src="{{$video->url}}" frameborder="0"
                                                  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                                                </iframe>
                                                @endif
                                            </td>

                                            <td><a href="{{route('videos.edit',$video->id)}}">Edit</a></td>

                                                <td>
                                                    <form action="{{route('videos.delete',$video->id)}}" method="POST">
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
    </div>

    </div><!-- row -->

</div><!-- container_fluid -->






@include('layouts.footer')



