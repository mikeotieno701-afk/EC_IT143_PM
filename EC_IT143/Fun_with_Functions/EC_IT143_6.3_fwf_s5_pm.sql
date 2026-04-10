/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s5_po.sql
PURPOSE: Step 5 - Create a user-defined scalar function (First Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
This function takes a full contact name and returns the first name.
It extracts everything before the first space.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Drop the function if it already exists
DROP FUNCTION IF EXISTS [dbo].[fn_GetFirstName]
GO

-- Create the scalar function
CREATE FUNCTION [dbo].[fn_GetFirstName] (@ContactName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN CASE
               WHEN CHARINDEX(' ', @ContactName) = 0 THEN @ContactName
               ELSE LEFT(@ContactName, CHARINDEX(' ', @ContactName) - 1)
           END
END
GO

-- Test the function
SELECT ContactName
,      [dbo].[fn_GetFirstName](ContactName) AS FirstName
FROM   [dbo].[t_w3_schools_customers]