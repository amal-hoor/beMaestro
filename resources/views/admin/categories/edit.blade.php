
   @include('layouts.header')
   @include('layouts.sidebar')
   @include('layouts.navigation')


   <div style="margin-top: 100px;width:50%;margin-right:auto;margin-left:auto">
           @include('flash::message')
   </div>

   <div class="container-fluid">

        <div class="row offset-3">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">

                    <form action="{{route('categories.update',$category->id)}}" method="post">
                     @csrf
                     @method('PATCH')
                        <div class="form-group">
                                <label for="name_ar">الفئه</label>
                                <input type="text" name="name_ar" class="form-control" value="{{$category->name_ar}}">
                                <label for="name">Category Name:</label>
                                <input type="text" name="name_en" class="form-control" value="{{$category->name_en}}">
                        </div>

                        <div class="form-group">
                           <select name="category_id" class="form-control">
                               <option value="" selected>Select Parent</option>
                              @foreach($categories as $cat)
                                    <option value="{{$cat->id}}" @if(isset($category->category_id)) @if($category->category_id == $cat->id) selected @endif  @endif>{{$cat->name_ar}}</option>
                                    <option value="{{$cat->id}}" @if(isset($category->category_id)) @if($category->category_id == $cat->id) selected @endif  @endif>{{$cat->name_en}}</option>
                               @endforeach
                           </select>
                        </div>
                           <button type="submit" class="btn btn-info">Update Category</button>
                    </form>

                    </div>
                </div>
            </div>

        @include('layouts.footer')
