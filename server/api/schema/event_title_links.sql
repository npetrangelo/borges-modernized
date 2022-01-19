DROP TABLE IF EXISTS event_title_links CASCADE;
DROP INDEX IF EXISTS index_event_title_links_on_event_id CASCADE;
DROP INDEX IF EXISTS index_event_title_links_on_title_id CASCADE;

CREATE TABLE event_title_links(
    id              SERIAL PRIMARY KEY NOT NULL,
    event_id        INT,
    title_id        INT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX index_event_title_links_on_event_id ON event_title_links(event_id);
CREATE INDEX index_event_title_links_on_title_id ON event_title_links(title_id);
