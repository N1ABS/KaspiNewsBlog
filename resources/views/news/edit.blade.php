@extends('layouts.layout')
@section('content')
    <form method="POST" action="{{action('NewsController@update',['news'=>$news->id])}}"
          class="form-group col-sm-8"/>
    <p>Добавить Новость</p><br><br>

    <input type="text" class="form-control" name="title" value="{{$news->title}}" placeholder="Заголовок новости"/><br>

    <textarea name="body" class="form-control" placeholder="Текст новости">{{ $news->body }}</textarea><br>

    <input type="date" class="form-control" value="{{$news->date_added}}" placeholder="Дата (дд.мм.гггг)"  name="date_added"/><br>

    <input type="hidden" name="_token" value="{{csrf_token()}}"/>

    <input type="submit" class="btn btn-primary" value="Сохранить">

    </form>
@endsection