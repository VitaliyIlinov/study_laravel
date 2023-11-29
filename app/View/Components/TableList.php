<?php

namespace App\View\Components;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Component;
use Illuminate\View\View;

class TableList extends Component
{
    protected array $fields;

    protected Collection $rows;

    protected ?string $currentPrefix;

    protected array $defaultSettings = [
        'createIcon' => '<i class="fas fa-lg fa-plus"></i>',
        'editIcon' => '<i class="far fa-edit"></i>',
        'deleteIcon' => '<i class="fas fa-trash"></i>',
        'btnClass' => 'btn p-1',
        'afterCreateRowEvent' => 'showForm',
        'afterSaveRowEvent' => 'showEditForm',
        'afterDeleteRowEvent' => 'deleteRow',
    ];


    public function __construct(array $fields, Collection $rows)
    {
        $this->fields = $fields;
        $this->rows = $rows;
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

    public function getLink(...$args): string
    {
        $args = implode(DIRECTORY_SEPARATOR, $args);
        return DIRECTORY_SEPARATOR . $this->currentPrefix . DIRECTORY_SEPARATOR . $args;
    }

    public function buildCreateButton(?string $link = null): string
    {
        $link = is_string($link) ? $link : $this->getLink('create');
        return $this->generateButton(
            $link,
            'get',
            $this->defaultSettings['createIcon'],
            $this->defaultSettings['afterCreateRowEvent'],
        );
    }

    public function buildEditButton($id): string
    {
        $link = is_string($id) ? $id : $this->getLink($id);
        return $this->generateButton(
            $link,
            'get',
            $this->defaultSettings['editIcon'],
            $this->defaultSettings['afterSaveRowEvent'],
        );
    }

    public function buildDeleteButton($id, $iClass = 'fas fa-trash'): string
    {
        $link = is_string($id) ? $id : $this->getLink($id);
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
    ): string {
        return strtr(
            "<a [:href] data-method=':method' data-onsuccess=':OnSuccess' class=':class'>:Icon</a>",
            [
                '[:href]' => "href='{$href}'",
                ':method' => $method,
                ':OnSuccess' => $jsOnSuccess,
                ':class' => $this->defaultSettings['btnClass'],
                ':Icon' => $iconClass,
            ]
        );
    }
}
