<?php

namespace App\Http\Resources;

use App\Models\Info;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

/**
 * @mixin Info
 */
class InfoResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'text' => $this->text,
            'slug' => $this->slug,
            'status' => $this->status,
            'category_id' => $this->category_id,
            'sort' => $this->sort,
        ];
    }
}
