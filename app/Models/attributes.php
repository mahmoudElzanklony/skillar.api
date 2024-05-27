<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class attributes extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','name','label','placeholder','before_answer','type'];

    public function selections(){
        return $this->hasOne(attributes_selections::class,'attribute_id');
    }

    public function image()
    {
        return $this->morphOne(images::class,'imageable');
    }
}
