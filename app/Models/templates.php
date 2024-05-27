<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class templates extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = ['user_id','category_id','name','type','visibility','price','parent_id'];

    public function category(){
        return $this->belongsTo(categories::class,'category_id');
    }

    public function sections()
    {
        return $this->hasMany(templates_sections::class,'template_id');
    }

    public function scopePublic()
    {
        return $this->where('visibility','=','public');
    }

    public function scopeParent()
    {
        return $this->whereRaw('parent_id is null');
    }

    public function children()
    {
        return $this->hasMany(templates::class,'parent_id');
    }

    public function style()
    {
        return $this->morphOne(elements_style::class,'styleable');
    }

    public function image()
    {
        return $this->morphOne(images::class,'imageable');
    }

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
