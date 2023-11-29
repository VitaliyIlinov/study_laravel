<?php

namespace App\Events;

use App\Models\Category;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class CategoryAction
{
    use Dispatchable;
    use InteractsWithSockets;
    use SerializesModels;


    public function __construct(Category $model)
    {
    }
}
