<template>
    <div :class="{'animate__animated animate__fadeIn': isAnimate}"
         class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary">
        <h1>{{ info.title }}</h1>
        <div v-html="info.text">
        </div>
    </div>
</template>

<script>
import axios from "../axios"; // Import the axios instance
export default {
// Component data
    data() {
        return {
// Initialize products as an empty array
            info: [],
            template: this.$route.params,
            isAnimate: true
        };
    },

    methods: {
// Method to delete a product
        async tt() {
            const id = this.$route.params.infoId;
            try {
// Make a GET request to the API to fetch the product data
                this.isAnimate = false;
                const response = await axios.get(`/info/${id}`);
// Update the product data with the data from the API
                this.info = response.data.data;
                this.isAnimate = true;
            } catch (error) {
// If an error occurs, log it to the console
                console.error("An error occurred while fetching the product:", error);
            }
        },
    },
    async mounted() {
        this.$watch(
            () => this.$route.params,
            () => {
                this.tt()
            },
            // fetch the data when the view is created and the data is
            // already being observed
            {immediate: true}
        )
// Get the product ID from the route params

    },
// Lifecycle hook that is called after the instance has been created
}
</script>

<style scoped>

</style>
