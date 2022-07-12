import { Pool, QueryResult } from 'pg';

const pool = new Pool();

const query = (statement: string, params?: string[]): Promise<QueryResult> =>
  pool.query(statement, params);

export { query, pool };
