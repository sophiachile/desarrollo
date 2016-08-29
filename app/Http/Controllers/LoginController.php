<?php namespace Sophia\Http\Controllers;
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
		return view('product.muro');
	}



}
