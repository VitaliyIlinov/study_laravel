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
    protected $fields;

    /**
     * @var Collection
     */
    protected $rows;

    /**
     * @var bool
     */
    protected $crudAjax;

    /**
     * @var string|null
     */
    protected $currentPrefix;

    /**
     * Create a new component instance.
     *
     * @param array      $fields
     * @param Collection $rows
     * @param bool       $crudAjax
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

    public function getFields(): array
    {
        return $this->fields;
    }

    public function getRows(): Collection
    {
        return $this->rows;
    }

    public function getLink(...$args)
    {
        $args = implode(DIRECTORY_SEPARATOR, $args);
        return DIRECTORY_SEPARATOR . $this->currentPrefix . DIRECTORY_SEPARATOR . $args;
    }

    public function buildCreateButton(?string $link = null, $iClass = 'fas fa-lg fa-plus')
    {
        $link = is_string($link) ?$link: $this->getLink('create');
        return $this->generateButton($link, 'get', $iClass, 'createRow', $this->crudAjax);
    }

    public function buildEditButton($id, $iClass = 'far fa-edit')
    {
        $link = is_string($id) ?$id: $this->getLink('edit', $id);
        return $this->generateButton($link, 'get', $iClass, 'saveRow', $this->crudAjax);
    }

    public function buildDeleteButton($id, $iClass = 'fas fa-trash')
    {
        $link = is_string($id) ?$id: $this->getLink($id);
        return $this->generateButton($link, 'delete', $iClass, 'deleteRow', true);
    }

    private function generateButton(
        string $href,
        string $method,
        string $iClass,
        string $jsOnSuccess,
        bool $crudAjax
    ) {
        return strtr(
            "<a [:href] data-method=':method' data-onsuccess=':OnSuccess' class=':class'><i class=':iClass'></i></a>",
            [
                '[:href]'    => $crudAjax ? "data-href='{$href}'" : "href='{$href}'",
                ':method'    => $method,
                ':OnSuccess' => $jsOnSuccess,
                ':class'     => 'btn p-1',
                ':iClass'    => $iClass,
            ]
        );
    }
}
