DROP TABLE IF EXISTS event_shifts CASCADE;
DROP INDEX IF EXISTS index_event_shifts_on_event_id CASCADE;
DROP INDEX IF EXISTS index_event_shifts_on_event_staffer_id CASCADE;

CREATE TABLE event_shifts(
    id                  SERIAL PRIMARY KEY NOT NULL,
    event_staffer_id    INT,
    event_id            INT,
    notes               TEXT,
    created_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX index_event_shifts_on_event_id ON event_shifts(event_id);
CREATE INDEX index_event_shifts_on_event_staffer_id ON event_shifts(event_staffer_id);
