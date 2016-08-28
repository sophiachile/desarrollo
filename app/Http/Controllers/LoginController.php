<?php namespace App\Http\Controllers;
use DB;
class LoginController extends Controller {


	public function login()
	{
		return view('login');
	}
		public function login_terminosUso()
	{
		return view('aboutUs.terminos');
	}

	public function muro()
	{
        $result = DB::table('prueba')->get();
		return view('product.muro')->with('data',$result);
	}



}
