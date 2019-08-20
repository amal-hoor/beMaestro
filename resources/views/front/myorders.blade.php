@include('layouts.front_header')

@include('layouts.front_search')

<!-- Header page -->
<div class="header-page">
    <div class="container">
        <div class="header-info">
            <h2> Training Courses </h2>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                magna aliquyam erat, sed diam voluptua.
            </p>
        </div>
    </div>
</div>
<!-- Header page -->

<!-- Training Courses -->
<div class="training__courses">
    <div class="container">
        <div class="row">
            <!-- Start Block -->
            @foreach($mycourses as $mycourse)
                <div class="col-md-4">
                    <div class="course-block">
                        <img src="{{asset('/images/'.$mycourse->photo->name)}}" alt="" class="img-responsive">
                        <div class="course-info">
                            <h3><a style="color:#000" href="{{ route('front.myorder.show',$mycourse->id) }}"> @if(Session('locale')=='ar') {{ $mycourse->name_ar }} @else {{ $mycourse->name_en }} @endif</a></h3>
                            <span> {{ $mycourse->instructor->name }} </span>
                            <p>
                                @if(Session('locale')=='ar') {{ $mycourse->details_ar }} @else {{ $mycourse->details_en }} @endif
                            </p>
                            <hr />
                            <h4> @if($mycourse->is_free==1) @lang('home.free') @else {{ $mycourse->price }} @lang('home.le') @endif</h4>

                        </div>
                    </div>
                </div>
                <!-- End Block -->
            @endforeach
        </div>

    </div>
</div>
<!-- Training Course -->


@include('layouts.front_footer')

@if (session('message'))
    <script>
        Swal.fire(
            '@lang('home.good job')',
            '@lang('home.your contact has been sent')',
        )
    </script>
@endif
