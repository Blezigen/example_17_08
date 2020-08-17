<?php


namespace App\Http\DataObject;


use Illuminate\Http\Request;
use Spatie\DataTransferObject\DataTransferObject;

abstract class AbstractDataObject extends DataTransferObject
{
    public static function fromRequest(Request $request){
        return static::fromArray($request->post());
    }

    abstract public static function fromArray($array);
}
