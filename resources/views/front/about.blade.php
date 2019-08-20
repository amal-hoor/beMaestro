@include('layouts.front_header')

@include('layouts.front_search')

<!-- Header page -->
<div class="header-page">
    <div class="container">
        <div class="header-info">
            <h2> About </h2>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumeirmod tempor
                magna aliquyam erat, sed diam voluptua.</p>
        </div>
    </div>
</div>
<!-- Header page -->

<!-- About Page -->
<div class="page-about">
    <div class="container about-text">
        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
            et dolore
            magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo
            gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
            gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>

        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
            et dolore
            magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo
            gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
            gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>

        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore
            et dolore
            magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo
            gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
            gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
    </div>
</div>
<!-- About Page -->

<!-- Footer -->
@include('layouts.front_footer')
    @if (session('message'))
        <script>
            Swal.fire(
                '@lang('home.good job')',
                '@lang('home.your contact has been sent')',
            )
        </script>
    @endif
