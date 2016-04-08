<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Carrera;
use App\Materia;
use App\Temas;

use App\Http\Controllers\Controller;

class EjemploController extends Controller{
	public function index(){
		$carreras=Carrera::all();
		return view('Principal', compact('carreras'));
	}
	public function PDF($id){
		$materia=Materia::find($id);
		$carrera=Carrera::find($materia->id_carrera);
		$temas=Temas::where('id_materias','=', $id)->get();
		$view=\View::make('PDF',compact('carrera','materia','temas'))->render();
		$pdf=\App::make('dompdf.wrapper');
		$pdf->loadHTML('Temas');
		return $pdf->stream();
	}
	public function Materias($id){
		$carreras=Carrera::all();
		$carrera=Carrera::find($id);
		$materias=Materia::where('id_carrera', '=', $id)->get();
		return view('Materias', compact ('carreras','materias','carrera'));
	}
}