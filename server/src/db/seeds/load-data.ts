import { readFile } from 'fs/promises';
import chalk from 'chalk';
import path from 'path';

import dotenv from 'dotenv';
import { pool } from '../query';

dotenv.config();

const dirname = path.resolve();

(async () => {
  const sql = await readFile(path.join(dirname, 'src/db/seeds/musicdb_small.sql'), 'utf-8');
  const client = await pool.connect();
  try {
    await client.query('BEGIN');
    await client.query(sql);
    await client.query('COMMIT');
    console.log("Database 'musicdb_small' loaded!");
  } catch (error) {
    console.error(`ERROR ===> ${chalk.red(error)}`);
  }
})();
