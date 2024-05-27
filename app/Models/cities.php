<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cities extends Model
{
    use HasFactory;

    protected $fillable = ['country_id','name'];

    public function country(){
        return $this->belongsTo(countries::class,'country_id');
    }


}
