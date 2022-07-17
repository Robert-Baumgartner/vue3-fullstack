<script setup lang="ts">
import { ref } from 'vue';
import { useMusicStore } from '../stores/MusicStore';

let searchVisible = ref(false);

const toggleSearch = () => {
  searchVisible.value = !searchVisible.value;
  useMusicStore().searchTerm = '';
};
</script>

<template>
  <div v-if="$route.path != '/' && $route.path != '/home'" class="row items-center">
    <q-input dense v-if="searchVisible" v-model="useMusicStore().searchTerm"  />
    <q-icon @click="toggleSearch" name="search" class="text-h5 q-mr-sm"></q-icon>

  </div>
</template>

<style lang="sass" scoped></style>
