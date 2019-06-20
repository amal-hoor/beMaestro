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
                                            <th>Role</th>
                                            <th>Country</th>
                                            <th>Email</th>
                                            <th>Edit Admin</th>
                                            <th>Delete Admin</th>
                                        </tr>

                                </thead>
                                <tbody>
                                    @foreach($admins as $admin)
                                            <tr>
                                                <td>{{$admin->name}}</td>
                                                <td>{{$admin->role->name}}</td>
                                                <td>{{$admin->country->name}}</td>
                                                <td>{{$admin->email}}</td>
                                                <td><a href="{{route('admin.edit',$admin->id)}}">Edit</a></td>
                                                <td>
                                                    <form action="{{route('admin.delete',$admin->id)}}" method="POST">
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
