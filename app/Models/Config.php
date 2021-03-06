<?php

namespace App\Models;

use App\Models\Traits\JsonTimestampSerializable;
use Illuminate\Database\Eloquent\Model;

class Config extends Model
{
    use JsonTimestampSerializable;

    protected $fillable = ['name', 'value', 'description'];
}
