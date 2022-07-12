# Simple Fullstack Example with Vue 3/Quasar
## Uses TypeScript, Node/Express, PostgreSQL

A sample database is provided: server/src/seeds/musicdb.sql.

This database is a modified version of the Chinook PostgreSQL database by Luis Rocha.
I have removed some records and tables and extended the structure. I also included links to
Amazon album covers.

Original database: https://github.com/lerocha/chinook-database

## Setup

1. Create empty database in PostgreSQL
2. Load database with script "load-database" or manually
3. Start server and client

## Remarks

This is just a sample application to try various techniques.
For example: to simulate network latency the server has a 2 second delay (which can be easly adjusted or removed), the focus of the user interface is to try out different Quasar components.
