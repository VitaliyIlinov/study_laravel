<?php

use App\Models\Category;
use Illuminate\Database\Seeder;


class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Category::class, 20)->create();
//        factory(Category::class, 20)->create()->each(function (Category $category) {
//            $category->info()->save(factory(Info::class)->make());
//        });
    }
}
