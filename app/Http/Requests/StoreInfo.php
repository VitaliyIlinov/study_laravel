<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreInfo extends FormRequest
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
            'title' => ['required', 'max:255'],
            'category_id' => ['required', 'int'],
            'text' => ['required', 'string'],
            'sort' => ['required', 'int'],
        ];
    }
}
