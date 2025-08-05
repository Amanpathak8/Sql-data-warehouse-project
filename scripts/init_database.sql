/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
This script checks if a database called 'DataWarehouse' already exists. If it does, the script deletes 
the existing database and creates it again from scratch. After that, it also sets up three schemas inside 
the database: 'bronze', 'silver', and 'gold'.

⚠ Warning:
Running this script will remove the entire 'DataWarehouse' database if it already exists.
All stored data will be permanently lost.
Make sure to create a backup before using this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
