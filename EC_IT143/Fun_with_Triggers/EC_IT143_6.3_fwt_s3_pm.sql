/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s3_po.sql
PURPOSE: Step 3 - Research and test a solution (Last Modified Date)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Resources used:
1. https://www.w3schools.com/sql/sql_alter.asp
2. https://docs.microsoft.com/en-us/sql/t-sql/statements/create-trigger-transact-sql

Solution:
1. Use ALTER TABLE to add a LastModifiedDate column
2. Use GETDATE() inside a trigger to capture the current date and time

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Add the LastModifiedDate column to the table
ALTER TABLE [dbo].[t_w3_schools_customers]
ADD LastModifiedDate DATETIME NULL
GO

-- Verify the column was added
SELECT *
FROM   [dbo].[t_w3_schools_customers]