<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class elements_style extends Model
{
    use HasFactory;

    protected $fillable = ['styleable_id','styleable_type','style'];

    public function styleable()
    {
        return $this->morphTo();
    }
}
