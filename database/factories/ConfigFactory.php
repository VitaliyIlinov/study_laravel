<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Config;
use Faker\Generator as Faker;

$factory->define(Config::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'value' => $faker->text(11),
        'description' => $faker->text(230),
    ];
});
