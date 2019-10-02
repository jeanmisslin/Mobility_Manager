
import sqlite3 from 'sqlite3';

const dbfile = 'C:/Users/Jean/Desktop/TFG/database/tfg.db'

export const db = new sqlite3.Database(dbfile)