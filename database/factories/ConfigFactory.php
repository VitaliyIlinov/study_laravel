<?php

use App\Models\Config;
use Illuminate\Database\Eloquent\Factories\Factory;

final class ConfigFactory extends Factory
{
    protected $model = Config::class;

    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'value' => $this->faker->text(11),
            'description' => $this->faker->text(230),
        ];
    }
}
