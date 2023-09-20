<?php

namespace Database\Factories;

use App\Models\TodoList;
use Illuminate\Database\Eloquent\Factories\Factory;

final class TodoListFactory extends Factory
{
    protected $model = TodoList::class;

    public function definition()
    {
        return [
            'description' => $this->faker->text(100),
            'label' => $this->faker->randomElement(['info', 'category', 'todo']),
            'status' => rand(0, 1),
            'sort' => 1,
        ];
    }
}
