<?php

namespace Database\Seeders;

use App\Models\TodoList;
use Illuminate\Database\Seeder;

class TodoListSeeder extends Seeder
{
    public function run(): void
    {
        TodoList::factory(10)->create();
    }
}
