@include('layouts.front_header')

@include('layouts.front_search')

<!-- Header page -->
<div class="header-page">
    <div class="container">
        <div class="header-info">
            <h2> @lang('home.team') </h2>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                magna aliquyam erat, sed diam voluptua.</p>
        </div>
    </div>
</div>
<!-- Header page -->

<!-- Training Courses -->
<div class="team">
    <div class="container">
        <div class="row">
            <!-- Start Block -->
            @foreach($instructors as $instructor)
            <div class="col-md-4">
                <div class="team-block">
                    <img src="{{ asset('/images/'.$instructor->photo->name) }}" alt="" class="img-fluid mx-auto d-block">
                    <div class="team-info">
                        <h3 class="text-center"> Mr: {{ $instructor->name }} </h3>
                        <p>
                            @if(Session('locale') == 'ar') {{ $instructor->details_ar }} @else {{ $instructor->details_en }} @endif
                        </p>

                    </div>
                </div>
            </div>
            @endforeach
            <!-- End Block -->
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
