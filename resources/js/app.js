import './bootstrap';
import {createApp} from 'vue';
import App from './components/App.vue';
// import store from './store'; // Vuex store?
import router from './router.js'; // Vue router

// Creating a Vue application instance
const app = createApp(App)


// Registering Vuex store and Vue Router with the application
// app.use(store)
app.use(router)


// Mounting the application to an HTML element with id 'app'
app.mount('#app')


/*
https://webdevtrainee.com/how-to-create-a-laravel-10-and-vue-js-3-e-commerce-app/
https://github.com/irabbi360/laravel-vue3-spa-starter/blob/main/resources/js/views/category/posts.vue
https://github.com/themeselection/sneat-vuetify-vuejs-laravel-admin-template-free/blob/main/javascript-version/resources/js/router/index.js
https://github.com/ijklim/laravel10-vue3-openai/blob/main/resources/js/router/index.js
https://github.com/gdarko/laravel-vue-starter/blob/master/resources/js/router/index.js
https://github.com/balajidharma/laravel-vue-admin-panel/blob/1.x/resources/js/Pages/Admin/Category/Type/Edit.vue
https://github.com/trumanwong/laravel-vue-admin/tree/master/resources/js

 */
