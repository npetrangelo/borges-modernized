DROP TABLE IF EXISTS category_title_list_memberships;

CREATE TABLE category_title_list_memberships (
    id              SERIAL PRIMARY KEY NOT NULL,
    title_list_id   INT,
    category_id     INT,
    position        INT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX index_category_title_list_memberships_on_category_id ON category_title_list_memberships (category_id);
CREATE INDEX index_category_title_list_memberships_on_title_list_id ON category_title_list_memberships (title_list_id);
