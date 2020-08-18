<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Info extends Model
{
    /**
     * Get the category that owns the row.
     */
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
