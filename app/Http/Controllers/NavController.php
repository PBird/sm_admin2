<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\navigation;

class NavController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

         $navs = navigation::all();

         return view('Admin_panel.pages.navs',compact('navs'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('Admin_panel.pages.createnav');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,
            [
                'name' => 'required|min:2',
                'tag' => 'required|min:2|unique:navigations'

            ]);


        $data = $request->all();
        navigation::create($data);

       return back()->with('success', ' Menu Button has been created successfully ');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(navigation $id)
    {

        return view('Admin_panel.pages.editnav')->with('nav',$id);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request,navigation $id)
    {
        $this->validate($request,
            [
                'name' => 'required|min:2',
                'tag' => 'required|min:2|unique:navigations'

            ]);


        $data = $request->all();
        $id->update($data);

       return back()->with('success', ' Menu Button has been updated successfully ');


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {



     }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(navigation $id)
    {
        $id->delete();

        return back()->with('success', ' Menu Button has been deleted successfully ');

    }
}
