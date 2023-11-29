<?php

declare(strict_types=1);

namespace App\Helpers;

use Illuminate\Support\Facades\App;

final class EnvHelper
{
    public const ENV_LOCAL = 'local';
    public const ENV_DEV = 'dev';
    public const ENV_TESTING = 'testing';
    public const ENV_PROD = 'production';

    public static function env(): string
    {
        return App::environment();
    }

    public static function isLocal(): bool
    {
        return App::environment(self::ENV_LOCAL) === true;
    }

    public static function isDev(): bool
    {
        return App::environment(self::ENV_DEV) === true;
    }

    public static function isTest(): bool
    {
        return App::environment(self::ENV_TESTING) === true;
    }

    public static function isProd(): bool
    {
        return App::environment(self::ENV_PROD) === true;
    }
}
