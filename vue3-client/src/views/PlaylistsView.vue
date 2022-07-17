<script setup lang="ts">
import { ref } from 'vue';
import { useMusicStore } from '../stores/MusicStore';

const promises = [];
promises.push(useMusicStore().fetchPlaylists());
promises.push(useMusicStore().fetchAlbums());
await Promise.all(promises);
const playlists = useMusicStore().playlists;
const albums = useMusicStore().albums;

for (let playlist of playlists) {
  playlist.tracks = playlist.tracks.map((track) => {
    const { title, artist, cover } = albums.find((album) => album.id === track.album_id)!;
    return {
      ...track,
      title,
      artist,
      cover,
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
    name: 'length',
    label: 'Length',
    field: 'length',
    align: 'left',
  },
  {
    name: 'artist',
    label: 'Artist',
    field: 'artist',
    align: 'left',
  },
  {
    name: 'title',
    label: 'Album Title',
    field: 'title',
    align: 'left',
  },
  {
    name: 'cover',
    label: 'Album Cover',
    field: 'cover',
    align: 'center',
    style: 'width: 150px',
  },
  {
    name: 'genre',
    label: 'Genre',
    field: 'genre',
    align: 'left',
    style: 'gt-xs',
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
      <q-table :rows="playlist.tracks" :columns="columns" row-key="index" wrap-cells>
        <template #header="props">
          <q-tr :props="props" class="gt-xs">
            <q-th v-for="col in props.cols" :key="col.name" :props="props">
              <span>{{ col.label }}</span>
            </q-th>
          </q-tr>
          <q-tr :props="props" class="lt-sm">
            <q-th style="text-align:left">          <!-- Quasar bug, need to align once again-->
              <span>{{ props.cols[0].label }}</span>
            </q-th>
            <q-th style="text-align:left">          <!-- Quasar bug, need to align once again-->
              <span>{{ props.cols[1].label }}</span>
            </q-th>
            <q-th style="text-align:left">          <!-- Quasar bug, need to align once again-->
              <span>{{ props.cols[2].label }}</span>
            </q-th>
          </q-tr>
        </template>
        <template #body-cell-track="props">
          <q-td :props="props">
            <div class="text-secondary">
              {{ props.value }}
            </div>
          </q-td>
        </template>
        <template #body-cell-length="props">
          <q-td :props="props">
            <div>
              {{ props.value }}
            </div>
          </q-td>
        </template>
        <template #body-cell-artist="props">
          <q-td :props="props">
            <div class="text-primary">{{ props.value }}</div>
          </q-td>
        </template>

        <template #body-cell-genre="props">
          <q-td :props="props" class="gt-xs">
            <div class="text-primary">{{ props.value }}</div>
          </q-td>
        </template>
        <template #body-cell-cover="props">
          <q-td :props="props" class="gt-xs">
            <img :src="props.value" height="80" />
          </q-td>
        </template>
        <template #body-cell-title="props">
          <q-td :props="props" class="gt-xs">
            <div>{{ props.value }}</div>
          </q-td>
        </template>
      </q-table>
    </q-tab-panel>
  </q-tab-panels>
</template>

<style lang="sass">
.custom-ellipsis
  text-overflow: ellipsis !important
  white-space: nowrap !important
  overflow: hidden !important
</style>
