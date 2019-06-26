
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')




<div class="row" style="margin-top:50px">
        <div class="col-lg-8 offset-3">
            <div class="card">

                <div class="card-body">
                <form action="{{route('offers.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-body">


                            <div class="row p-t-20">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label class="control-label">Course Name</label>
                                        <select name="course_id" class="form-control">
                                            @foreach ($courses as $course)

                                               <option value="{{$course->id}}">{{$course->name_en}}</option>

                                            @endforeach

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

                            <div class="row p-t-20">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label>New Price</label>
                                            <input type="text" class="form-control" name="newprice">
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>




                        <div class="form-actions">
                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i>Create Offer</button>
                        </div>


                        @if($errors->any())
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $error)

                                       <p> {{$error}} </p>

                                @endforeach
                            </div>

                        @endif
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Row -->



@include('layouts.footer')






