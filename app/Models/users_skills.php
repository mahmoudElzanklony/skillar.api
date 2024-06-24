<?php

namespace App\Models;

use App\Enum\UserSkillLevelEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_skills extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','skill_id','sub_skill','level'];

    protected $casts = [
      'level'=>UserSkillLevelEnum::class
    ];

    public function skill()
    {
        return $this->belongsTo(skills::class,'skill_id');
    }
}
