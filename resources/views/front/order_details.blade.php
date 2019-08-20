@include('layouts.front_header')

@include('layouts.front_search')

<!-- Header page -->
<div class="header-page">
    <div class="container">
        <div class="header-info">
            <h2> Name Script </h2>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                magna aliquyam erat, sed diam voluptua.</p>
        </div>
    </div>
</div>
<!-- Header page -->

<!-- Designe Page -->
<div class="page-script">
    <div class="container script-text">
        <div class="row">
            <div class="col-md-6">
                <img src="{{ asset('/images/'.$course->photo->name) }}" alt="script_name" class="img-fluid" />
            </div>

            <div class="col-md-6 script-right">
                @if(Session('locale') == 'ar')
                        <h3> {{ $course->name_ar }} </h3>
                        <p>{{ $course->details_ar }}</p>
                    @else
                        <h3> {{ $course->name_en }} </h3>
                        <p>{{ $course->details_en }}</p>
                    @endif
            </div>

            <div class="col-md-6 script-left">
                <p> @lang('home.course price'): {{ $course->price }} LE</p>
                <p>@lang('home.course hours'): {{ $course->hours }}</p>
                <p>@lang('home.course instructor'): {{ $course->instructor->name }}</p>
                <div class="row">
                    <div class="col-5">
                        <small>@lang('home.from'): <span class="text-success">{{ $course->from_date }}</span></small>
                    </div>
                    <div class="col-5">
                        <small>@lang('home.to'): <span class="text-danger">{{ $course->to_date }}</span></small>
                    </div>
                </div>
                <div class="mt-4">
                    <h2 style="text-decoration: underline"> @lang('home.order details') </h2>
                    <p>@lang('home.course status'): @if($order->status == 1) <span class="text-success"> @lang('home.approved') </span> @else <span class="text-danger"> @lang('home.un approved') </span> @endif</p>
                </div>
            </div>

            <div class="col-md-6 script-right-btn text-center">
                <button class="btn"> @lang('home.free download') <i class="fas fa-download"></i> </button>
            </div>
        </div>
    </div>
</div>
<!-- Designe Page -->
@include('layouts.front_footer')

@if (session('message'))
    <script>
        Swal.fire(
            '@lang('home.good job')',
            '@lang('home.your contact has been sent')',
        )
    </script>
@endif
