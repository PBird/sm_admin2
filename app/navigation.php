<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class navigation extends Model
{
    //


    public function page(){

        return $this->hasOne('App\page','tag_id','id');
    }
}
