<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = "kp_news";
    protected $fillable = ['title', 'body', 'date_added'];
    public $timestamps = false;
}
