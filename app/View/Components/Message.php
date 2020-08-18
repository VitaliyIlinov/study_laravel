<?php

namespace App\View\Components;

use Illuminate\Support\Facades\Session;
use Illuminate\Support\ViewErrorBag;
use Illuminate\View\Component;

class Message extends Component
{
    private const MESSAGE_KEYS = [
        'success',
        'error',
        'warning',
        'info',
    ];

    /**
     * @var array
     */
    public $messages = [];

    public $isToastr;

    /**
     * Create a new component instance.
     *
     * @param bool         $isToastr
     */
    public function __construct(bool $isToastr = true)
    {
        $this->isToastr = $isToastr;
        $this->getMessages();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.message');
    }

    public function isToastrScript()
    {
        return $this->isToastr;
    }

    /**
     * @return void
     * @see resources/views/components/message.blade.php
     */
    private function getMessages()
    {
        foreach (self::MESSAGE_KEYS as $key) {
            if (Session::has($key)) {
                $this->messages[$key] = Session::get($key);
            };
        }
    }
}
