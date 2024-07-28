<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class jobs_categories extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function image()
    {
        return $this->morphOne(images::class,'imageable');
    }

    public function jobs()
    {
        return $this->hasMany(jobs_offers::class,'category_id');
    }
}
