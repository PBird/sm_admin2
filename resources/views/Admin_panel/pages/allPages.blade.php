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
                                        <th>Page Title</th>
                                        <th>Route</th>
                                        <th>Created</th>
                                        <th>Updated</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>Trident</td>
                                        <td>Internet Explorer 4.0</td>
                                        <td>Win 95+</td>
                                        <td class="center">4</td>
                                        <td class="center">X</td>
                                    </tr>

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
