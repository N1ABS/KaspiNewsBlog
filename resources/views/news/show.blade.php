@extends('layouts.layout')
@section('content')
    <div class="col-sm-10">
        <a href="{{ url('/news') }}">Назад</a>
        <h1>{{ $news['title'] }}</h1>
        <h6 style="color:grey">{{ $news['date_added'] }}</h6>
        <br>
        <div>
            {{ $news['body'] }}
        </div>
    </div>
@endsection