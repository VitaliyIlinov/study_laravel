<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
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
