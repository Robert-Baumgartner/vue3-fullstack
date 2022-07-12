import { query } from '../../db/query';
import { Artist } from '../types/Artist';

const dbGetArtists = async (): Promise<Artist[]> => {
  const { rows } = await query(
    `SELECT
       artist_id as id,
       name,
       description
     FROM artists
     ORDER BY name`,
  );
  return rows;
};

export { dbGetArtists };
