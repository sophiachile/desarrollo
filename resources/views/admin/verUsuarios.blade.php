@extends('layout.masterAdmin')
@section('content')
	<table class="table">
		<thead>
			<th>Nombre</th>
			<th>Correo</th>
			<th>Operacion</th>
		</thead>
		@foreach($usuarios as $user)
			<tbody>
				<td>{{$user->nombre}}</td>
				<td>{{$user->email}}</td>
			</tbody>
		@endforeach
	</table>
@endsection