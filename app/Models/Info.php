<?php

namespace App\Models;

use App\Models\Traits\JsonTimestampSerializable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Info
 * @mixin Builder
 * @package App\Models
 */
class Info extends Model
{
    use JsonTimestampSerializable;

    protected $fillable = ['title', 'text', 'status', 'category_id', 'sort'];

    /**
     * Get the category that owns the row.
     */
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function scopeActive(Builder $query)
    {
        return $query->where('status', 1);
    }
}
