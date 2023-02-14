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
 * @property string $description
 * @property int $status
 * @property string $label
 * @property int $sort
 * @property Carbon $created_at
 * @property Carbon $updated_at
 */
class TodoList extends Model
{
    use JsonTimestampSerializable;
    use HasFactory;

    protected $fillable = ['description', 'label', 'status', 'sort'];
}
