import { Pool } from 'pg';


const pool = new Pool({
  connectionString: process.env.DATABASE_URL || 'postgres://postgres:1234@localhost:5432/myappdb',
});

export default pool;
