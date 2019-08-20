@extends('layouts.admin')

@section('content')

    <div class="row">

        <div class="col-12">
            @include('flash::message')
            <div class="card">
                <div class="card-body">
                    @include('flash::message')
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="table-primary">

                            <tr>
                                <th>الاسم</th>
                                <th>name</th>
                                <th>الوصف</th>
                                <th>description</th>
                                <th>النوع</th>
                                <th>Type</th>
                                <th>Number</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>

                            </thead>
                            <tbody>
                            @foreach($Payments as $payment)
                                <tr>
                                    <td>{{$payment->name_ar}}</td>
                                    <td>{{$payment->name_en}}</td>
                                    <td>{{str_limit($payment->description_ar,30)}}</td>
                                    <td>{{str_limit($payment->description_en,30)}}</td>
                                    <td>{{$payment->type_ar}}</td>
                                    <td>{{$payment->type_en}}</td>
                                    <td>{{$payment->numbers}}</td>

                                    <td><a href="{{ route('paymentmethods.edit',$payment->id) }}">Edit</a></td>
                                    <td>
                                        <form action="{{ route('paymentmethods.delete',$payment->id) }}" method="POST">
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
    </div>

@endsection


