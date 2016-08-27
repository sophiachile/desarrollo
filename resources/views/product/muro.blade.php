@extends('layout.master')
@section('content')
<table class='table table-bordered table-hover'>
    <thead>
        <th>name</th>
        <th>email</th>
        <th>message</th>
    </thead>
    <tbody>
        <?php
            foreach ($data as $row){
         ?>
        <tr>
            <td><?php echo $row->name ?></td>
            <td><?php echo $row->email ?></td>
            <td><?php echo $row->message ?></td>
        </tr>
       <?php } ?>
    </tbody>
</table>
@stop()