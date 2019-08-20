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
            @foreach($courses as $course)
            <div class="col-md-4">
                <div class="course-block">
                    <img src="{{asset('/images/'.$course->photo->name)}}" alt="" class="img-responsive">
                    <div class="course-info">
                        <h3><a style="color:#000" href="{{ route('front.courses.show',$course->id) }}"> @if(Session('locale')=='ar'){{ $course->name_ar }} @else {{ $course->name_en }} @endif</a></h3>
                        <span> {{ $course->instructor->name }} </span>
                        <p>
                            @if(Session('locale')=='ar')
                              {{ $course->details_ar }}
                            @endif
                            @if(Session('locale')=='en')
                                    {{ $course->details_en }}
                                @endif
                        </p>
                        <hr />
                        <h4> @if($course->is_free==1) @lang('home.free') @else {{ $course->price }} @lang('home.le') @endif</h4>
                        <h4> @if($course->is_free == 0)<button class="btn btn-info btn-block"> @lang('home.buy') </button> @endif</h4>
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
