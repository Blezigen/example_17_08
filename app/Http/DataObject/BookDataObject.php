<?php


namespace App\Http\DataObject;


use Illuminate\Support\Facades\Validator;

class BookDataObject extends AbstractDataObject
{
    public $title;
    public $description;
    public $year;
    public $author_id;

    public static function fromArray($array)
    {
        $validator = Validator::make($array, [
            "title"       => ["string", "required"],
            "description" => ["string", "required"],
            "year"        => ["string", "required"],
            "author_id"   => ["integer", "required"],
        ]);

        $data = $validator->validate();

        return new static($data);
    }
}
