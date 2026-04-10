/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s4_lmb_po.sql
PURPOSE: Step 4 - Create an after update trigger (Last Modified By)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
This trigger fires automatically AFTER any UPDATE on the table.
It sets LastModifiedBy to the current server user using SUSER_NAME()

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Drop the trigger if it already exists
DROP TRIGGER IF EXISTS [dbo].[tr_customers_LastModifiedBy]
GO

-- Create the after update trigger
CREATE TRIGGER [dbo].[tr_customers_LastModifiedBy]
ON [dbo].[t_w3_schools_customers]
AFTER UPDATE
AS
BEGIN
    UPDATE [dbo].[t_w3_schools_customers]
    SET    LastModifiedBy = SUSER_NAME()
    FROM   [dbo].[t_w3_schools_customers] t
    INNER JOIN inserted i ON t.CustomerID = i.CustomerID
END
GO