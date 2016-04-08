<!DOCTYPE html>
<html>
    <head>
        <title>Master</title>
        <link rel="stylesheet" href="{{asset('css/bootstrapCyborg.css')}}">
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="col-xs-12">
                    <h1>Universidad Autónoma de Sinaloa</h1>

                    <hr>
                 </div>
                <div class="col-xs-4"> 
                    <ul class="nav nav-pills nav-stacked">
                        <li role="presentation"><a href="{{url('/')}}">Inicio</a></li>
                        @foreach($carreras as $carrera)
                            <li role"presentation"><a href="{{url('/materias')}}/{{$carrera->id}}">{{$carrera->nombre}}</a></li>
                        @endforeach
                    </ul>
                </div>
                @yield('Principal')
                @yield('Materias')
            </div>
        </div>
    </body>
</html>
