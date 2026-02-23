-- Create and setup database
CREATE DATABASE IF NOT EXISTS romantic_date;
USE romantic_date;

-- Drop table if exists (for fresh start)
DROP TABLE IF EXISTS responses;

-- Create responses table
CREATE TABLE responses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    answer VARCHAR(10) NOT NULL CHECK (answer IN ('yes', 'no')),
    message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Insert test data (optional)
INSERT INTO responses (answer, message) VALUES 
('yes', 'Test response ❤️'),
('no', 'Test response 😢');

-- Verify table structure
DESCRIBE responses;
SELECT * FROM responses ORDER BY created_at DESC;
