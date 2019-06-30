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
                                            <th>Instructor</th>
                                            <th>Category</th>
                                            <th>التفاصيل</th>
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
                                                <td>{{$course->name_ar}}</td>
                                                <td>{{$course->name_en}}</td>
                                                <td>{{$course->instructor->name}}</td>
                                                <td>{{$course->category ? $course->category->name : 'unCategorized' }}</td>
                                                <td>{{str_limit($course->details_ar,50)}}</td>
                                                <td>{{str_limit($course->details_en,50)}}</td>
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
        </div>

@include('layouts.footer')

</div><!-- row -->

</div><!-- container_fluid -->

