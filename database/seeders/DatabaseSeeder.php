<?php

namespace Database\Seeders;

use App\Helpers\EnvHelper;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $environmentSeeders = [];

        switch (EnvHelper::env()) {
            case EnvHelper::isTest():
            case EnvHelper::isLocal():
                $environmentSeeders = $this->getLocalSeeders();
                break;
            case EnvHelper::isDev():
                $environmentSeeders = $this->getDevSeeders();
                break;
            case EnvHelper::isProd():
                break;
        }

        $seeders = array_merge($this->getGeneralSeeders(), $environmentSeeders);
        $this->call($seeders);
    }

    private function getLocalSeeders(): array
    {
        return [];
    }

    private function getDevSeeders(): array
    {
        return [];
    }

    private function getGeneralSeeders(): array
    {
        return [
//             CategorySeeder::class,
//             InfoSeeder::class,
            CategoryInfoSeeder::class,
            ConfigSeeder::class,
            TodoListSeeder::class,
        ];
    }
}
