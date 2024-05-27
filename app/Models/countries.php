<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class countries extends Model
{
    use HasFactory;

    protected $fillable = ['ar_name','en_name'];


    public function cities(){
        return  $this->hasMany(cities::class,'country_id');
    }


}
