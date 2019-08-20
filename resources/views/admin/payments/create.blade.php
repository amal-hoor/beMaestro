@extends('layouts.admin')

@section('content')
    <div class="row">
        <div class="col-lg-10 m-auto">
            @include('layouts.form-errors')
            <div class="card">
                {{-- <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white">Create Blog</h4>
                </div> --}}
                <div class="card-body p-5">

                    <form action="{{route('paymentmethods.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal form-bordered">
                        @csrf
                        <div class="form-body">
                            <h3 class="card-title">Create Payment Method</h3>
                            <hr>


                            <div class="form-group row">
                                <label class="control-label">الاسم</label>
                                <input type="text" name="name_ar" class="form-control" placeholder="ادخل الاسم" required>
                            </div>
                            <div class="form-group row">
                                <label class="control-label">Name</label>
                                <input type="text" name="name_en" class="form-control" placeholder="Enter Name English" required>
                            </div>

                            <div class="form-group row">
                                <label class="control-label">الوصف</label>
                                <textarea name="description_ar" class="form-control" rows="3" placeholder="ادخل الوصف"></textarea>
                            </div>
                            <div class="form-group row">
                                <label class="control-label">Description</label>
                                <textarea name="description_en" class="form-control" rows="3" placeholder="Enter Description English"></textarea>
                            </div>

                            <div class="form-group row">
                                <label>نوع الدفع</label>
                                <select name="type_ar" class="form-control">
                                    <option value="رقم تليفون">رقم تليفون</option>
                                    <option value="حساب بنكي">حساب بنكي</option>
                                </select>
                            </div>

                            <div class="form-group row">
                                <label>Type of Payment</label>
                                <select name="type_en" class="form-control">
                                        <option value="mobile">Mobile</option>
                                        <option value="bankaccount">BankAccount</option>
                                </select>
                            </div>

                            <div class="form-group row">
                                <label class="control-label">Number</label>
                                <input type="text" class="form-control" name="number" placeholder="enter number" required>
                            </div>
                            {{--<div class="form-group row">--}}
                                {{--<label class="control-label">Number</label>--}}
                                {{--<input type="text" class="form-control" name="number[]" placeholder="enter number" required>--}}
                            {{--</div>--}}

                            <div class="form-actions">
                                <button type="submit" class="btn btn-info mb-2"> <i class="fa fa-check"></i> Create Payment Method</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
@endsection


