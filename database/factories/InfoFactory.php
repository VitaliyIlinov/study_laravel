<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Info;
use Faker\Generator as Faker;

$factory->define(Info::class, function (Faker $faker) {
    return [
        'title' => $faker->name,
        'Text' => $faker->text,
        'category_id' => $faker->numberBetween(1,19)
    ];
});
