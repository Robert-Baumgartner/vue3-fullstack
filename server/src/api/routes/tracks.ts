import { Router } from 'express';
import asyncHandler from 'express-async-handler';

import { getTrack } from '../controllers/tracks';

const router = Router();

router.get('/:id', asyncHandler(getTrack));

export default router;
