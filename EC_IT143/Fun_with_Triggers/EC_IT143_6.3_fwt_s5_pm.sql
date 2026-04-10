/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s5_po.sql
PURPOSE: Step 5 - Test the trigger (Last Modified Date)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Testing the trigger by updating a record and checking 
if LastModifiedDate was automatically populated.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Check before update
SELECT CustomerID
,      ContactName
,      LastModifiedDate
FROM   [dbo].[t_w3_schools_customers]
WHERE  CustomerID = 1

-- Update a record to fire the trigger
UPDATE [dbo].[t_w3_schools_customers]
SET    ContactName = 'Maria Anders'
WHERE  CustomerID = 1

-- Check after update - LastModifiedDate should now be populated
SELECT CustomerID
,      ContactName
,      LastModifiedDate
FROM   [dbo].[t_w3_schools_customers]
WHERE  CustomerID = 1