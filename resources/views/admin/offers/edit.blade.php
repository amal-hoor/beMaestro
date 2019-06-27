
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')




<div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
    <div class="container-fluid">
        <div class="row">
           <div class="col-lg-8 m-auto">
              <div class="card">
                <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white">Update Offer</h4>
                </div>
                <div class="card-body p-5">

                <form action="{{route('offers.update',$offer->id)}}"  method="POST" enctype="multipart/form-data" class="form-horizontal form-bordered">

                        @csrf
                        @method('PATCH')
                        <div class="form-body">

                                    <div class="form-group row">
                                        <label class="control-label">Course Name</label>
                                        <select name="course_id" class="form-control">
                                            @foreach ($courses as $course)

                                                 <option value="{{$course->id}}" @if ($course->name_en == $offer->course->name_en) selected @endif>{{$course->name_en}}</option>

                                            @endforeach

                                        </select>
                                    </div>

                                        <div class="form-group row">
                                            <label>New Price</label>
                                           <input type="text" class="form-control" name="newprice" value="{{$offer->newprice}}">
                                        </div>





                        <div class="form-actions">
                            <button type="submit" class="btn btn-info"> <i class="fa fa-check"></i>Update Offer</button>
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




    </div>

