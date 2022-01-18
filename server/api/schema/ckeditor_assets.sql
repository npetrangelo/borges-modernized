DROP TABLE IF EXISTS ckeditor_assets;

CREATE TABLE ckeditor_assets (
    id                  SERIAL PRIMARY KEY NOT NULL,
    data_file_name      TEXT NOT NULL,
    data_content_type   TEXT,
    data_file_size      INT,
    assetable_id        INT,
    assetable_type      VARCHAR(30),
    type                VARCHAR(30),
    width               INT,
    height              INT,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_ckeditor_assetable ON ckeditor_assets(assetable_type, assetable_id);
CREATE INDEX idx_ckeditor_assetable_type ON ckeditor_assets(assetable_type, type, assetable_id);
