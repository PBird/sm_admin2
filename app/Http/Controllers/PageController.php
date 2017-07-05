<?php

namespace App\Http\Controllers;

use App\page;
use App\navigation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class PageController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $pages = page::where('status','=', '1')->get();
        $navs = navigation::all();


       return view('site.index',compact('pages','navs'));



    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'route' => 'required',
            'status' => 'required',

            ]);

        $data = $request->all();
        $route = page::whereRoute($data['route'])->get()->first();

        $isAvailable = !(isset($route));

        if($isAvailable)
            page::create($data);
        else
            return back()->withErrors(['The Route has taken']);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\page  $page
     * @return \Illuminate\Http\Response
     */
    public function show($slug,$slug2="")
    {
        if(!empty($slug2))
            $route= $slug.'/'.$slug2;
        $route=$slug;

        $page = page::where([['status','=','1'], ['route','=',$route ]])->get();

        if(isset($page))
            return View('site.index')->with('page',$page);
        else
            return abort(404);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\page  $page
     * @return \Illuminate\Http\Response
     */
    public function edit(page $page)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\page  $page
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, page $page)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\page  $page
     * @return \Illuminate\Http\Response
     */
    public function destroy(page $page)
    {
        //
    }
}
