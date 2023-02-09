<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder as QueryBuilder;

/**
 * @mixin Builder
 * @mixin QueryBuilder
 * @property int $id
 * @property string $name
 * @property string $file_path
 * @property string $file_size
 * @property Carbon $created_at
 * @property Carbon $updated_at
 */
class File extends Model
{
    protected $fillable = [
        'name',
        'file_path',
        'file_size',
    ];
}
