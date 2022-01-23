<?php

namespace App\View\Components;

use Illuminate\Support\Collection;
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

    protected $defaultSettings = [
        'createIcon' => '<i class="fas fa-lg fa-plus"></i>',
        'editIcon' => '<i class="far fa-edit"></i>',
        'deleteIcon' => '<i class="fas fa-trash"></i>',
        'btnClass' => 'btn p-1',
        'afterCreateRowEvent' => 'createRow',
        'afterSaveRowEvent' => 'saveRow',
        'afterDeleteRowEvent' => 'deleteRow',
    ];

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

    public function buildCreateButton(?string $link = null)
    {
        $link = is_string($link) ?$link: $this->getLink('create');
        return $this->generateButton(
            $link,
            'get',
            $this->defaultSettings['createIcon'],
            $this->defaultSettings['afterCreateRowEvent'],
            $this->crudAjax
        );
    }

    public function buildEditButton($id)
    {
        $link = is_string($id) ?$id: $this->getLink('edit', $id);
        return $this->generateButton(
            $link,
            'get',
            $this->defaultSettings['editIcon'],
            $this->defaultSettings['afterSaveRowEvent'],
            $this->crudAjax
        );
    }

    public function buildDeleteButton($id, $iClass = 'fas fa-trash')
    {
        $link = is_string($id) ?$id: $this->getLink($id);
        return $this->generateButton(
            $link,
            'delete',
            $this->defaultSettings['deleteIcon'],
            $this->defaultSettings['afterDeleteRowEvent']
        );
    }

    private function generateButton(
        string $href,
        string $method,
        string $iconClass,
        string $jsOnSuccess,
        bool $crudAjax = true
    ) {
        return strtr(
            "<a [:href] data-method=':method' data-onsuccess=':OnSuccess' class=':class'>:Icon</a>",
            [
                '[:href]'    => $crudAjax ? "data-href='{$href}'" : "href='{$href}'",
                ':method'    => $method,
                ':OnSuccess' => $jsOnSuccess,
                ':class' => $this->defaultSettings['btnClass'],
                ':Icon' => $iconClass,
            ]
        );
    }
}
