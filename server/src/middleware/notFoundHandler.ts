import { RequestHandler } from 'express';
import chalk from 'chalk';

export const notFoundHandler: RequestHandler = (req, res, next) => {
  console.error(`NOT FOUND ===> ${chalk.blue(req.originalUrl)}`);
  res.status(404).send(`${req.originalUrl} not found!`);
  next();
};
