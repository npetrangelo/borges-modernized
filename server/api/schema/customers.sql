DROP TABLE IF EXISTS customers CASCADE;

CREATE TABLE customers(
    id              SERIAL PRIMARY KEY NOT NULL,
    name            TEXT,
    email           TEXT,
    phone           TEXT,
    notes           TEXT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
