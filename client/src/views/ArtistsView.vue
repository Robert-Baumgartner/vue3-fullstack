<script setup lang="ts">
import { ref, computed } from 'vue';
import { useMusicStore } from '../stores/musicStore';
import { useMaxPages, useGetPage } from '../composables/pagination';

const musicStore = useMusicStore();
const promises = [];
promises.push(useMusicStore().fetchArtists());
promises.push(useMusicStore().fetchAlbums());
await Promise.all(promises)

const PAGE_SIZE = 15;

let maxPages = ref(useMaxPages(musicStore.artists, PAGE_SIZE));

let current = ref(1);

const currentArtists = computed(() => {
  const artists = musicStore.artists.filter((el) =>
    el.name.toLowerCase().includes(musicStore.searchTerm.toLowerCase()),
  );
  maxPages.value = useMaxPages(artists, PAGE_SIZE);
  return useGetPage(artists, current.value, PAGE_SIZE);
});
</script>

<template>

  <div>
    <q-pagination
      v-model="current"
      :max="maxPages"
      color="secondary"
      text-color="dark"
      class="block q-mx-auto q-mt-md"
    >
    </q-pagination>
  </div>
  <div class="row justify-center q-mt-xs">
    <q-list separator class="q-mx-lg">
      <q-expansion-item
        v-for="artist in currentArtists"
        :label="artist.name"
        header-class="text-subtitle1 q-my-sm"
      >
        <q-item class="">
          {{ artist.description }}
        </q-item>
      </q-expansion-item>
    </q-list>
  </div>
</template>

<style lang="sass" scoped>
.q-list
  width: 75%
</style>
