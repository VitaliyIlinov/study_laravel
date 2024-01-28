<template>
    <!-- Links for different routes. They are conditionally rendered based on the 'isLoggedIn' state. -->
    <!--        <router-link to="/add-product" v-if="!isLoggedIn">Add Product</router-link> |-->
    <!--        <router-link to="/login" v-if="!isLoggedIn">Login</router-link> |-->
    <!--        <router-link to="/register" v-if="!isLoggedIn">Register</router-link> |-->
    <!--        &lt;!&ndash; Logout button that calls 'logout' action when clicked &ndash;&gt;-->
    <!--        <a href="#" @click="logout" v-if="isLoggedIn">Logout</a>-->

    <div class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary">
        <a href="/"
           class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
            <svg class="bi pe-none me-2" width="40" height="32">
                <use xlink:href="#bootstrap"></use>
            </svg>
            <span class="fs-4">Sidebar</span>
        </a>
        <hr>
        <!--        <ul class="nav nav-pills flex-column mb-auto">-->
        <tree :treeData="menu"></tree>
        <!--            <li>-->
        <!--                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"-->
        <!--                        data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">-->
        <!--                    Orders-->
        <!--                </button>-->
        <!--                <div class="collapse" id="orders-collapse">-->
        <!--                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">-->
        <!--                        <li>-->
        <!--                            <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">New-->
        <!--                            </a>-->
        <!--                        </li>-->
        <!--                        <li>-->
        <!--                            <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">-->
        <!--                                Processed-->
        <!--                            </a>-->
        <!--                        </li>-->
        <!--                    </ul>-->
        <!--                </div>-->
        <!--            </li>-->
        <!--        </ul>-->
        <hr>
        <div class="dropdown">
            <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
               data-bs-toggle="dropdown" aria-expanded="false">
                <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                <strong>mdo</strong>
            </a>
            <ul class="dropdown-menu text-small shadow">
                <li>
                    <a class="dropdown-item" href="#">New project...</a>
                </li>
                <li>
                    <a class="dropdown-item" href="#">Settings</a>
                </li>
                <li>
                    <a class="dropdown-item" href="#">Profile</a>
                </li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li>
                    <a class="dropdown-item" href="#">Sign out</a>
                </li>
            </ul>
        </div>
    </div>
</template>


<script>
import axios from "../axios";
import tree from "./Category/Tree.vue";

export default {
    components: {
        tree,
    },
// Component data
    data() {
        return {
// Initialize products as an empty array
            menu: []
        };
    },
    methods: {
// Method to delete a product
    },
// Lifecycle hook that is called after the instance has been created
    async created() {
        try {
// When the component is created, fetch the products from the API
            const response = await axios.get('/category/menu');
// Update the products array with the data from the API
            this.menu = response.data.data;
        } catch (error) {
// If an error occurs, log it to the console
            console.error("An error occurred while fetching the products:", error);
        }
    }
}
</script>
