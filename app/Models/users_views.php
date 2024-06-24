<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_views extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','views'];
}
