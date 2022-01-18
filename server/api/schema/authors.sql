DROP TABLE IF EXISTS authors CASCADE;

CREATE TABLE authors (
    id              SERIAL PRIMARY KEY NOT NULL,
    first_name      TEXT,
    last_name       TEXT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    full_name       TEXT,
    bio             VARCHAR(16777215)
);
