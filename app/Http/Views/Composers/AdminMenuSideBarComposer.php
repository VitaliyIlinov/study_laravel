<?php

namespace App\Http\Views\Composers;

use Illuminate\View\View;

class AdminMenuSideBarComposer
{
    private static $isLoaded = false;

    public function compose(View $view)
    {
        if (self::$isLoaded) {
            return;
        }

        $view->with('menu', [
            [
                'trans'      => 'Starter Pages',
                'icon_class' => 'fas fa-tachometer-alt',
                'childs'     => [
                    'active_page'   => [
                        'trans'      => 'Active Page',
                        'icon_class' => 'far fa-circle',
                    ],
                    'inactive_page' => [
                        'trans'      => 'Active Page',
                        'icon_class' => 'far fa-circle',
                    ],
                ],
            ],
            [
                'url'        => route('home'),
                'trans'      => 'Dashboard',
                'icon_class' => 'fas fa-tachometer-alt',
            ],
            [
                'url'        => route('category_list'),
                'trans'      => 'Category',
                'icon_class' => 'fas fa-copy',
            ],
            [
                'url'        => route('info_list'),
                'trans'      => 'Info',
                'icon_class' => 'fas fa-edit',
            ],
            [
                'url'             => route('config_list'),
                'trans'           => 'Config',
                'icon_class'      => 'fas fa-tools',
                'additional_text' => '<span class="right badge badge-danger">New</span>',
            ],
            [
                'url'        => route('todo_list'),
                'trans'      => 'To Do list',
                'icon_class' => 'fas fa-tasks',
            ],

        ]);

        self::$isLoaded = true;
    }
}

