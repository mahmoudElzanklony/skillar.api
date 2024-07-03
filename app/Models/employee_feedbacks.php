<?php

namespace App\Models;

use App\Enum\FeedbackStatusEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class employee_feedbacks extends Model
{
    use HasFactory;

    protected $fillable = ['sender_id','receiver_id','info','status'];

    protected $casts = [
        'status'=>FeedbackStatusEnum::class
    ];

    public function sender()
    {
        return $this->belongsTo(User::class,'sender_id');
    }

    public function receiver()
    {
        return $this->belongsTo(User::class,'receiver_id');
    }
}
