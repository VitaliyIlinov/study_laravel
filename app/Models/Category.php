<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'status', 'parent_id'];

    public function setStatusAttribute($value)
    {
        $this->attributes['status'] = $value === 'on' ? 1 : 0;
    }

    /**
     * Get the comments for the blog post.
     */
    public function info()
    {
        return $this->hasMany(Info::class);
    }
}
