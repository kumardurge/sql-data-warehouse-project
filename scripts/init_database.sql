/*
Create Database and Schemas
-------------------------------
Script Purpose: This script creates a new database named 'DataWarehouse after checking 
if it exists already.

If the Database exists, it is dropped and recreated. Additionally, the scripy sets up three schemas
within the database: 'bronze', 'silver' and gold'.

WARNING;
Running this script will drop the entire 'DataWarehouse' database if it exists. In other words,
ALL data in database will be permanently deleted. 

PROCEED with caution + have proper backups before running script

*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database

IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO 

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
    
CREATE SCHEMA silver;
GO
    
CREATE SCHEMA gold;
GO

