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
                                            <th>Notified</th>
                                            <th>Title</th>
                                            <th>Body</th>

                                        </tr>

                                </thead>
                                <tbody>
                                         @foreach ($notifications as $notification)

                                            <tr>

                                                <td>
                                                    @foreach ($notification->users as $user)
                                                        <li>{{$user->name}}</li>
                                                    @endforeach
                                                </td>
                                                <td>{{$notification->title}}</td>
                                                <td>{{$notification->body}}</td>
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




