<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PDF Datos</title>
</head>
      <img src="img/logo-uas.png"WIDTH=100 HEIGHT=100 alt="">
<body>
	<h1>CARRERA: {{$carrera->nombre}}</h1>
	<br>
	<h2>MATERIA: {{$materia->nombre}}</h2>
	<br>
	<h3>TEMAS:</h3> <br>@foreach($temas as $Tema)
	{{$Tema->nombre}}
	<br>
	@endforeach

</body>
</html>