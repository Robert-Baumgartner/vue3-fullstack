import { query } from '../../db/query';
import { Playlist, Track } from '../types';

const dbGetPlaylist = async (id: number): Promise<Playlist> => {
  const { rows } = await query(
    `SELECT
       playlist_id
       name,
       array_agg(track_id) as tracks
     FROM playlists
       JOIN playlist_tracks USING (playlist_id)
     WHERE name = $1
     GROUP BY name`,
    [String(id)],
  );
  return rows[0];
};

const dbGetPlaylists = async (): Promise<Playlist[]> => {
  const { rows } = await query(
    `SELECT
       playlist_id as id,
       name
     FROM playlists
     ORDER BY name`,
  );
  return rows;
};

const dbGetPlaylistTracks = async (id: number): Promise<Track[]> => {
  const { rows }: { rows: Track[] } = await query(
    `SELECT
       track_id as id,
       t.name,
       album_id,
       mt.name as media_type,
       g.name as genre,
       milliseconds as length,
       unit_price as price
     FROM playlist_tracks pt
       JOIN tracks t USING (track_id)
       JOIN media_types mt USING (media_type_id)
       JOIN genres g USING (genre_id)
       JOIN albums USING (album_id)
     WHERE playlist_id = $1
     ORDER BY t.name`,
    [String(id)],
  );
  return rows;
};

export { dbGetPlaylist, dbGetPlaylists, dbGetPlaylistTracks };
