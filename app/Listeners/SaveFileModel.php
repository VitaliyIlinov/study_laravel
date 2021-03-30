<?php

namespace App\Listeners;

use App\Events\FileUploaded;
use App\Models\File;

class SaveFileModel
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param FileUploaded $event
     * @return void
     */
    public function handle(FileUploaded $event)
    {
        $fileModel = new File();
        $fileModel->name = $event->getFileName();
        $fileModel->file_path = $event->getFilePath();
        $fileModel->file_size = $event->getUploadedFile()->getSize();
        $fileModel->save();
    }
}
