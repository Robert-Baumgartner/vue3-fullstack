<script setup lang="ts">
import { ref, computed } from 'vue';
import { useMusicStore } from '../stores/musicStore';
import { useMaxPages, useGetPage } from '../composables/pagination';

const musicStore = useMusicStore();
await musicStore.fetchAlbums();

const PAGE_SIZE = 10;
let maxPages = ref(useMaxPages(musicStore.albums, PAGE_SIZE));

let current = ref(1);
let dialogCover = ref(false);
let dialogMore = ref(false);
let albumCover = ref('');

const currentAlbums = computed(() => {
  const albums = musicStore.albums.filter((el) =>
    el.title.toLowerCase().includes(musicStore.searchTerm.toLowerCase()),
  );
  maxPages.value = useMaxPages(albums, PAGE_SIZE);
  return useGetPage(albums, current.value, PAGE_SIZE);
});

const limitDisplayString = (str: string, limit: number) => {
  if (str.length > limit) {
    return str.substring(0, limit) + ' ...';
  }
  return str;
};

const showCover = (cover: string) => {
  albumCover.value = cover;
  dialogCover.value = true;
};
</script>

<template>
  <div>
    <q-pagination
      v-model="current"
      :max="maxPages"
      color="secondary"
      text-color="dark"
      class="block q-mx-auto q-my-sm"
    >
    </q-pagination>
  </div>
  <div class="row justify-center">
    <q-card v-for="album in currentAlbums" class="my-card q-ma-sm column justify-between">
      <div>
        <q-img @click="showCover(album.cover)" fit="contain" :src="album.cover" height="300px" />

        <q-card-section>
          <div class="artist text-subtitle1">{{ limitDisplayString(album.artist, 60) }}</div>
          <div class="album text-subtitle2 q-mt-lg">{{ limitDisplayString(album.title, 70) }}</div>
        </q-card-section>
      </div>
      <q-card-actions>
        <q-btn @click="dialogMore = true" flat>More...</q-btn>
      </q-card-actions>
    </q-card>
    <q-dialog v-model="dialogCover">
      <q-card @click="dialogCover = false" class="lightbox">
        <q-img fit="contain" :src="albumCover" />
      </q-card>
    </q-dialog>
    <q-dialog v-model="dialogMore">
      <q-card @click="dialogMore = false" class="q-pa-sm">
        <q-card-section>
          <div class="text-subtitle1 text-secondary">Sorry, not implemented yet...</div>
        </q-card-section>
        <q-card-actions align="center">
          <q-btn @click="dialogMore = false" flat>Close</q-btn>
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>

<style lang="sass" scoped>
.my-card
  width: 100%
  max-width: 300px
.lightbox
  width: 60%
  max-width: 60%
  min-width: 400px
</style>
