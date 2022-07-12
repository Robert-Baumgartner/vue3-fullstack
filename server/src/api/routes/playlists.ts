import { Router } from 'express';
import asyncHandler from 'express-async-handler';

import { getPlaylists, getPlaylistTracks } from '../controllers/playlists';

const router = Router();

router.get('/', asyncHandler(getPlaylists));
router.get('/:id/tracks', asyncHandler(getPlaylistTracks));

export default router;
