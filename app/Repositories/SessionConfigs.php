<?php

namespace App\Repositories;

use App\Repositories\Interfaces\SessionConfigsInterface;

class SessionConfigs implements SessionConfigsInterface
{
    public const SESSION_EDITOR_KEY = 'EDITOR';

    public const EDITOR_ONE = 'ck_editor';

    public const EDITOR_TWO = 'code_mirror';

    public const AVAILABLE_EDITOR = [
        'ck_editor',
        'code_mirror',
    ];

    public function get()
    {
        // TODO: Implement get() method.
    }

    public function set()
    {
        // TODO: Implement set() method.
    }
}
