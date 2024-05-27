<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_cvs extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','template_id'];

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }

    public function template(){
        return $this->belongsTo(templates::class,'template_id');
    }
}
