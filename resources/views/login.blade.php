@extends('layout.masterLogin')
@section('content')
<article class="container">
		<div class="row">
			<div class="col-sm-4">
				<h4><i class="fa fa-dashboard"></i> <b>Sophia</b></h4>
				<span><b>La Red de Estudiantes</b></span>
				<hr/>
				<p style="text-align: justify; font-family: 'Open Sans', sans-serif;">Bienvenido!. Esta es una plataforma donde
				 podrás subir y organizar el material de estudio de tu carrera, para que te 
				 sea más fácil acceder a todo tu material de estudio. También encontrarás información
				  y tips sobre la carrera que actualmente estás estudiando o, si prefieres, sobre otras 
				  que sean de tu interes. Únete a nuestra comunidad y comienza a usar nuestros servicios
				   de forma absolutamente GRATUITA.</p>
				<iframe width="100%" height="33%"
					src="https://www.youtube.com/embed/iHgd7aB4fH4">
				</iframe>
			</div>
			<div class="col-sm-6">
				<div class="">
				
				<h3><i class="fa fa-shield"></i> Regístrate</h3>
			  	<hr>
				<div class="form-group">
				  <label class="control-label" for="">Nombre</label>
				  <input type="text" class="form-control" placeholder="Nombre">
				</div>
				<div class="form-group">
				  <label class="control-label" for="">Apellido</label>
				  <input type="text" class="form-control" placeholder="Apellido">
				</div>
				<div class="form-group">
				  <label class="control-label" for="">Email</label>
				  <input type="email" class="form-control" placeholder="Email">
				</div>

				<div class="form-group">
				  <label class="control-label" for="">Password</label>
				  <input type="text" class="form-control" placeholder="Password">
				</div>

				<div class="form-group">
				  <label class="control-label" for="">Repita Password</label>
				  <input type="text" class="form-control" placeholder="Repeat Password">
				</div>
				<div class="">
					<label>Birthday</label>
				  <div class="form-group">
					  <div class="col-sm-4 multibox">
					 	<select class="form-control">
					 		<option>Day</option>
					 	</select>
					  </div>
					   <div class="col-sm-4 multibox">
					 	<select class="form-control">
					 		<option>Month</option>
					 	</select>
					  </div>
					   <div class="col-sm-4 multibox">
					 	<select class="form-control">
					 		<option>Year</option>
					 	</select>
					  </div>
				   
				  </div>
				</div>
		      
				<small>
					Estimado usuario, al registrarse usted acepta los <a href="terminos"><b>términos de uso</b></a>  de Sophia. 
				</small>	 
				<div style="height:10px;"></div>
				<div class="form-group">
				  <label class="control-label" for=""></label>
				  <a href="muro" class="btn btn-block btn-social" style="height:40px; font-size:9px; text-align:center" ><input   class="btn btn-block btn-primary btn-social"  type="submit" style="text-align:center; background-color:black" value="Registrarse con Sophia"></a>
				  <a class="btn btn-block btn-social btn-facebook" href="muro" style="text-align:center; onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-facebook']);"
		         <span class="fa fa-facebook" "></span> Iniciar con Facebook
		      </a>
		      <a class="btn btn-block btn-social btn-google" href="muro" style="text-align:center; onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-google']);">
            <span class="fa fa-google" "></span> Iniciar con Google
        	</a>
				</div>	 

				  </div>
			</div>
			</div>
		</div>
</article>





@stop()