<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_cvs_sections extends Model
{
    use HasFactory;

    protected $fillable = ['user_cv_id','section_id','order'];

    public function section(){
        return $this->belongsTo(sections::class,'section_id');
    }

    public function user_cv(){
        return $this->belongsTo(users_cvs::class,'user_cv_id');
    }

}
