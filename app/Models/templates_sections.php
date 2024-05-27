<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class templates_sections extends Model
{
    use HasFactory;

    protected $fillable = ['template_id','section_id','content_width'];

    public function section(){
        return $this->belongsTo(sections::class,'section_id');
    }

    public function attr_answers()
    {
        return $this->hasMany(template_sec_attr_value::class,'template_section_id');
    }
}
