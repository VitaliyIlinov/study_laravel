<?php

namespace App\Jobs;

use App\Models\Info;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class Testjob implements ShouldQueue
{
    use Dispatchable;
    use InteractsWithQueue;
    use Queueable;
    use SerializesModels;

    private Info $info;

    /**
     * Create a new job instance.
     * @return void
     */
    public function __construct(Info $info)
    {
        $this->info = $info;
    }

    /**
     * Execute the job.
     * @return void
     */
    public function handle(Info $info)
    {
        Log::channel('single')->error(__CLASS__);
    }
}
