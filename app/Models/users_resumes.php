<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class users_resumes extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','name','file'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
