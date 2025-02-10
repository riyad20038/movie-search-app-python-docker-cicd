-- Create the "collection" database if it doesn't exist
CREATE DATABASE IF NOT EXISTS collection;

-- Use the "collection" database
USE collection;

-- Create the "documents" table to store document information
CREATE TABLE IF NOT EXISTS documents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    data TEXT NOT NULL
);

-- Set the character set and collation for the "documents" table (optional)
ALTER TABLE documents
    CONVERT TO CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

-- Create the "music" table to store audio files
CREATE TABLE IF NOT EXISTS music (
    name VARCHAR(255) NOT NULL,
    data LONGBLOB NOT NULL
);

-- Set the character set and collation for the "music" table (optional)
ALTER TABLE music
    CONVERT TO CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

-- Create the "photo" table to store image data
CREATE TABLE IF NOT EXISTS photo (
    name VARCHAR(255) NOT NULL,
    data LONGBLOB NOT NULL
);

-- Set the character set and collation for the "photo" table (optional)
ALTER TABLE photo
    CONVERT TO CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

