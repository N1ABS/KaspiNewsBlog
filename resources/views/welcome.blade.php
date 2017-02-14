@extends('layouts.layout')

@section('content')
    <div class="starter-template">
        <h1>Welcome to the admin panel, {{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}!</h1>
        <p class="lead">Go through links above to control the app</p>
    </div>
@endsection