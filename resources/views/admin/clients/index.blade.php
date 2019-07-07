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
                                            <th>Name</th>
                                            <th>Country</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Edit Client</th>
                                            <th>Delete Client</th>
                                        </tr>

                                </thead>
                                <tbody>
                                    @foreach($clients as $client)
                                            <tr>
                                                <td>{{$client->name}}</td>
                                                <td>{{$client->country->name}}</td>
                                                <td>{{$client->email}}</td>
                                                <td>{{$client->mobile}}</td>
                                                <td><a href="{{route('client.edit',$client->id)}}">Edit</a></td>
                                                <td>
                                                    <form action="{{route('client.delete',$client->id)}}" method="POST">
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


@include('layouts.footer')


   </div>

</div>

