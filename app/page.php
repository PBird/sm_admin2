<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class page extends Model
{
    //

    protected $fillable = [
            'name',
            'content',
            'status',
            'nav_id'

    ];

    public function navigation() {

        return $this->belongsTo('App\navigation','tag_id','id');
    }
}
