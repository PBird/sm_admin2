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

     public function showall()
    {
        //
        $pages = page::all();

         return view('Admin_panel.pages.allPages')->with('pages',$pages);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $navs = navigation::all();
        return view('Admin_panel.pages.newpage')->with('navs',$navs);
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
            'name' => 'required',
            'content' => 'required',
            'status' => 'required',

            ]);

        $data = $request->all();

        page::create($data);

        return back()->with('success', ' Page has been created successfully ');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\page  $page
     * @return \Illuminate\Http\Response
     */
    public function show(page $id)
    {
        $navs=navigation::all();
        return view('Admin_panel.pages.editpage')->with('page',$id)->with('navs',$navs);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\page  $page
     * @return \Illuminate\Http\Response
     */
    public function edit(page $id,Request $request)
    {
            $this->validate($request, [
            'name' => 'required',
            'content' => 'required',
            'status' => 'required',

            ]);

            $data = $request->all();

            dd($data);

            $id->update($data);

            return back()->with('success', ' Page has been updated successfully ');

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
    public function destroy(page $id)
    {
        $id->delete();
        return back()->with('success', ' Page has been deleted successfully ');

    }
}
