<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property  string $name
 * @property  string file_path
 * @property  string file_size
 */
class File extends Model
{
    protected $fillable = [
        'name',
        'file_path',
        'file_size',
    ];
}
