import { Request, Response } from 'express';

import { dbGetAlbums, dbGetAlbumTracks } from '../models/albums';

const getAlbums = async (req: Request, res: Response): Promise<void> => {
  res.status(200).json(await dbGetAlbums());
};

const getAlbumTracks = async (req: Request, res: Response): Promise<void> => {
  const id = parseInt(req.params.id, 10);
  if (!id) res.status(400).send("Missing 'id' parameter");
  else res.status(200).json(await dbGetAlbumTracks(id));
};

export { getAlbums, getAlbumTracks };
