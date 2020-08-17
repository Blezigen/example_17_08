<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
        "title",
        "description",
        "year",
    ];


    public function author()
    {
        return $this->hasOne(Author::class, "id", "author_id");
    }
}
