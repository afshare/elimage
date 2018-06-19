BEGIN TRANSACTION;

CREATE TABLE user (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ip VARCHAR(40) NOT NULL,
    blocked BOOLEAN default 0,
    comment text
);

CREATE TABLE image (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    uid INTEGER NOT NULL REFERENCES "user" ("id"),
    name VARCHAR(40) NOT NULL,
    time TIMESTAMP
);

CREATE INDEX idx_name ON image (name);

COMMIT;
