-- attach to motherduck with a token from the gh action environment
ATTACH 'md:?motherduck_token=${{ secrets.YOUR_SECRET_NAME }}';

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