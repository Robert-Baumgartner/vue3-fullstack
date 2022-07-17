import { createRouter, createWebHistory } from 'vue-router';

import HomeView from '@/views/HomeView.vue';
import ArtistsView from '@/views/ArtistsView.vue';
import AlbumsView from '@/views/AlbumsView.vue';
import PlaylistsView from '@/views/PlaylistsView.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      alias: '/home',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/artists',
      name: 'artists',
      component: ArtistsView,
    },
    {
      path: '/albums',
      name: 'albums',
      component: AlbumsView,
    },
    {
      path: '/playlists',
      name: 'playlists',
      component: PlaylistsView,
    },
  ],
});

export default router;
