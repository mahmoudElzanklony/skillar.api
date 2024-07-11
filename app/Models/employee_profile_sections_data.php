<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class employee_profile_sections_data extends Model
{
    use HasFactory;

    protected $table = 'employee_profile_sections_data';

    protected $fillable = ['user_id','section_id'];

    public function attributes_data()
    {
        return $this->hasMany(employee_profile_info::class,'employee_profile_section_id');
    }

    public function first_attribute_data()
    {
        return $this->hasOne(employee_profile_info::class,'employee_profile_section_id');
    }

    public function section()
    {
        return $this->belongsTo(sections::class,'section_id');
    }
}
