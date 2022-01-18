DROP TABLE IF EXISTS category_title_list_memberships;

CREATE TABLE category_title_list_memberships (
    id              SERIAL PRIMARY KEY NOT NULL,
    title_list_id   INT,
    category_id     INT,
    position        INT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
