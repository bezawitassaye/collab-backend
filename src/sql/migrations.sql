-- enable UUID generator
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- users table
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  name TEXT,
  global_status TEXT NOT NULL DEFAULT 'ACTIVE', -- ACTIVE, BANNED, ADMIN
  created_at TIMESTAMPTZ DEFAULT now()
);
