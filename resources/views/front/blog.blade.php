@include('layouts.front_header')

@include('layouts.front_search')

<!-- Header page -->
<div class="header-page">
    <div class="container">
        <div class="header-info">
            <h2> @lang('home.blog') </h2>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
                et dolore
                magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo
                gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
        </div>
    </div>
</div>
<!-- Header page -->

<!-- Training Courses -->
<div class="blog">
    <div class="container">
        <div class="row">
            <!-- Start Block -->
            @foreach($blogs as $blog)
            <div class="col-md-4">
                <div class="blog-block">
                    <img src="{{asset('/images/'.$blog->photo->name)}}" alt="" class="img-responsive">
                    <div class="blog-info">
                        @if(Session('locale')=='ar')
                        <h3> <a href="{{ route('front.blog_details',$blog->id) }}" style="color:#000000">{{ $blog->title_ar }}</a> </h3>
                        <span> {{ $blog->user->name }} </span>
                        <p>
                           {{ str_limit($blog->content_ar,100) }}
                        </p>
                            @else
                            <h3> <a href="{{ route('front.blog_details',$blog->id) }}" style="color:#000000">{{ $blog->title_en }}</a> </h3>
                            <span> {{ $blog->user->name }} </span>
                            <p>
                                {{ str_limit($blog->content_en,100) }}
                            </p>
                            @endif

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


