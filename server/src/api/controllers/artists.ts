import { Request, Response } from 'express';

import { dbGetArtists } from '../models/artists';

const getArtists = async (req: Request, res: Response): Promise<void> => {
  res.status(200).json(await dbGetArtists());
};

export { getArtists };
