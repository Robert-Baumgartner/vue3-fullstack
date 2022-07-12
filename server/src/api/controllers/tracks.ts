import { Request, Response } from 'express';

import { dbGetTrack } from '../models/tracks';

const getTrack = async (req: Request, res: Response): Promise<void> => {
  const id = parseInt(req.params.id, 10);
  if (id) res.status(200).json(await dbGetTrack(id));
};

export { getTrack };
