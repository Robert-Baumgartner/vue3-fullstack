import { Router } from 'express';
import asyncHandler from 'express-async-handler';

import { getAlbums, getAlbumTracks } from '../controllers/albums';

const router = Router();

router.get('/', asyncHandler(getAlbums));
router.get('/:id/tracks', asyncHandler(getAlbumTracks));

export default router;
