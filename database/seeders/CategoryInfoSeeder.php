<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Info;
use Illuminate\Database\Seeder;

class CategoryInfoSeeder extends Seeder
{
    private array $rows = [
        ['id' => 1, 'name' => 'Solid', 'parent_id' => 0],
        ['id' => 2, 'name' => 'Single responsibility', 'parent_id' => 1],
        ['id' => 3, 'name' => 'Open closed', 'parent_id' => 1],
        ['id' => 4, 'name' => 'Barbara Liskov', 'parent_id' => 1],
        ['id' => 5, 'name' => 'Interface segregation', 'parent_id' => 1],
        ['id' => 6, 'name' => 'Dependency inversion', 'parent_id' => 1],
        ['id' => 7, 'name' => 'Php', 'parent_id' => 0],
        ['id' => 8, 'name' => 'Class,object,oop', 'parent_id' => 7],
        ['id' => 9, 'name' => 'Kiss&&dry', 'parent_id' => 7],
        ['id' => 10, 'name' => 'Question - answer', 'parent_id' => 7],
        ['id' => 11, 'name' => 'Mysql', 'parent_id' => 0],
        ['id' => 12, 'name' => 'Engine', 'parent_id' => 11],
        ['id' => 13, 'name' => 'Indexes', 'parent_id' => 11],
        ['id' => 14, 'name' => 'Relation type', 'parent_id' => 11],
        ['id' => 15, 'name' => 'Query', 'parent_id' => 11],
        ['id' => 16, 'name' => 'Joins', 'parent_id' => 11],
        ['id' => 17, 'name' => 'Useful info', 'parent_id' => 11],
        ['id' => 18, 'name' => 'Git', 'parent_id' => 0],
        ['id' => 19, 'name' => 'Rebase', 'parent_id' => 18],
        ['id' => 20, 'name' => 'Merge', 'parent_id' => 18],
        ['id' => 21, 'name' => 'Cherry_pick', 'parent_id' => 18],
        ['id' => 22, 'name' => 'Command line', 'parent_id' => 0],
        ['id' => 23, 'name' => 'Chmod', 'parent_id' => 22],
        ['id' => 24, 'name' => 'Docker', 'parent_id' => 0],
        ['id' => 25, 'name' => 'Main', 'parent_id' => 24],
        ['id' => 26, 'name' => 'Pattern', 'parent_id' => 0],
        ['id' => 27, 'name' => 'What is pattern', 'parent_id' => 26],
        ['id' => 28, 'name' => 'Why learn patterns', 'parent_id' => 26],
        ['id' => 29, 'name' => 'Criticism', 'parent_id' => 26],
        ['id' => 30, 'name' => 'Classification', 'parent_id' => 26],
        ['id' => 31, 'name' => 'Creational patterns', 'parent_id' => 30],
        ['id' => 32, 'name' => 'Factory method', 'parent_id' => 31],
        ['id' => 33, 'name' => 'Abstract factory', 'parent_id' => 31],
        ['id' => 34, 'name' => 'Builder', 'parent_id' => 31],
        ['id' => 35, 'name' => 'Singleton', 'parent_id' => 31],
        ['id' => 36, 'name' => 'Structural patterns', 'parent_id' => 30],
    ];

    public function run(): void
    {
        foreach ($this->rows as $row) {
            $cat = Category::create($row);
            Info::factory()->create([
                'title' => $cat->name . " title info",
                'category_id' => $cat->id,
            ]);
        }
    }
}
