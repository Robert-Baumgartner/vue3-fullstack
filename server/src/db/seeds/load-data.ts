import { readFile } from 'fs/promises';
import chalk from 'chalk';

import dotenv from 'dotenv';
import { pool } from '../query';

dotenv.config();

(async () => {
  const sql = await readFile('./db/seeds/musicdb.sql', 'utf-8');
  const client = await pool.connect();
  try {
    await client.query('BEGIN');
    await client.query(sql);
    await client.query('COMMIT');
    console.log("Database 'musicdb' loaded!");
  } catch (error) {
    console.error(`ERROR ===> ${chalk.red(error)}`);
  }
})();
