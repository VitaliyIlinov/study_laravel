<?php

namespace App\View\Components;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Component;
use Illuminate\View\View;

class Form extends Component
{
    private array $fields;

    /**
     * @var Model|null
     */
    private $row;

    private ?Model $method;

    private string $action;

    private string $currentPrefix;

    public function __construct(array $fields, array $options = [], ?Model $row = null)
    {
        $this->currentPrefix = DIRECTORY_SEPARATOR . Route::current()->getPrefix() . DIRECTORY_SEPARATOR;
        $this->fields = $fields;
        $this->row = $row;
        $this->method = 'post';
        if ($this->isFormCreate()) {
            $this->action = $this->currentPrefix . 'create';
        } else {
            $this->method = 'post';
            $this->action = $this->currentPrefix . $this->row->id;
        }
    }

    public function getAction(): string
    {
        return $this->action;
    }

    public function getMethod(): string
    {
        return $this->method;
    }

    public function getFields(): array
    {
        return $this->fields;
    }

    /**
     * if model is empty -> form create
     */
    private function isFormCreate(): bool
    {
        return is_null($this->row);
    }

    /**
     * Get the view / contents that represent the component.
     * @return View|string
     */
    public function render()
    {
        return view('components.form');
    }

    public function buildLabel(string $name, $classname = 'col-sm-2 col-form-label'): string
    {
        return strtr("<label for=':for' class=':class'>:value</label>", [
            ':for' => $name,
            ':class' => $classname,
            ':value' => $this->fields[$name]['trans'] ?? $name,
        ]);
    }

    private function generateInput(string $name, string $classname = 'form-control', ?string $attributes = null): string
    {
        return strtr(
            "<input type=':type' autocomplete='off' :other class=':class' name=':name' id=':id' placeholder=':placeholder'>",
            [
                ':type' => $this->fields[$name]['type'],
                ':class' => $classname,
                ':name' => $name,
                ':id' => $name,
                ':placeholder' => $name,
                ':other' => $attributes,
            ]
        );
    }

    public function buildCheckbox(string $name, string $classname = 'form-control'): string
    {
        return $this->generateInput($name, $classname, $this->getValue($name) ? ' checked' : '');
    }

    public function buildInput(string $name, string $classname = 'form-control'): string
    {
        return $this->generateInput($name, $classname, "value='{$this->getValue($name)}'");
    }

    public function buildSelect(string $name, string $classname = 'form-control'): string
    {
        return strtr("<select class=':class' id=':id' name=':name'>:options</select>", [
            ':class' => $classname,
            ':id' => $name,
            ':name' => $name,
            ':options' => implode(' ', $this->getOptions($name)),
        ]);
    }

    public function buildTextarea(string $name, string $classname = 'form-control'): string
    {
        return strtr("<textarea cols='40' class=':class' id=':id' name=':name' rows=':rows'\">:value</textarea>", [
            ':class' => $classname,
            ':id' => $name,
            ':name' => $name,
            ':value' => $this->getValue($name),
            ':rows' => 15,
        ]);
    }

    private function getOptions(string $name): array
    {
        $result = [];
        $option = $this->getValue($name);
        foreach ($this->fields[$name]['values']() as $id => $value) {
            $isSelected = $id === $option ? 'selected' : '';
            $result[] = "<option {$isSelected} value={$id}>{$value}</option>";
        }
        return $result;
    }

    private function hasValue(): bool
    {
        return !$this->isFormCreate();
    }

    private function getValue(string $name)
    {
        return $this->hasValue()
            ? $this->row->$name
            : old($name);
    }
}
