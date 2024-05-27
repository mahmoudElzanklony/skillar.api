<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class sections extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = ['user_id','name','info'];

    public function attributes(){
        return $this->belongsToMany(attributes::class,sections_attributes::class,'section_id','attribute_id')
            ->orderBy('sections_attributes.id','ASC');
    }

    public function image(){
        return $this->morphOne(images::class,'imageable');
    }
}
