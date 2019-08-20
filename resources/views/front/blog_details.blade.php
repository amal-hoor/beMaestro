@include('layouts.front_header')

@include('layouts.front_search')

<div class="container blog-name-image">
    <img src="{{ asset('/images/'.$blog->photo->name) }}" alt="blog-name" />
</div>
<!-- About Page -->
<div class="blog__name">
    <div class="container blog-text">
        <p>@if(Session('locale') == 'ar') {{ $blog->content_ar }} @else {{ $blog->content_en }} @endif</p>
    </div>
</div>
<!-- About Page -->
@include('layouts.front_footer')

@if (session('message'))
    <script>
        Swal.fire(
            '@lang('home.good job')',
            '@lang('home.your contact has been sent')',
        )
    </script>
@endif
