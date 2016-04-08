@extends('welcome')

@section('Materias')
	<div class="col-xs-8">
	<h1>{{$carrera->nombre}}</h1>
	<br>
	 <ul class="nav nav-pills nav-stacked">
    	@foreach($materias as $materia)
            <li role"presentation"><a href="{{url('/PDF')}}/{{$materia->id}}">{{$materia->nombre}}</a></li>
        @endforeach
     </ul>
	</div>
@stop