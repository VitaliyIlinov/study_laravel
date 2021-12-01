<?php

namespace App\Models;

use App\Events\InfoAction;
use App\Models\Traits\JsonTimestampSerializable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

/**
 * @mixin Builder
 */
class Info extends Model
{
    use JsonTimestampSerializable;

    protected $dispatchesEvents = [
        'saved' => InfoAction::class,
        'deleted' => InfoAction::class,
    ];

    protected $fillable = ['title', 'text', 'slug', 'status', 'category_id', 'sort'];

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

    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = Str::slug($value ?? $this->title, '-');
    }
}
