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
                                        <th>name</th>
                                        <th>content</th>
                                        <th>Tagged Menu Name</th>
                                        <th>Created</th>
                                        <th>Updated</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>

                                  @foreach($pages as $page)
                                       <tr class="odd gradeX">
                                    <td> <label>
                                       <input type="checkbox" value=" {{$page->id}} ">
                                        </label></td>
                                        <td>{{$page->name}}</td>
                                        <td>{{str_limit($page->content,15) }}</td>
                                        <td> @if(!empty($page->navigation))
                                            {{ $page->navigation->name }}
                                             @endif
                                         </td>

                                        <td>{{$page->created_at}}</td>
                                        <td>{{$page->updated_at}}</td>
                                        <td>
                                        @if($page->status==1)
                                        <p class="fa fa-plus"> Active</p>
                                        @else <p class="fa fa-minus"> Passive </p>
                                        @endif </td>
                                          <td> <a type="button" class="btn btn-warning" style="margin-right:8px" href="{{route('page.edit',['id' => $page->id ])}}">Edit</a>
                                        <a type="button" class="btn btn-danger" href="{{route('page.delete',['id' => $page->id ])}}">Delete</a>  </td>

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
