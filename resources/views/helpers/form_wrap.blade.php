@php
    $row = $row??null;
    $options = $options??[];
@endphp
<x-form :fields="$fields" :options="$options" :row="$row"/>
