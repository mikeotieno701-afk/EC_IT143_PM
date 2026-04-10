/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s3_lmb_po.sql
PURPOSE: Step 3 - Research and test a solution (Last Modified By)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Resources used:
1. https://docs.microsoft.com/en-us/sql/t-sql/functions/suser-name-transact-sql
2. https://www.w3schools.com/sql/sql_alter.asp

Solution:
1. Use ALTER TABLE to add a LastModifiedBy column
2. Use SUSER_NAME() inside a trigger to capture who made the update

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Add the LastModifiedBy column to the table if it does not exist
IF NOT EXISTS (
    SELECT * 
    FROM   INFORMATION_SCHEMA.COLUMNS 
    WHERE  TABLE_NAME  = 't_w3_schools_customers' 
    AND    COLUMN_NAME = 'LastModifiedBy'
)
BEGIN
    ALTER TABLE [dbo].[t_w3_schools_customers]
    ADD LastModifiedBy VARCHAR(100) NULL
END
GO

-- Verify the column was added
SELECT *
FROM   [dbo].[t_w3_schools_customers]