<?php


namespace App\Http\ViewModels;


use App\Book;

class BookViewModel extends AbstractViewModel
{
    /** @var Book */
    protected $entity;

    public function render()
    {
        return $this->entity->toArray();
    }
}
