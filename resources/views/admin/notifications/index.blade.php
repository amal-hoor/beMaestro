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
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <h3 class="">All Notifications</h3>
                            <hr>
                        <thead class="table-primary">
                                <thead>
                                        <tr>
                                            <th>Notified</th>
                                            <th>Title Ar</th>
                                            <th>Title En</th>
                                            <th>Body Ar</th>
                                            <th>Body En</th>

                                        </tr>

                                </thead>
                                <tbody>
                                         @foreach ($notifications as $notification)

                                            <tr>

                                                <td>
                                                    @foreach ($notification->users as $user)

                                                            <li class="list-group-item border-0">{{$user->name}}</li>


                                                    @endforeach
                                                </td>
                                                <td>{{$notification->title_ar}}</td>
                                                <td>{{$notification->title_en}}</td>
                                                <td>{{$notification->body_ar}}</td>
                                                <td>{{$notification->body_en}}</td>
                                         @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


@include('layouts.footer')
</div><!-- row -->

</div><!-- container_fluid -->




