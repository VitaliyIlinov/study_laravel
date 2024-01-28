<template>
    <ul class="tree-list nav nav-pills flex-column mb-auto">
        <li v-for="item in this.treeData" :key="item.id">
            <button
                type="button" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
                data-bs-toggle="collapse"
                data-bs-target="#{{item.id}}"
                aria-expanded="false">
                {{ item.name }}
            </button>
            <ul v-if="item.info && item.info.length">
                <li v-for="info in item.info" :key="info.id">
                    <router-link class="nav-link" :to="{ name: 'Info', params: { infoId: info.slug }}">{{
                            info.title
                        }}
                    </router-link>
                </li>
            </ul>
            <tree v-if="item.childs" :treeData="item.childs"></tree>
        </li>
    </ul>
</template>

<script>

export default {
    name: "tree",
    props: {
        treeData: Object
    },
};
</script>

<style>
.tree-list ul {
    padding-left: 16px;
    margin: 6px 0;
}
</style>
