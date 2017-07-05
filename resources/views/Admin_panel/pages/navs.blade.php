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
                                        <th>Menu Name</th>
                                        <th>Route Tag</th>
                                        <th>Created</th>
                                        <th>Updated</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($navs as $nav)
                                    <tr class="odd gradeX">
                                        <td> <a href=" {{route('nav.edit',[ 'id' => $nav->id ])}} ">{{$nav->name}}</a> </td>
                                        <td> <a href=" {{route('nav.edit',[ 'id' => $nav->id ])}} ">{{$nav->tag}}</a> </td>
                                        <td> <a href=" {{route('nav.edit',[ 'id' => $nav->id ])}} ">{{$nav->created_at}}</a> </td>
                                        <td class="center"> <a href=" {{route('nav.edit',[ 'id' => $nav->id ])}} ">{{$nav->updated_at}}</a></td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <!-- /.table-responsive -->

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