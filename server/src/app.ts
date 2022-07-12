import express from 'express';
import helmet from 'helmet';
import morgan from 'morgan';
import dotenv from 'dotenv';
import path from 'path';

import { albumRouter, artistRouter, playlistRouter } from './api/routes';
import { errorHandler, notFoundHandler } from './middleware';

dotenv.config();
const PORT = process.env.PORT ?? 3000;
const dirname = path.resolve();

const app = express();
app.use(morgan('dev'));
app.use(helmet());
app.use(express.static(path.join(dirname, 'public')));
app.use(express.json());

// simulate delay

app.use((req, res, next) => {
  setTimeout(next, 2000);
});

app.use('/api/albums', albumRouter);
app.use('/api/artists', artistRouter);
app.use('/api/playlists', playlistRouter);

app.use(notFoundHandler);
app.use(errorHandler);

app.listen(3000, () => console.log(`Server is running on port ${PORT}`));
