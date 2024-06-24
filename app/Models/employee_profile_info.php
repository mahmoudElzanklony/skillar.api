<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class employee_profile_info extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','section_id','attribute_id','answer','type','related_to'];

    public function section()
    {
        return $this->belongsTo(sections::class,'section_id');
    }

    public function attribute()
    {
        return $this->belongsTo(attributes::class,'attribute_id');
    }
}
