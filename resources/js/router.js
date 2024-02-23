import {createRouter, createWebHistory} from 'vue-router';

import Test from './pages/test/index.vue';
import Info from './pages/Info/index.vue';

const routes = [
    {
        path: '/info/:infoId',
        name: 'Info',
        component: Info,
        meta: {public: true},// Mark this route as private
        beforeEnter: (to, from) => {
            // reject the navigation
            // return false;
        },
    },
    {
        path: '/login',
        name: 'Login',
        component: Test,
        meta: {public: false} // Mark this route as private
    },
];


const router = createRouter({
    history: createWebHistory(),
    routes,
    linkActiveClass: 'active',
});


// router.beforeEach((to, from, next) => {
// // Check if the user is authenticated (e.g., check if a token is stored)
//     const isAuthenticated = !!localStorage.getItem('token');
//
//
//     if (!to.meta.public && !isAuthenticated) {
// // If the route is not public and the user is not authenticated, redirect to login
//         next({ name: 'Login' });
//     } else {
// // Otherwise, allow navigation
//         next();
//     }
// });


export default router;
