DROP TABLE IF EXISTS editions CASCADE;
DROP INDEX IF EXISTS index_editions_on_publisher_id CASCADE;
DROP INDEX IF EXISTS index_editions_on_title_id CASCADE;

CREATE TABLE editions(
    id                  SERIAL PRIMARY KEY NOT NULL,
    isbn13              TEXT,
    isbn10              TEXT,
    year_of_publication INT,
    format              TEXT,
    in_print            BOOLEAN,
    notes               TEXT,
    title_id            INT,
    created_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    cover               TEXT,
    list_price_cents    INT,
    publisher_id        INT,
    number              TEXT,
    preorderable        BOOLEAN,
    unavailable         BOOLEAN,
    shipsfree           BOOLEAN,
    untaxed             BOOLEAN
);

CREATE INDEX index_editions_on_publisher_id ON editions(publisher_id);
CREATE INDEX index_editions_on_title_id ON editions(title_id);
