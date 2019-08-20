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

                    <form action="{{ route('paymentmethods.update',$payment->id) }}" method="POST" enctype="multipart/form-data" class="form-horizontal form-bordered">
                        @csrf
                        @method('PATCH')
                        <div class="form-body">
                            <h3 class="card-title">Update Payment Method</h3>
                            <hr>


                            <div class="form-group row">
                                <label class="control-label">الاسم</label>
                                <input type="text" name="name_ar" class="form-control" placeholder="ادخل الاسم" value="{{$payment->name_ar}}">
                            </div>
                            <div class="form-group row">
                                <label class="control-label">Name</label>
                                <input type="text" name="name_en" class="form-control" placeholder="Enter Name English" value="{{$payment->name_en}}">
                            </div>

                            <div class="form-group row">
                                <label class="control-label">الوصف</label>
                                <textarea name="description_ar" class="form-control" rows="3" placeholder="ادخل الوصف">{{$payment->description_ar}}</textarea>
                            </div>
                            <div class="form-group row">
                                <label class="control-label">Description</label>
                                <textarea name="description_en" class="form-control" rows="3" placeholder="Enter Description English">{{$payment->description_en}}</textarea>
                            </div>

                            <div class="form-group row">
                                <label>نوع الدفع</label>
                                <select name="type_ar" class="form-control">
                                    <option value="رقم تليفون" @if($payment->type_ar=='رقم تليفون') selected @endif>رقم تليفون</option>
                                    <option value="حساب بنكي" @if($payment->type_ar=='حساب بنكي') selected @endif>حساب بنكي</option>
                                </select>
                            </div>

                            <div class="form-group row">
                                <label>Type of Payment</label>
                                <select name="type_en" class="form-control">
                                    <option value="mobile" @if($payment->type_en=='mobile') selected @endif>Mobile</option>
                                    <option value="bankaccount" @if($payment->type_en=='bankaccount') selected @endif>BankAccount</option>
                                </select>
                            </div>

                            <div class="form-group row">
                                <label class="control-label">Number</label>
                                <input type="text" class="form-control" name="number" placeholder="enter number" value="{{$payment->numbers}}">
                            </div>

                            <div class="form-actions">
                                <button type="submit" class="btn btn-info mb-2"> <i class="fa fa-check"></i> Update Payment Method</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
@endsection


