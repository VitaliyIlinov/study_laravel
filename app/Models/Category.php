<?php

namespace App\Models;

use App\Events\CategoryAction;
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

    protected $dispatchesEvents = [
        'saved' => CategoryAction::class,
        'deleted' => CategoryAction::class,
    ];

    protected $fillable = ['name', 'status', 'parent_id', 'sort'];

    /**
     * Get the comments for the blog post.
     */
    public function info()
    {
        return $this->hasMany(Info::class);
    }

    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
}
