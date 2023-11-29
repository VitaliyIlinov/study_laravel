<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCategory extends FormRequest
{
    protected function prepareForValidation(): void
    {
        $this->merge([
            'status' => $this->boolean('status'),
        ]);
    }

    public function rules(): array
    {
        return [
            'name' => ['required', 'max:55'],
            'parent_id' => ['int'],
            'sort' => ['int'],
        ];
    }
}
