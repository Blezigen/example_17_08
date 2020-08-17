<?php


namespace App\Http\ViewModels;


abstract class AbstractViewModel
{
    protected $entity;

    /**
     * AbstractViewModel constructor.
     *
     * @param $entity
     */
    public function __construct($entity)
    {
        $this->entity = $entity;
    }

    public function view(){
        $data = $this->render();
        return response()->json($data, 200);
    }

    public static function fromCollection($collection)
    {
        return collect($collection)->map(function ($entity){
           return static::fromEntity($entity);
        });
    }
    public static function fromEntity($entity)
    {
        return (new static($entity))->render();
    }

    abstract public function render();

}
