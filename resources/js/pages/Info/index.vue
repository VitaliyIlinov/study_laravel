<template>
  <div :class="{'animate__animated animate__fadeIn': isAnimate}"
       class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary">
    <h1>{{ info.title }}</h1>
    <div v-html="info.text">
    </div>
  </div>
</template>

<script setup>
import {ref, watch, onMounted} from 'vue';
import axios from "../../axios";
import {useRoute} from "vue-router";

const info = ref({});
const isAnimate = ref(true);
const route = useRoute();

async function get() {
  const id = route.params.infoId;
  try {
// Make a GET request to the API to fetch the product data
    isAnimate.value = false;
    const response = await axios.get(`/info/${id}`);
// Update the product data with the data from the API
    info.value = response.data.data;
    isAnimate.value = true;
  } catch (error) {
// If an error occurs, log it to the console
    console.error("An error occurred while fetching the product:", error);
  }
}

watch(
    () => route.params,
    () => {
      get()
    },
)

onMounted(() => {
  get();
})

</script>
<style scoped>

</style>