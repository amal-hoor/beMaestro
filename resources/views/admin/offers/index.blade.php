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
                <div class="card">
                        <div class="p-2">
                                @include('flash::message')
                        </div>

                    <div class="card-body">
                        <div class="table-responsive">

                            <table class="table">
                            <thead class="table-primary">
                                        <tr>
                                            <th>Id</th>
                                            <th>Course Name</th>
                                            <th>Course Old Price</th>
                                            <th>Course New Price</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>

                                </thead>
                                <tbody>
                                         @foreach ($offers as $offer)


                                            <tr>
                                                <td>{{$offer->id}}</td>
                                                <td>{{$offer->course->name_en}}</td>
                                                <td>{{$offer->course->price}}</td>
                                                <td>{{$offer->newprice}}</td>

                                            <td><a href="{{route('offers.edit',$offer->id)}}">Edit</a></td>
                                                <td>
                                                <form action="{{route('offers.delete',$offer->id)}}" method="post">
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




</div>
