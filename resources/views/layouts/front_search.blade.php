<!-- Header search -->
<div class="header-search text-center">
    <form action="{{ route('front.courses.category') }}" class="form-inline">
        @if(Session('locale') == 'ar')
            <div class="form-group">
                <input type="text" name="name_ar" class="form-control"  placeholder="@lang('home.search')">
            </div>
        @else
            <div class="form-group">
                <input type="text" name="name_en" class="form-control"  placeholder="@lang('home.search')">
            </div>
        @endif
        <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
    </form>
</div>
<!-- Header search -->