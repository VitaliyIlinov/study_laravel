<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Info;
use Faker\Generator as Faker;

$factory->define(Info::class, function (Faker $faker) {
    return [
        'title' => $faker->name,
        'text' => $faker->text,
        'category_id' => $faker->numberBetween(1,CategorySeeder::AMOUNT - 1),
        'sort' => $faker->numberBetween(0,20),
    ];
});
