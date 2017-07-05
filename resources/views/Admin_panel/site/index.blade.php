@extends('Admin_panel.site.master')


@section('title')

    {{$page->title}}

@endsection('title')


@section('content')

<p> Deneme </p>
<?php echo $page->content ?>


@endsection('content')