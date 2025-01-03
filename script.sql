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

-- refresh espresso data
CREATE OR REPLACE TABLE PM.Espresso_Data AS
FROM read_csv('https://docs.google.com/spreadsheets/d/1fD2Tozfvnt6u70lbeQN5FLM1ocHxheAmWKMH6B_oQXs/export?format=csv&gid=1056545167');
