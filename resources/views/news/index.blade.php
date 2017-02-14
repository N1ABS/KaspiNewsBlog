@extends ('layouts.layout')


@section('content')

    @if(Session::has('message'))
        <div class="alert alert-success">
            {{Session::get('message')}}
        </div>

    @endif

    @if (isset($ne))
        {{ $ne }}
    @endif

    <script>

        $('document').ready(function()
        {
            $('.del').click(function()
            {
                parent=$(this).parent().parent();
                id=parent.children().first().html();
                confirm_var=confirm('Удалить Новость? '+id);
                if (!confirm_var) return false;
                $.ajax({
                    url:'/news/'+id,
                    method: 'DELETE',
                    data: {'_token':"{{csrf_token()}}" },
                    success: function(msg)
                    {
                        parent.remove();
                        alert('News '+msg+' deleted.');
                    },
                    error: function(msg)
                    {
                        alert(msg);
                        console.log(msg);
                    }
                });
            });
        });
    </script>

    <h2>Новости</h2>
    <ul>
        <li><a href="{{ url('/news/create') }}">Добавить новость</a></li>
    </ul>

    <div class="container">
        <table class="table">
            <thead>
            <tr>
                <th>id</th>
                <th>Название</th>
                <th colspan="2">Действие</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($news as $new)
                <tr>
                    <td>{{$new->id}}</td>
                    <td> <a href="{{action('NewsController@show',['id'=>$new->id])}}">{{$new->title}}</a></td>
                    <td> <a class="btn btn-warning btn-sm" href="{{action('NewsController@edit',['news'=>$new->id])}}">Изменить</a></td>
                    <td> <a class="del btn btn-danger btn-sm" href="#">Удалить</a></td>
                    <input type="hidden" name="_method" value="PUT"/>
                    <td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>

@endsection