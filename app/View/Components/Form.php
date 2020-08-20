<?php

namespace App\View\Components;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Route;
use Illuminate\View\Component;

class Form extends Component
{
    /**
     * @var array
     */
    public $fields;

    /**
     * @var Model|null
     */
    public $row;

    /**
     * @var string
     */
    public $method;

    /**
     * @var string
     */
    public $action;

    /**
     * @var string
     */
    public $form;

    /**
     * @var string|null
     */
    public $currentPrefix;

    /**
     * Create a new component instance.
     *
     * @param array      $fields
     * @param array      $options
     * @param Model|null $row
     */
    public function __construct(array $fields, array $options = [], ?Model $row = null)
    {
        $this->fields = $fields;
        $this->method = $options['method'] ?? 'post';
        $this->action = $options['action'] ?? '';
        $this->form = $options['form'] ?? 'edit';
        $this->row = $row;
        $this->currentPrefix = DIRECTORY_SEPARATOR . Route::current()->getPrefix();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.form');
    }

    public function buildLabel(string $name, $classname = '')
    {
        return strtr("<label for=':for' class=':class'>:value</label>", [
            ':for'   => $name,
            ':class' => $classname,
            ':value' => $this->fields[$name]['trans'] ?? $name,
        ]);
    }

    private function generateInput(string $name, string $classname = 'form-control', ?string $attributes = null)
    {
        return strtr("<input type=':type' :other class=':class' name=':name' id=':id' placeholder=':placeholder'>",
            [
                ':type'        => $this->fields[$name]['type'],
                ':class'       => $classname,
                ':name'        => $name,
                ':id'          => $name,
                ':placeholder' => $name,
                ':other'       => $attributes,
            ]);
    }

    public function buildCheckbox(string $name, string $classname = 'form-check-input')
    {
        return $this->generateInput($name, $classname, $this->getValue($name) ? ' checked' : '');
    }

    public function buildInput(string $name, string $classname = 'form-control')
    {
        return $this->generateInput($name, $classname, "value='{$this->getValue($name)}'");
    }

    public function buildSelect(string $name, string $classname = 'form-control')
    {
        return strtr("<select class=':class' id=':id' name=':name'>:options</select>", [
            ':class'   => $classname,
            ':id'      => $name,
            ':name'    => $name,
            ':options' => implode(' ', $this->getOptions($name)),
        ]);
    }

    public function buildTextarea(string $name, string $classname = 'form-control')
    {
        return strtr("<textarea cols='40' class=':class' id=':id' name=':name' rows=':rows'\">:value</textarea>", [
            ':class' => $classname,
            ':id'    => $name,
            ':name'  => $name,
            ':value' => $this->getValue($name),
            ':rows'  => 25,
        ]);
    }

    private function getOptions(string $name): array
    {
        $result = [];
        $option = $this->getValue($name);
        foreach ($this->fields[$name]['values'] as $id => $value) {
            $isSelected = $id === $option ? 'selected' : '';
            $result[] = "<option {$isSelected} value={$id}>{$value}</option>";
        }
        return $result;
    }

    private function hasValue(): bool
    {
        return $this->form === 'edit' && $this->row !== null;
    }

    private function getValue(string $name)
    {
        return $this->hasValue()
            ? $this->row->$name
            : old($name);
    }
}
