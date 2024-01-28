<template>
    <header>
    </header>
    <div class="container-fluid">
        <div class="row">
            <div class="sidebar border border-right col-md-4 col-lg-3 col-xl-2 p-0 bg-body-tertiary">
                <Navbar/>
            </div>
            <main class="col-md-8 ms-sm-auto col-lg-9 col-xl-10 px-md-4">
                <router-view></router-view>
            </main>
        </div>
    </div>
</template>

<script>
// Importing Navbar component
import Navbar from './Navbar.vue';

export default {
// Registering Navbar component
    components: {
        Navbar,
    },
// Name of the root component
    name: 'App',
}
</script>

<style>

</style>
