<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    public const AMOUNT = 15;

    public function run(): void
    {
        Category::factory(15)->create();
//        factory(Category::class, 20)->create()->each(function (Category $category) {
//            $category->info()->save(factory(Info::class)->make());
//        });
    }
}
