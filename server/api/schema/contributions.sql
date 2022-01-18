DROP TABLE IF EXISTS contributions;
DROP INDEX IF EXISTS index_contributions_on_author_id_and_title_id;
DROP INDEX IF EXISTS index_contributions_on_author_id;
DROP INDEX IF EXISTS index_contributions_on_title_id;

CREATE TABLE contributions(
    id              SERIAL PRIMARY KEY NOT NULL,
    author_id       INT,
    title_id        INT,
    what            TEXT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX index_contributions_on_author_id_and_title_id ON contributions(author_id, title_id);
CREATE INDEX index_contributions_on_author_id ON contributions(author_id);
CREATE INDEX index_contributions_on_title_id ON contributions(title_id);
