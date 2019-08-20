@include('layouts.front_header')

@include('layouts.front_search')

<!-- Header page -->
<div class="header-page">
    <div class="container">
        <div class="header-info">
            <div class="media">
                <img src="{{ asset('images/user_person.png') }}" alt="" class="img-fluid mr-3" />
                <div class="media-body">
                    <h2> {{ auth()->user()->name }} </h2>
                    <p> {{ auth()->user()->email  }} </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Header page -->

<!-- About Page -->
<div class="page-profile">
    <div class="container profile-text">
        <form method="POST" action="{{ route('front.profile.update',auth()->user()->id) }}">
            @csrf
            @method('patch')
            <div class="row">
                <div class="col-md-2">
                    <label for="username"> @lang('home.user name') </label>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="input-group-append">
                        <i class="fas fa-cog"></i>
                    </div>
                    <input type="text" class="form-control" name="name" value="{{ auth()->user()->name }}"/>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <label for="email"> @lang('home.email') </label>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="input-group-append">
                        <i class="fas fa-cog"></i>
                    </div>
                    <input type="email" class="form-control" name="email" value="{{ auth()->user()->email }}"/>

                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <label for="phone"> @lang('home.phone') </label>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="input-group-append">
                        <i class="fas fa-cog"></i>
                    </div>
                    <input type="number" class="form-control" name="phone" value="{{ auth()->user()->phone }}"/>

                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <label for="pass"> @lang('home.password') </label>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="input-group-append">
                        <i class="fas fa-cog"></i>
                    </div>
                    <input type="password" class="form-control" name='password'/>
                </div>
            </div>

            <input type="submit" class="btn btn-info" value="@lang('home.save')" />

        </form>
    </div>
</div>
<!-- About Page -->

@include('layouts.front_footer')

    @if (session('contact'))
        <script>
            Swal.fire(
                '@lang('home.good job')',
                '@lang('home.your account updated successfully')',
            )
        </script>
    @endif

@if (session('message'))
    <script>
        Swal.fire(
            '@lang('home.good job')',
            '@lang('home.your contact has been sent')',
        )
    </script>
@endif

