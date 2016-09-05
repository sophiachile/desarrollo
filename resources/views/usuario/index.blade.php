
@extends('layout.master')


@section('content')

<!-- http://bootdey.com/snippets/view/social-network-wall // de aquí saqué el template-->
<link rel="stylesheet" href="{{asset('css/index_UsuarioMuro.css')}}">  
<div class="container bootstrap snippet" Style="width:80%">
    <div class="row">
    	<div class="panel" Style="padding-left:15px">
			<h2> Muro de Ingeniería Informática </h1>
			<br>
		</div>
        <div class="panel profile-info">
          <form>
              <textarea class="form-control input-lg p-text-area" rows="2" placeholder="Aporta a la comunidad !"></textarea>
          </form>
          <footer class="panel-footer">
              <button type="button" class="btn btn-info pull-right">Postear</button>
              <ul class="nav nav-pills">
                  <li><a href="#"><i class="fa fa-map-marker"></i></a></li>
                  <li><a href="#"><i class="fa fa-camera"></i></a></li>
                  <li><a href="#"><i class="fa fa-film"></i></a></li>
                  <li><a href="#"><i class="fa fa-microphone"></i></a></li>
              </ul>
          </footer>
        </div>
        
        <div class="panel">
          <div class="panel-body">
              <div class="fb-user-thumb">
                  <img src="http://bootdey.com/img/Content/avatar/avatar2.png" alt="">
              </div>
              <div class="fb-user-details">
                  <h3><a href="#" class="#">Margarita Elina</a></h3>
                  <p>7 minutes ago near Alaska, USA</p>
              </div>
              <div class="clearfix"></div>
              <p class="fb-user-status">El profesor pidió que por favor lleguen a la hora la próxima clase. No se olviden de llevar impreso el material de clases!! Un abrazo
              </p>
              <div class="fb-status-container fb-border">
                  <div class="fb-time-action">
                      <a href="#" title="Like this">Gracias!</a>
                      <span>-</span>
                      <a href="#" title="Leave a comment">Comentar</a>
                      <span>-</span>
                      <a href="#" title="Send this to friend or post it on your time line">Compartir</a>
                  </div>
              </div>
        
        
              <div class="fb-status-container fb-border fb-gray-bg">
                  <div class="fb-time-action like-info">
                      <a href="#">Jhon Due,</a>
                      <a href="#">Danieal Kalion</a>
                      <span>and</span>
                      <a href="#">40 more</a>
                      <span>like this</span>
                  </div>
        
                  <ul class="fb-comments">
                      <li>
                          <a href="#" class="cmt-thumb">
                              <img src="http://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                          </a>
                          <div class="cmt-details">
                              <a href="#">Jhone due</a>
                              <span> is world famous professional photographer.  with forward thinking clients to create beautiful, </span>
                              <p>40 minutes ago - <a href="#" class="like-link">Like</a></p>
                          </div>
                      </li>
                      <li>
                          <a href="#" class="cmt-thumb">
                              <img src="http://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                          </a>
                          <div class="cmt-details">
                              <a href="#">Tawseef</a>
                              <span> is world famous professional photographer.  with forward thinking clients to create beautiful, </span>
                              <p>34 minutes ago - <a href="#" class="like-link">Like</a></p>
                          </div>
                      </li>
        
                      <li>
                          <a href="#" class="cmt-thumb">
                              <img src="http://bootdey.com/img/Content/avatar/avatar4.png" alt="">
                          </a>
                          <div class="cmt-details">
                              <a href="#">Jhone due</a>
                              <span> is world famous professional photographer.   </span>
                              <p>15 minutes ago - <a href="#" class="like-link">Like</a></p>
                          </div>
                      </li>
                      <li>
                          <a href="#" class="cmt-thumb">
                              <img src="http://bootdey.com/img/Content/avatar/avatar5.png" alt="">
                          </a>
                          <div class="cmt-details">
                              <a href="#">Tawseef</a>
                              <span> thinking clients to create beautiful world famous professional photographer.  </span>
                              <p>2 minutes ago - <a href="#" class="like-link">Like</a></p>
                          </div>
                      </li>
                      <li>
                          <a href="#" class="cmt-thumb">
                              <img src="http://bootdey.com/img/Content/avatar/avatar8.png" alt="">
                          </a>
                          <div class="cmt-form">
                              <textarea class="form-control" placeholder="Write a comment..." name=""></textarea>
                          </div>
                      </li>
                  </ul>
                  <div class="clearfix"></div>
              </div>
          </div>
        </div>
	</div>
</div>
@endsection