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
                                                <td>{{$offer->course->name}}</td>
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

    </div><!-- row -->

</div><!-- container_fluid -->






@include('layouts.footer')




