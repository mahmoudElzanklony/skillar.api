<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_cvs_sec_attr_value extends Model
{
    use HasFactory;

    protected $table = 'users_cvs_sec_attr_value';

    protected $fillable = ['user_cv_section_id','attribute_id','answer','answer_type','content_width'];

    public function user_cv_section(){
        return $this->belongsTo(users_cvs_sections::class,'user_cv_section_id');
    }

    public function attribute(){
        return $this->belongsTo(attributes::class,'attribute_id');
    }
}
