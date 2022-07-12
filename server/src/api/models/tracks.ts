import { query } from '../../db/query';
import { Track } from '../types/Track';

const dbGetTrack = async (id: number): Promise<Track> => {
  const { rows }: { rows: Track[] } = await query(
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
     WHERE track_id = $1`,
    [String(id)],
  );
  return rows[0];
};

export { dbGetTrack };
