DROP TABLE IF EXISTS distributors CASCADE;

CREATE TABLE distributors(
    id                  SERIAL PRIMARY KEY NOT NULL,
    name                TEXT,
    our_account_number  TEXT,
    notes               TEXT,
    created_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
