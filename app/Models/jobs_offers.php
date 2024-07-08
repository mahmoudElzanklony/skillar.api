<?php

namespace App\Models;

use App\Enum\JobOfferStatusEnum;
use App\Enum\WorkTimeEnum;
use App\Enum\WorkTypeEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class jobs_offers extends Model
{
    use HasFactory;

    protected $fillable =['company_id','category_id','name','min_experience','max_experience','description','responsibilities','city_id','work_time','work_type','salary','views','status'];

    protected $casts =  [
      'work_type'=>WorkTypeEnum::class,
      'work_time'=>WorkTimeEnum::class,
      'status'=>JobOfferStatusEnum::class
    ];

    public function skills()
    {
        return $this->belongsToMany(skills::class, jobs_offers_skills::class,'job_id','skill_id');
    }

    public function applicants()
    {
        return $this->hasMany(jobs_offers_applicants::class,'job_id');
    }

    public function category()
    {
        return $this->belongsTo(jobs_categories::class,'category_id');
    }

    public function city()
    {
        return $this->belongsTo(cities::class,'city_id');
    }

    public function company()
    {
        return $this->belongsTo(User::class,'company_id');
    }

}
