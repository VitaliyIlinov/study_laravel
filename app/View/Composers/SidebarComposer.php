<?php

namespace App\View\Composers;

use App\Models\Category;
use Illuminate\View\View;

class SidebarComposer
{
    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
//        $view->with('sidebar', $this->getCategory());
    }

    private function getCategory()
    {
        $cat = Category::all()->toArray();
    }

}
