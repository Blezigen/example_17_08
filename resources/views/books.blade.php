@foreach($models as $book)
    <a href="{{\Illuminate\Support\Facades\URL::route("book", ['book'=> $book])}}">{{$book->title}}</a><br>
@endforeach
