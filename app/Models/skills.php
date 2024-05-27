<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class skills extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = ['ar_title','en_title','sk_group_id','ar_desc','en_desc','note','code'];

    public function sk_group(){
        return $this->belongsTo(skills_groups::class,'sk_group_id');
    }
}
