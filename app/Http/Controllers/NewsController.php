<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;

class NewsController extends Controller
{
    public function index() {
        $news = News::all();
        return view('news.index', compact('news'));
    }

    public function create()
    {
        return view('news.create');
    }

    public function destroy($id)
    {
        $ne=News::find($id);
        return view('news.index', compact('ne'));
        $news->delete();
        return $news->title;
    }

    public function show($id)
    {
        $news=News::find($id);
        return view('news.show', compact('news'));
    }

    public function edit($id)
    {
        $news=News::find($id);
        return view('news.edit', compact('news'));
    }

    public function update(Request $request,$id)
    {
        $news=News::find($id);
        $news->update($request->all());
        $news->save();
        return redirect('/news')->with('message','Новость обновлена');
    }

    public function store(Request $request)
    {
        News::create($request->all());
        return redirect('/news')->with('message','Новость добавлена');
    }
}