<?php

namespace App\Http\Controllers\Admin;

use App\Events\FileUploaded;
use App\Http\Controllers\Controller;
use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class FileController extends Controller
{
    public function store(Request $request)
    {
        $file = $request->file('file');
        $path = Str::afterLast($request->get('location_path'), '/');

        $fileName = time() . '_' . str_replace(' ', '_', $file->getClientOriginalName());
        $filePath = DIRECTORY_SEPARATOR . $file->storeAs("images/{$path}", $fileName, 'public');

        FileUploaded::dispatch($file, $filePath, $fileName);

        return response()->json([
            'link' => $filePath,
        ]);
    }

    public function delete(Request $request)
    {
        $filePath = $request->get('filePath');
        Storage::delete('public' . $filePath);
        File::query()->where('file_path', $filePath)->delete();
        return response()->json(['message' => 'success']);
    }
}
