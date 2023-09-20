<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
//             CategorySeeder::class,
//             InfoSeeder::class,
            CategoryInfoSeeder::class,
            ConfigSeeder::class,
            TodoListSeeder::class,
        ]);
    }
}
