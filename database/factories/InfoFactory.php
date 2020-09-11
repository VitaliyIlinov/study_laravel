<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Info;
use Faker\Generator as Faker;

$factory->define(Info::class, function (Faker $faker) {
    return [
        'title' => $faker->name,
        'text' => $faker->text(500),
        'category_id' => $faker->numberBetween(0,CategorySeeder::AMOUNT - 1),
        'sort' => rand(1, 20),
    ];
});
