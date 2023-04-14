IF (EXISTS (SELECT name FROM master.dbo.databases WHERE ('[ToDos]')))

-- Drop database if is there
DROP DATABASE ToDos;
GO

-- Create database
CREATE DATABASE ToDos;
GO

-- Go to database
USE ToDos

-- Check if is empty and create everything from scratch
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' and TABLE_NAME = 'Todo'))
    BEGIN
        PRINT 'Todo table exists!'
    END;
ELSE
    BEGIN
        PRINT 'Todo table not exists'
        PRINT 'Creating table... please wait...'
        CREATE TABLE Todo (
            id uniqueidentifier NOT NULL,
            description nchar(100) NOT NULL,
            completed bit NOT NULL,
            date bigint NOT NULL
        );
    END;
