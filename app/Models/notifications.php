<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class notifications extends Model
{
    use HasFactory;

    protected $fillable = ['sender_id','receiver_id','ar_info','en_info','tu_info','seen'];

    public static function selection(){
        return self::query()->select('id','sender_id','receiver_id',app()->getLocale().'_info as info'
            ,'seen','created_at');
    }

    public function sender(){
        return $this->belongsTo(User::class,'sender_id');
    }

    public function receiver(){
        return $this->belongsTo(User::class,'receiver_id');
    }
}
