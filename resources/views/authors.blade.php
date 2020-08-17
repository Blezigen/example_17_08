@foreach($models as $author)
    <a href="{{\Illuminate\Support\Facades\URL::route("author", ['author'=> $author])}}">{{$author->name}}</a>
@endforeach
