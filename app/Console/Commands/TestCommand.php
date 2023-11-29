<?php

namespace App\Console\Commands;

use App\Jobs\TestJob;
use App\Models\Info;
use Illuminate\Console\Command;

class TestCommand extends Command
{
    /**
     * The name and signature of the console command.
     * @var string
     */
    protected $signature = 'test:queue';

    /**
     * The console command description.
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     * @return int
     */
    public function handle()
    {
        TestJob::dispatch(Info::first());
        return Command::SUCCESS;
    }
}
