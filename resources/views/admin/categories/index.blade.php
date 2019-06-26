
@include('layouts.header')
@include('layouts.sidebar')
@include('layouts.navigation')


<div style="margin-top: 100px;width:50%;margin-right:auto;margin-left:auto">
        @include('flash::message')
</div>

<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->


    <div class="row offset-3">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">

                    <form action="{{route('categories.store')}}" method="post">
                     @csrf
                        <div class="form-group">
                           <label for="name">اسم الفئه</label>
                           <input type="text" name="name_ar" class="form-control">
                        </div>
                        <div class="form-group">
                           <label for="name">Category Name:</label>
                           <input type="text" name="name_en" class="form-control">
                        </div>

                        <div class="form-group">
                           <select name="category_id" class="form-control">
                              @foreach($categories as $category)
                                <option value="{{$category->id}}">{{$category->name_en}}</option>
                               @endforeach
                           </select>
                        </div>
                           <button type="submit" class="btn btn-info">Create Category</button>
                    </form>

                    </div>
                </div>
            </div>





            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table color-table success-table">
                                <thead>
                                        <tr>
                                            <th>الفئه</th>
                                            <th>Category Name</th>
                                            <th>Edit Category</th>
                                            <th>Delete Category</th>
                                        </tr>

                                </thead>
                                <tbody>
                                    @foreach($categories as $category)
                                            <tr>
                                                <td>{{$category->name_ar}}</td>
                                                <td>{{$category->name_en}}</td>
                                            <td><a href="{{route('categories.edit',$category->id)}}">Edit</a></td>
                                                <td>
                                                    <form action="{{route('categories.delete',$category->id)}}" method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button class="btn btn-link" type="submit">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

    </div><!-- row -->

</div><!-- container_fluid -->






@include('layouts.footer')
