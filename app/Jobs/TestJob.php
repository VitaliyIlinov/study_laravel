<?php

namespace App\Jobs;

use App\Models\Info;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class TestJob implements ShouldQueue
{
    use Dispatchable;
    use InteractsWithQueue;
    use Queueable;
    use SerializesModels;

    private Info $info;

    public function __construct(Info $info)
    {
        $this->info = $info;
    }

    public function handle(Info $info): void
    {
        Log::channel('single')->error(__CLASS__);
    }
}
