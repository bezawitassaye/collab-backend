import express from 'express';
import dotenv from 'dotenv';
import pool from './db';

dotenv.config();
const app = express();
const PORT = process.env.PORT || 4000;

app.get('/', (req, res) => {
  res.send('Backend is running 🚀');
});

app.listen(PORT, async () => {
  try {
    const client = await pool.connect();
    console.log('✅ Connected to PostgreSQL');
    client.release();
  } catch (err) {
    console.error('❌ Database connection error:', err);
  }
  console.log(`🚀 Server is running on http://localhost:${PORT}`);
});
