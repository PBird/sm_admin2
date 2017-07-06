@extends('Admin_panel.layouts.master')


@section('extracss')

    <style type="text/css">

             .radio
            {
                display:inline-block;
            }

    </style>


@endsection('extracss')

@section('content')

@include('Admin_panel.layouts.nav')


        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="create">
                        <form method="post" action=" {{ route('nav.edit',['id' => $nav->id]) }} ">

                            {{csrf_field()}}
                           <div class="form-group">
                               <label>Name</label>
                                 <input name="name" class="form-control" placeholder="Menu Button Name" value=" {{ $nav->name }} ">

                               <label>Tag</label>
                                 <input name="tag" class="form-control" placeholder="Route Tag  example: #features" value= "{{ $nav->tag }} " >

                               <button type="submit" class="btn btn-success" > Update </button>
                          </div>
                          @include('Admin_panel.layouts.errors')
                          @include('Admin_panel.layouts.confirm')



                      </form>
                  </div>

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->


@endsection('content')

