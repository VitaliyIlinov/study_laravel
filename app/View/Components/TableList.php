<?php

namespace App\View\Components;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Component;
use Illuminate\View\View;

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
     * @var bool
     */
    private $crudAjax;

    /**
     * @var string|null
     */
    private $currentPrefix;

    /**
     * Create a new component instance.
     *
     * @param array      $fields
     * @param Collection $rows
     */
    public function __construct(array $fields, Collection $rows, bool $crudAjax = false)
    {
        $this->fields = $fields;
        $this->rows = $rows;
        $this->crudAjax = $crudAjax;
        $this->currentPrefix = Route::current()->getPrefix();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return View|string
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

    private function generateButton(
        string $href,
        string $method,
        string $iClass,
        string $jsOnSuccess,
        bool $crudAjax
    ) {
        return strtr("<a [:href] data-method=':method' data-onsuccess=':OnSuccess' class=':class'><i class=':iClass'></i></a>",
            [
                '[:href]'    => $crudAjax ? "data-href='{$href}'" : "href='{$href}'",
                ':method'    => $method,
                ':OnSuccess' => $jsOnSuccess,
                ':class'     => 'btn p-1',
                ':iClass'    => $iClass,
            ]);
    }

    public function buildCreateButton($iClass = 'fas fa-lg fa-plus')
    {
        return $this->generateButton($this->getLink('create'), 'get', $iClass, 'createRow', $this->crudAjax);
    }

    public function buildEditButton(int $id, $iClass = 'far fa-edit')
    {
        return $this->generateButton($this->getLink('edit', $id), 'get', $iClass, 'saveRow', $this->crudAjax);
    }

    public function buildDeleteButton(int $id, $iClass = 'fas fa-trash')
    {
        return $this->generateButton($this->getLink($id), 'delete', $iClass, 'deleteRow', true);
    }
}
