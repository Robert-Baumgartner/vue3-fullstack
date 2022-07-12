import { Request, Response } from 'express';

import { dbGetPlaylistTracks, dbGetPlaylists } from '../models/playlists';

const getPlaylists = async (req: Request, res: Response): Promise<void> => {
  const playlists = await dbGetPlaylists();

  const promises = [];
  for (let i = 0; i < playlists.length; i++) promises.push(dbGetPlaylistTracks(playlists[i].id));
  const tracks = await Promise.all(promises);
  for (let i = 0; i < playlists.length; i++) playlists[i].tracks = tracks[i];

  res.status(200).json(playlists);
};

const getPlaylistTracks = async (req: Request, res: Response): Promise<void> => {
  const id = parseInt(req.params.id, 10);
  if (id) res.status(200).json(await dbGetPlaylistTracks(id));
};

export { getPlaylists, getPlaylistTracks };
