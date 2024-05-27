<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orders extends Model
{
    use HasFactory;
    // service profit per percentage %
    protected $fillable = ['user_id','template_id','price','service_profit'];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id')->withTrashed();
    }

    public function template()
    {
        return $this->belongsTo(templates::class,'template_id')->withTrashed();
    }


}
