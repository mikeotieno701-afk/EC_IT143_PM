/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s4_po.sql
PURPOSE: Step 4 - Create an after update trigger (Last Modified Date)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
This trigger fires automatically AFTER any UPDATE on the table.
It sets LastModifiedDate to the current date and time.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Drop the trigger if it already exists
DROP TRIGGER IF EXISTS [dbo].[tr_customers_LastModifiedDate]
GO

-- Create the after update trigger
CREATE TRIGGER [dbo].[tr_customers_LastModifiedDate]
ON [dbo].[t_w3_schools_customers]
AFTER UPDATE
AS
BEGIN
    UPDATE [dbo].[t_w3_schools_customers]
    SET    LastModifiedDate = GETDATE()
    FROM   [dbo].[t_w3_schools_customers] t
    INNER JOIN inserted i ON t.CustomerID = i.CustomerID
END
GO