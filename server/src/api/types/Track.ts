import { Album } from './Album';

export type Track = {
  id: number;
  name: string;
  album_id: number;
  album?: Album;
  composer: string;
  genre: string;
  media: string;
  length: string;
  price: number;
};
