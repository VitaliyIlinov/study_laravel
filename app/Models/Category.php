<?php

namespace App\Models;

use App\Events\CategoryAction;
use App\Models\Traits\JsonTimestampSerializable;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder as QueryBuilder;

/**
 * @mixin Builder
 * @mixin QueryBuilder
 * @property int $id
 * @property string $name
 * @property int $parent_id
 * @property int $status
 * @property int $sort
 * @property Carbon $created_at
 * @property Carbon $updated_at
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
