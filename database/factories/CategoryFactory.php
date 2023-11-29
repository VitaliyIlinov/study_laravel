<?php

namespace Database\Factories;

use App\Models\Category;
use Database\Seeders\CategorySeeder;
use Illuminate\Database\Eloquent\Factories\Factory;

final class CategoryFactory extends Factory
{
    protected $model = Category::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->name,
            'parent_id' => $this->faker->numberBetween(0, CategorySeeder::AMOUNT - 1),
            'sort' => rand(1, 20),
        ];
    }
}
