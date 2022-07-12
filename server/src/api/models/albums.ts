import { query } from '../../db/query';
import { Album, Track } from '../types';

import { milliSecondsToHHMMSS } from '../utils/time';

const dbGetAlbums = async (): Promise<Album[]> => {
  const { rows } = await query(
    `SELECT
       al.album_id as id,
       al.title,
       al.cover,
       ar.name as artist,
       array_agg(tr.name) as tracks,
       sum(tr.milliseconds) as length
     FROM albums al JOIN artists ar USING (artist_id)
       JOIN tracks tr USING(album_id)
     GROUP BY al.album_id, al.title, ar.name ORDER BY ar.name, al.title`,
  );
  return rows.map((el) => ({ ...el, length: milliSecondsToHHMMSS(el.length) }));
};

const dbGetAlbumTracks = async (id: number): Promise<Track[]> => {
  const { rows } = await query(
    `SELECT
       track_id as id,
       t.name,
       album_id,
       mt.name as media_type,
       g.name as genre,
       milliseconds as length,
       unit_price as price
     FROM tracks t
       JOIN media_types mt USING (media_type_id)
       JOIN genres g USING (genre_id)
       JOIN albums USING (album_id)
     WHERE album_id = $1`,
    [String(id)],
  );
  return rows.map((el) => ({ ...el, length: milliSecondsToHHMMSS(el.length) }));
};
export { dbGetAlbums, dbGetAlbumTracks };
