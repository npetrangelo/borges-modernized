DROP TABLE IF EXISTS event_staffers CASCADE;

CREATE TABLE event_staffers(
    id              SERIAL PRIMARY KEY NOT NULL,
    name            TEXT,
    email           TEXT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);