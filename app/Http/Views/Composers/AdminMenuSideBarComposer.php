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
                'url' => route('admin.home'),
                'trans' => 'Dashboard',
                'icon_class' => 'fas fa-tachometer-alt',
            ],
            [
                'url' => route('admin.category.list'),
                'trans' => 'Category',
                'icon_class' => 'fas fa-copy',
            ],
            [
                'url' => route('admin.info.list'),
                'trans' => 'Info',
                'icon_class' => 'fas fa-edit',
            ],
            [
                'url' => route('admin.config.list'),
                'trans' => 'Config',
                'icon_class' => 'fas fa-tools',
                'additional_text' => '<span class="right badge badge-danger">New</span>',
            ],
          /*  [
                'url'             => route('env_list'),
                'trans'           => 'Env List',
                'icon_class'      => 'fas fa-tools',
            ],*/
            [
                'url' => route('admin.todo.list'),
                'trans' => 'To Do list',
                'icon_class' => 'fas fa-tasks',
            ],
            [
                'url' => route('admin.question.main'),
                'trans' => 'Interview Questions',
                'icon_class' => 'fas fa-question',
            ],

        ]);

        self::$isLoaded = true;
    }
}
