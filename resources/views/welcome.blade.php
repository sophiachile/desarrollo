@extends('layout.master')
@section('content')
<article class="container">
		<div class="row">
			<div class="col-sm-10">
			  <div class="panel panel-default">
 				 <div class="panel-body">
				   <h1><strong> Bienvenido a Sophia</					strong></h1>
                   <h4>Para poder finalizar su registro es necesario que porfavor complete los siguientes campos: </h4>
                   <form role="form">
  <div class="form-group">
    <label for="tipo-insitucion">Seleccione tipo de Institucion</label>
 	 	<div > 
   			<select name="select-tipoInstitucion" class="form-control" >
 			 <option>1</option>
          	<option>2</option>
 			 <option>3</option>
 			 <option>4</option>
		     <option>5</option>
			</select>
  		</div>
  </div>
  
  <div class="form-group">
    <label for="nom-institucion">Seleccione Institucion</label>
    <div > 
   			<select name="select-nomInstitucion" class="form-control" >
 			 <option>1</option>
          	<option>2</option>
 			 <option>3</option>
 			 <option>4</option>
		     <option>5</option>
			</select>
  		</div>
  </div>
  
    <div class="form-group">
    <label for="nom-carrera">Seleccione su Carrera</label>
    <div > 
   			<select name="select-nomCarrera" class="form-control" >
 			 <option>1</option>
          	<option>2</option>
 			 <option>3</option>
 			 <option>4</option>
		     <option>5</option>
			</select>
  		</div>
  </div>
  
  <button type="submit" class="btn btn-default">Enviar</button>
					</form>
		        </div>
			  </div>
			</div>
		</div>
</article>





@stop()