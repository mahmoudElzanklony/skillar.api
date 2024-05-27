<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class jobs_offers_skills extends Model
{
    use HasFactory;

    protected $fillable =['job_id','skill_id'];
}
