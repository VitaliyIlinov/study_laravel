<?php

namespace App\Models;

use App\Models\Traits\JsonTimestampSerializable;
use Illuminate\Database\Eloquent\Model;

class TodoList extends Model
{
    use JsonTimestampSerializable;

    protected $fillable = ['description', 'label', 'status', 'sort'];
}
