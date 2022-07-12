import { defineStore } from 'pinia';
import axios from 'axios';

import { Album, Artist, Playlist } from '@backend/types';

export const useMusicStore = defineStore('music', {
  state: () => {
    return {
      _albums: [] as Album[],
      _artists: [] as Artist[],
      _playlists: [] as Playlist[],
      searchTerm: '',
    };
  },
  persist: true,
  getters: {
    albums: (state) => state._albums,
    artists: (state) => state._artists,
    playlists: (state) => state._playlists,
  },
  actions: {
    async fetchAlbums() {
      console.log("fetching albums");
      if (this._albums.length > 0) return;
      const { data } = await axios.get<Album[]>('/api/albums');
      this._albums = data;
    },
    async fetchArtists() {
      console.log("fetching artists");
      if (this._artists.length > 0) return;
      const { data } = await axios.get<Artist[]>('/api/artists');
      this._artists = data;
    },
    async fetchPlaylists() {
      console.log("fetching playlists");
      if (this._playlists.length > 0) return;
      const { data } = await axios.get<Playlist[]>('/api/playlists');
      this._playlists = data;
    },
  },
});
