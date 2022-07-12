import { ErrorRequestHandler } from 'express';
import chalk from 'chalk';

export const errorHandler: ErrorRequestHandler = (err, req, res, next) => {
  console.error(`ERROR ===> ${chalk.red(err.message)}`);
  res.status(500).send('Something broke!');
  next();
};
