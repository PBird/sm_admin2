@extends('Admin_panel.layouts.master')


@section('extracss')

    <style type="text/css">

             .radio
            {
                display:inline-block;
            }

            .form-group input,
            .form-group select
            {
                width:25%;

            }
            .form-group textarea
            {
                width:75%;

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
                        <form method="post" action=" {{ route('page.store') }} ">

                            {{csrf_field()}}
                           <div class="form-group">
                               <label>Page name</label>
                                 <input name="name" class="form-control" placeholder="name">
                                 <label>Page Content</label>
                                 <textarea name="content" class="form-control" rows="5" fixed></textarea>
                               <!-- <label>Insert Media</label>
                                 <a rel="1" type="button" class="btn btn-outline btn-default newWindow" >Media</a><br> -->
                                <label>Link to Menu</label>
                               <select name="tag_id" class="form-control">
                                          <option  value="" selected>Select</option>
                                          @foreach($navs as $nav)
                                                <option value=" {{$nav->id}} " >{{$nav->name}}</option>
                                           @endforeach
                                </select>

                               <button type="submit" class="btn btn-success" > Create </button>
                               <div class="radio">
                                    <label>
                                        <input type="radio" name="status" id="optionsActive" value="1" > Active
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="status" id="optionsPassive" value="0" checked> Passive
                                    </label>
                                </div>

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

@section('exscripts')

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.js"></script>
<script type="text/javascript">
            var windowSizeArray = [ "width=200,height=200",
                                    "width=600,height=400,scrollbars=yes" ];

            $(document).ready(function(){
                $('.newWindow').click(function (event){

                    var url = $(this).attr("href");
                    var windowName = "popUp";//$(this).attr("name");
                    var windowSize = windowSizeArray[$(this).attr("rel")];

                    window.open(url, windowName, windowSize);

                    event.preventDefault();

                });
            });
        </script>
@endsection('exscripts')


