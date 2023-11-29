<?php

namespace App\Events;

use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Http\UploadedFile;
use Illuminate\Queue\SerializesModels;

class FileUploaded
{
    use Dispatchable;
    use InteractsWithSockets;
    use SerializesModels;

    private UploadedFile $uploadedFile;

    private string $fileName;

    private string $filePath;

    public function __construct(UploadedFile $uploadedFile, string $filePath, string $fileName)
    {
        $this->uploadedFile = $uploadedFile;
        $this->filePath = $filePath;
        $this->fileName = $fileName;
    }

    public function getUploadedFile(): UploadedFile
    {
        return $this->uploadedFile;
    }

    public function getFileName(): string
    {
        return $this->fileName;
    }

    public function getFilePath(): string
    {
        return $this->filePath;
    }
}
