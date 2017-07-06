@extends('Admin_panel.layouts.master')




@section('content')

@include('Admin_panel.layouts.nav')

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Menu Name</th>
                                        <th>Route Tag</th>
                                        <th>Created</th>
                                        <th>Updated</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($navs as $nav)
                                    <tr class="odd gradeX">
                                        <td> <label>
                                                    <input type="checkbox" value=" {{$nav->id}} ">
                                        </label></td>
                                        <td> {{$nav->name}} </td>
                                        <td> {{$nav->tag}}</td>
                                        <td> {{$nav->created_at}} </td>
                                        <td class="center"> {{$nav->updated_at}} </td>
                                        <td> <a type="button" class="btn btn-warning" style="margin-right:8px" href="{{route('nav.edit',['id' => $nav->id ])}}">Edit</a>
                                        <a type="button" class="btn btn-danger" href="{{route('nav.delete',['id' => $nav->id ])}}">Delete</a>  </td>

                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                             @include('Admin_panel.layouts.confirm')

                        </div>


                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->


@endsection('content')

@section('exscripts')


<!-- DataTables JavaScript -->
<script src={{asset("Admin_Panel/vendor/datatables/js/jquery.dataTables.min.js")}}></script>
<script src={{asset("Admin_Panel/vendor/datatables-plugins/dataTables.bootstrap.min.js")}}></script>
<script src={{asset("Admin_Panel/vendor/datatables-responsive/dataTables.responsive.js")}}></script>


<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
$(document).ready(function() {
    $('#dataTables-example').DataTable({
        responsive: true
    });
});
</script>
@endsection('exscripts')
