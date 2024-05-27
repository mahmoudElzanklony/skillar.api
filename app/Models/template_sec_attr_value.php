<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;


class template_sec_attr_value extends Model
{
    protected $table = 'template_sec_attr_value';

    protected $fillable = ['template_section_id','attribute_id','answer','answer_type','content_width'];

    public function template_section(){
        return $this->belongsTo(templates_sections::class,'template_section_id');
    }

    public function attribute(){
        return $this->belongsTo(attributes::class,'attribute_id');
    }
}
