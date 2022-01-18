DROP TABLE IF EXISTS copies CASCADE;
DROP INDEX IF EXISTS index_copies_on_edition_id CASCADE;
DROP INDEX IF EXISTS index_copies_on_invoice_line_item_id CASCADE;
DROP INDEX IF EXISTS index_copies_on_owner_id CASCADE;

CREATE TABLE copies(
    id                      SERIAL PRIMARY KEY NOT NULL,
    edition_id              INT,
    cost_in_cents           INT,
    price_in_cents          INT,
    notes                   TEXT,
    owner_id                INT,
    is_used                 BOOLEAN,
    created_at              TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at              TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    inventoried_when        TIMESTAMP,
    deinventoried_when      TIMESTAMP,
    status                  TEXT,
    invoice_line_item_id    INT
);

CREATE INDEX index_copies_on_edition_id ON copies(edition_id);
CREATE INDEX index_copies_on_invoice_line_item_id ON copies(invoice_line_item_id);
CREATE INDEX index_copies_on_owner_id ON copies(owner_id);
