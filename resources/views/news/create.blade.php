@extends('layouts.layout')
@section('content')
    <form method="POST" action="{{action('NewsController@store')}}" class="form-group col-sm-8"/>
    <p>Добавить Новость</p><br><br>

        <input type="text" class="form-control" name="title" placeholder="Заголовок новости"/><br>

        <textarea name="body" class="form-control" placeholder="Текст новости"></textarea><br>

        <input type="date" class="form-control" placeholder="Дата (дд.мм.гггг)"  name="date_added"/><br>

        <input type="hidden" name="_token" value="{{csrf_token()}}"/>

        <input type="submit" class="btn btn-primary" value="Сохранить">

    </form>
@endsection