<?php

namespace App\Models;

use App\Enum\JobsOffersApplicantsStatusEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class jobs_offers_applicants extends Model
{
    use HasFactory;

    protected $fillable = ['job_id','user_resume_id','status'];
    protected $casts = [
      'status'=>JobsOffersApplicantsStatusEnum::class
    ];
    public function resume()
    {
        return $this->belongsTo(users_resumes::class,'user_resume_id');
    }

    public function job()
    {
        return $this->belongsTo(jobs_offers::class,'job_id');
    }
}
