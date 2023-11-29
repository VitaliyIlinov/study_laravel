<?php

namespace App\Listeners;

use App\Events\FileUploaded;
use App\Models\File;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class SaveFileModel implements ShouldQueue
{
    use InteractsWithQueue;

    public function handle(FileUploaded $event): void
    {
        $fileModel = new File();
        $fileModel->name = $event->getFileName();
        $fileModel->file_path = $event->getFilePath();
        $fileModel->file_size = $event->getUploadedFile()->getSize();
        $fileModel->save();
    }
}
