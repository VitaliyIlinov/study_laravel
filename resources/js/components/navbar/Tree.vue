<template>
  <ul class="tree-list nav nav-pills flex-column mb-auto list-unstyled ps-0">
    <li v-for="item in data" :key="item.id" class="nav-item">
            <button
                type="button" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
                data-bs-toggle="collapse"
                data-bs-target="#{{item.id}}"
                aria-expanded="false">
                {{ item.name }}
            </button>
      <ul v-if="item.info && item.info.length" class="list-unstyled ps-0">
        <li v-for="info in item.info" :key="info.id" class="nav-item">
                    <router-link class="nav-link" :to="{ name: 'Info', params: { infoId: info.slug }}">{{
                            info.title
                        }}
                    </router-link>
                </li>
            </ul>
      <tree v-if="item.childs" :data="item.childs"></tree>
        </li>
    </ul>
</template>

<script setup>

defineProps({
  data: {
    type: Object,
    required: true
  },
})

</script>

<style lang="scss" scoped>
.tree-list ul {
    padding-left: 16px;
    margin: 6px 0;
}
</style>
