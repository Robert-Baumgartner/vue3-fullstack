<script setup lang="ts">
import SearchWidget from './components/SearchWidget.vue';
import { RouterView } from 'vue-router';
import { useQuasar } from 'quasar';

const $q = useQuasar();
$q.dark.toggle();
</script>

<template>
  <q-layout view="hHh lpR fFf">
    <q-header class="bg-dark">
      <q-toolbar class="q-mt-md">
        <q-toolbar-title>
          <q-avatar size="70px"> <img src="@/assets/logo1.svg" /> </q-avatar>
          <span class="text-h4 q-ml-md" style="font-family: Lora">Songbird</span>
        </q-toolbar-title>
        <SearchWidget header="Search Artists" @search=""></SearchWidget>
      </q-toolbar>

      <q-tabs align="left" active-color="white" indicator-color="primary" class="q-mx-lg text-grey">
        <q-route-tab to="/" label="Home" />
        <q-route-tab to="/artists" label="Artists" />
        <q-route-tab to="/albums" label="Albums" />
        <q-route-tab to="/playlists" label="Playlists" />
      </q-tabs>
    </q-header>

    <q-page-container>
      <router-view v-slot="{ Component }">
        <suspense timeout="0">
          <template #default>
            <component :is="Component" :key="$route.path"></component>
          </template>
          <template #fallback>
            <div class="row flex-center" style="height: 60vh">
              <q-spinner-ball color="primary" size="5em" />
            </div>
          </template>
        </suspense>
      </router-view>
    </q-page-container>

    <q-footer class="bg-dark">
      <q-toolbar class="row justify-center">
        <span class="text-grey">Demo App by Robert Baumgartner</span>
      </q-toolbar>
    </q-footer>
  </q-layout>
</template>

<style lang="sass">
@font-face
  font-family: 'Lora'
  font-weight: 400
  font-style: normal
  font-display: auto
  unicode-range: U+000-5FF
  src: local('Lora'), url('/fonts/Lora/Lora-Italic.ttf') format('truetype')

.q-input
  max-width: 300px
</style>
