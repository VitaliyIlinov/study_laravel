<?php

namespace App\Models;

use App\Models\Traits\JsonTimestampSerializable;
use Illuminate\Database\Eloquent\Model;

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

    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }
}
