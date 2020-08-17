<?php


namespace App\Http\Controllers\Api\v1;


use App\Book;
use App\Http\Controllers\Controller;
use App\Http\DataObject\BookDataObject;
use App\Http\ViewModels\BookViewModel;
use Illuminate\Http\Request;

class BooksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::all();
        return BookViewModel::fromCollection($books);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        return BookViewModel::fromEntity($book);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        /** @var BookDataObject $data */
        $data = BookDataObject::fromRequest($request);

        $book->author_id = $data->author_id;
        $book->title = $data->title;
        $book->description = $data->description;
        $book->year = $data->year;

        $book->save();

        return response()->json([
            "id" => $book->id
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        $book->delete();
        return response()->json([], 200);
    }
}
