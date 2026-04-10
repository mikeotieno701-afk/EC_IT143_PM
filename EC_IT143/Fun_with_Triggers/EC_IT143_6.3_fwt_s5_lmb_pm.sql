/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s5_lmb_po.sql
PURPOSE: Step 5 - Test the trigger (Last Modified By)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Testing the trigger by updating a record and checking
if LastModifiedBy was automatically populated with the server username.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Check before update
SELECT CustomerID
,      ContactName
,      LastModifiedDate
,      LastModifiedBy
FROM   [dbo].[t_w3_schools_customers]
WHERE  CustomerID = 2

-- Update a record to fire the trigger
UPDATE [dbo].[t_w3_schools_customers]
SET    ContactName = 'Ana Trujillo'
WHERE  CustomerID = 2

-- Check after update - LastModifiedBy should now show your username
SELECT CustomerID
,      ContactName
,      LastModifiedDate
,      LastModifiedBy
FROM   [dbo].[t_w3_schools_customers]
WHERE  CustomerID = 2