DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS zones;
DROP TABLE IF EXISTS categories;

CREATE TABLE zones (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    picture TEXT
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    description TEXT,
    picture TEXT,
    -- picture URL = text
    lockdown_friendly BOOLEAN,
    free BOOLEAN,
    visited BOOLEAN,
    zone_id INT REFERENCES zones(id) ON DELETE CASCADE,
    category_id INT REFERENCES categories(id) ON DELETE CASCADE
);