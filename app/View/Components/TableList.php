<?php

namespace App\View\Components;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Component;

class TableList extends Component
{
    /**
     * @var array
     */
    public $fields;

    /**
     * @var array
     */
    public $rows;

    /**
     * @var string|null
     */
    public $currentPrefix;

    /**
     * Create a new component instance.
     *
     * @param array      $fields
     * @param Collection $rows
     */
    public function __construct(array $fields, Collection $rows)
    {
        $this->fields = $fields;
        $this->rows = $rows;
        $this->currentPrefix = Route::current()->getPrefix();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.table-list');
    }

    public function getLink(...$args)
    {
        $args = implode(DIRECTORY_SEPARATOR, $args);
        return DIRECTORY_SEPARATOR . $this->currentPrefix . DIRECTORY_SEPARATOR . $args;
    }
}
