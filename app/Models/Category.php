<?php

namespace App\Models;

use App\Models\Traits\JsonTimestampSerializable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Category
 * @mixin Builder
 * @package App\Models
 */
class Category extends Model
{
    use JsonTimestampSerializable;

    protected $fillable = ['name', 'status', 'parent_id', 'sort'];

    /**
     * Get the comments for the blog post.
     */
    public function info()
    {
        return $this->hasMany(Info::class);
    }

    public function scopeActive(Builder $query)
    {
        return $query->where('status', 1);
    }
}
