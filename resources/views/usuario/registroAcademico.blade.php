
@extends('layout.masterUsuario')


@section('content')
<?php
$carreras = Session::get('carreras');
$ramos = Session::get('ramos');
$usuario = Session::get('usuario');
$tipos = Session::get('tipos');
?>
<!-- http://bootdey.com/snippets/view/social-network-wall // de aquí saqué el template-->
<link rel="stylesheet" href="{{asset('css/index_UsuarioMuro.css')}}">  
<div class="container bootstrap snippet" Style="width:80%; margin-top:50px">


		<div class="row">
			<div class="col-sm-10">
			  <div class="panel panel-default">
 				 <div class="panel-body" style="padding-left:50px;  padding-top:25px; padding-right:50px; padding-bottom:30px" >
			
                   <h3>Registro Academico </h3>
                   <p> 
                   	Para poder intercambiar material o comunicarte 
                    con otros usuarios, es necesario que completes la siguiente informacion:
                   </p>
                   <form role="form">
                   
  					<div class="form-group" >
    					<label >Seleccione tipo de Institucion</label>
 	 						<div > 
	             	{!! Form::select('tipoInstitucion', array_merge(array('0' => 'Seleccione tipo de institucion') + $tipos), null,['id'=>'tipoInstitucion','class' => 'form-control']) !!}

                            
               </div>
 					 </div>
  
 					 <div class="form-group" >
    					<label >Seleccione Institucion</label>
    						<div > 
                {!! Form::select('institucion',['placeholder'=>'Selecciona'],null,['id'=>'institucion','class' => 'form-control']) !!}
   							
  				    	</div>
            </div>
  
    				<div class="form-group" >
   					 <label >Seleccione su Carrera</label>
   				     <br/>
  					  <div > 
 						{!! Form::select('carrera',['placeholder'=>'Selecciona'],null,['id'=>'carrera','class' => 'form-control']) !!}
  						</div>
 					 </div>
  
            <br/>
 					 <div class="form-group" ">
   					 <label >Seleccione los ramos de su carrera que decea agregar a su perfil</label>
       					 <div>
					  		<div class="list-group">
  								<a  class="list-group-item"><label><input type="checkbox" name="checkbox" id="1"> ramo 1</label></a>
								<a  class="list-group-item"><label><input type="checkbox" name="checkbox" id="2"> ramo 2</label></a>
							</div> 
       					</div>
  					</div>      
 					<br/>
  
  					<button   type="submit" class="btn btn-warning">Enviar</button>
					</form>
		        </div>
			  </div>
			</div>
		</div>
</div>

@endsection