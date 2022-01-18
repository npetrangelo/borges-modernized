DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE categories (
    id              SERIAL PRIMARY KEY NOT NULL,
    name            TEXT,
    description     TEXT,
    image           TEXT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
