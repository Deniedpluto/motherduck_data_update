-- attach to motherduck
ATTACH 'md:';

-- set the database
USE my_db;

-- create the table if it doesn't exist
CREATE TABLE IF NOT EXISTS target (
    source VARCHAR(255),
    timestamp TIMESTAMP
);

-- insert a row
INSERT INTO target (source, timestamp) 
VALUES ('github action', CURRENT_TIMESTAMP);