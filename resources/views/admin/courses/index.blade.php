@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')

<div style="margin-top: 100px;width:50%;margin-right:auto;margin-left:auto">
        @include('flash::message')
</div>


<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->


    <div class="row">

            <div class="col-lg-8 offset-3">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table color-table success-table">
                                <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Instructor</th>
                                            <th>Details</th>
                                            <th>Price</th>
                                            <th>Hours</th>
                                            <th>View Comments</th>
                                            <th>Edit course</th>
                                            <th>Delete course</th>
                                        </tr>

                                </thead>
                                <tbody>
                                         @foreach ($courses as $course)


                                            <tr>
                                                <td>{{$course->name}}</td>
                                                <td>{{$course->instructor->name}}</td>
                                                <td>{{$course->details}}</td>
                                                <td>{{$course->price}}</td>
                                                <td>{{$course->hours}}</td>
                                                <td><a href="{{route('coursecomments.show',$course->id)}}">view comments</a></td>

                                                <td><a href="{{route('course.edit',$course->id)}}">Edit</a></td>
                                                <td>
                                                       <form action="{{route('course.delete',$course->id)}}" method="post">
                                                            @csrf
                                                            @method('DELETE')
                                                            <input type="submit" value="Delete" class="btn btn-link">
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




