<?php namespace Sophia\Http\Controllers;

use Sophia\Http\Requests;
use Sophia\Http\Requests\LoginRequest;
use Sophia\Http\Controllers\Controller;
use Auth;
use Session;
use Redirect;
use Illuminate\Http\Request;

class LogController extends Controller {


	public function index()
	{
	}


	public function create()
	{
		
	}

	public function store(LoginRequest $request)
	{	/*
		if(Auth::attemp(
		['email' => $request['user_mail'],
		 'password'=> $request['user_pass']])) //attemp recibe un array
		{
			return Redirect::to('product.muro');

		}else
		{
			Session::flash('message-error', 'Datos incorrectos');
			return Redirect::to('/');
		}
		*/
		return $request->user_mail;
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
