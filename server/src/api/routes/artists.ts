import { Router } from 'express';
import asyncHandler from 'express-async-handler';

import { getArtists } from '../controllers/artists';

const router = Router();

router.get('/', asyncHandler(getArtists));

export default router;
