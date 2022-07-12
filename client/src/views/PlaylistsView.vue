<script setup lang="ts">
import { ref } from 'vue';
import { Album } from '@backend/types';
import { useMusicStore } from '../stores/MusicStore';
console.log("using Playlist init")

await useMusicStore().fetchPlaylists();
await useMusicStore().fetchAlbums();
const playlists = useMusicStore().playlists;
const albums = useMusicStore().albums;

for (let playlist of playlists) {
  playlist.tracks = playlist.tracks.map((track) => {
    const { title, cover, artist } = <Album>albums.find((album) => album.id === track.album_id);
    return {
      ...track,
      title,
      cover,
      artist,
    };
  });
}

let tab = ref(playlists.length > 0 ? playlists[0].name : '');

const columns: any = [
  {
    name: 'track',
    label: 'Track',
    field: 'name',
    align: 'left',
  },
  {
    name: 'artist',
    label: 'Artist',
    field: 'artist',
    align: 'left',
  },
  {
    name: 'album',
    label: 'Album Title',
    field: 'title',
    align: 'left',
  },
  {
    name: 'cover',
    label: 'Album Cover',
    field: 'cover',
    align: 'left',
  },
  {
    name: 'genre',
    label: 'Genre',
    field: 'genre',
    align: 'left',
  },
  {
    name: 'length',
    label: 'Length',
    field: 'length',
    align: 'left',
  },
];
</script>

<template>
  <q-tabs
    v-model="tab"
    class="q-mt-md q-mx-md text-grey"
    active-color="dark"
    active-bg-color="secondary"
    indicator-color="dark"
    align="left"
    outside-arrows
    dense
  >
    <q-tab
      v-for="playlist in playlists"
      :name="playlist.name"
      :label="playlist.name"
      class="q-mx-xs"
    />
  </q-tabs>
  <q-tab-panels class="q-mx-md" v-model="tab" animated>
    <q-tab-panel v-for="playlist in playlists" :name="playlist.name">
      <q-table :rows="playlist.tracks" :columns="columns" row-key="index">
        <template #header="props">
          <q-tr :props="props">
            <q-th v-for="col in props.cols" :key="col.name" :props="props">
              <span>{{ col.label }}</span>
            </q-th>
          </q-tr>
        </template>
        <template #body-cell-cover="props">
          <q-td :props="props">
            <img :src="props.value" height="70" />
          </q-td>
        </template>
        <template #body-cell-track="props">
          <q-td :props="props">
            <span class="text-secondary"> {{ props.value }} </span>
          </q-td>
        </template>
        <template #body-cell-artist="props">
          <q-td :props="props">
            <span class="text-primary"> {{ props.value }} </span>
          </q-td>
        </template>
      </q-table>
    </q-tab-panel>
  </q-tab-panels>
</template>

<style lang="sass">
</style>
