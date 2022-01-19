DROP TABLE IF EXISTS events CASCADE;
DROP INDEX IF EXISTS index_events_on_event_location_id CASCADE;

CREATE TABLE events(
    id                  SERIAL PRIMARY KEY NOT NULL,
    title               TEXT,
    description         TEXT,
    event_location_id   INT,
    event_start         TIMESTAMP,
    event_end           TIMESTAMP,
    published           BOOLEAN,
    created_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    picture             TEXT,
    introduction        TEXT,
    show_on_red_emmas_page  BOOLEAN,
    show_on_2640_page       BOOLEAN,
    internal_notes          TEXT,
    event_setup_starts      TIMESTAMP,
    event_breakdown_ends    TIMESTAMP,
    rental_payment_info     TEXT,
    facebook_url            TEXT,
    withfriends_url         TEXT
);

CREATE INDEX index_events_on_event_location_id ON events(event_location_id);
