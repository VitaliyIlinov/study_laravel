<?php

namespace App\Repositories\Interfaces;

interface SessionConfigsInterface
{
    public function get(string $key, $default = null);

    public function put(string $key, $value);

    public function forget(string $key);
}
