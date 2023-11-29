<?php

namespace App\Events;

use App\Models\Info;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class InfoAction
{
    use Dispatchable;
    use InteractsWithSockets;
    use SerializesModels;

    public function __construct(Info $info)
    {
        $r = 1;
    }
}
