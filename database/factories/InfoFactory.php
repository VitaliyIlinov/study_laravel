<?php

use App\Models\Info;
use Database\Seeders\CategorySeeder;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

final class InfoFactory extends Factory
{
    protected $model = Info::class;

    public function definition()
    {
        return [
            'title' => $this->faker->name,
            'text' => $this->faker->text(500),
            'category_id' => $this->faker->numberBetween(0, CategorySeeder::AMOUNT - 1),
            'slug' => Str::slug($this->faker->name, '-'),
            'sort' => rand(1, 20),
        ];
    }
}
