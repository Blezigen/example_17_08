Название:{{$model->title}} ({{$model->year}})<br>
Автор:<a href="{{\Illuminate\Support\Facades\URL::route("author", ['author'=> $model->author])}}">{{$model->author->name}}</a> <br>
Описание: {{$model->description}} <br>
