<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Info extends Model
{

    protected $fillable = ['title','text', 'status', 'category_id', 'sort'];

    public function setStatusAttribute($value)
    {
        $this->attributes['status'] = $value === 'on' ? 1 : 0;
    }

    /**
     * Get the category that owns the row.
     */
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
}
