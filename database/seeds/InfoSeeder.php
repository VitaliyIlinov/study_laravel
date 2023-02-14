<?php

namespace Database\Seeders;

use App\Models\Info;
use Illuminate\Database\Seeder;

class InfoSeeder extends Seeder
{
    public function run(): void
    {
        Info::factory(CategorySeeder::AMOUNT * 3)->create();
    }
}
