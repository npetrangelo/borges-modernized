DROP TABLE IF EXISTS event_locations CASCADE;

CREATE TABLE event_locations(
    id              SERIAL PRIMARY KEY NOT NULL,
    title           TEXT,
    url             TEXT,
    address         TEXT,
    description     TEXT,
    created_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
