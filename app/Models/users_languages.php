<?php

namespace App\Models;

use App\Enum\UserSkillLevelEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_languages extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','language','level'];

    protected $casts = [
        'level'=>UserSkillLevelEnum::class
    ];
}
