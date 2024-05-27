<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class competencies extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = ['ar_title','en_title','ar_desc','en_desc'];
}
