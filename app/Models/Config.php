<?php

namespace App\Models;

use App\Models\Traits\JsonTimestampSerializable;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder as QueryBuilder;

/**
 * @mixin Builder
 * @mixin QueryBuilder
 * @property int $id
 * @property string $name
 * @property string $value
 * @property string $description
 * @property Carbon $created_at
 * @property Carbon $updated_at
 */
class Config extends Model
{
    use JsonTimestampSerializable;
    use HasFactory;

    protected $fillable = ['name', 'value', 'description'];
}
