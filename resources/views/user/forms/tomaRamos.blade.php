<?php
$tipos_institucion = Session::get('tipos_institucion');
$cant_semestres = Session::get('cant_semestres');
$ramos = Session::get('ramos');
?>
<style>
    .form-group input[type="checkbox"] {
        display: none;
    }
    .form-group input[type="checkbox"] + .btn-group > label span {
        width: 20px;
    }
    .form-group input[type="checkbox"] + .btn-group > label span:first-child {
        display: none;
    }
    .form-group input[type="checkbox"] + .btn-group > label span:last-child {
        display: inline-block;
    }
    .form-group input[type="checkbox"]:checked + .btn-group > label span:first-child {
        display: inline-block;
    }
    .form-group input[type="checkbox"]:checked + .btn-group > label span:last-child {
        display: none;
    }
</style>
<form action="{{ route('tomaRamos') }}" method="post" name="tomaCarrera" id="tomaCarrera">
    <hr/>
    @for($x = 0; $x < $cant_semestres; $x++)
    <label> Semestre {{ $x+1 }}</label>
        @foreach($ramos as $ramo)
            @if($ramo->id_semestre == $x+1)
        <div class="form-group">
            <input type="checkbox" name="ramo[]" value="{{$ramo->id_ramo}}" id="ramo{{$ramo->id_ramo}}" autocomplete="off" style="display: none;">
            <div class="btn-group" style="width:100%">
                <label for="ramo{{$ramo->id_ramo}}" class="btn btn-warning">
                    <span class="[ glyphicon glyphicon-ok ]"></span>
                    <span>&nbsp;</span>
                </label>
                <label for="ramo{{$ramo->id_ramo}}" class="[ btn btn-default active ]">
                    {{ $ramo->nombre_ramo }} - {{$ramo->id_ramo}}"
                </label>
            </div>
        </div>
            @endif
        @endforeach
        <hr/>
    @endfor
    <input type="hidden" name="_token" value="{{ Session::token() }}">
    <button type="submit" class="btn btn-primary">Siguiente</button>
</form>