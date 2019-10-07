
import sqlite3 from 'sqlite3';
require('dotenv').config();
export const db = new sqlite3.Database(process.env.DB_FILENAME)