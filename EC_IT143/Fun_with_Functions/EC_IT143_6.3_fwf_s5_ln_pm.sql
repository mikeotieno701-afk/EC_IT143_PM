/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s5_ln_po.sql
PURPOSE: Step 5 - Create a user-defined scalar function (Last Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/09/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
This function takes a full contact name and returns the last name.
It extracts everything after the first space.

******************************************************************************************************************/

-- Drop the function if it already exists
DROP FUNCTION IF EXISTS [dbo].[fn_GetLastName]
GO

-- Create the scalar function
CREATE FUNCTION [dbo].[fn_GetLastName] (@ContactName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN CASE
               WHEN CHARINDEX(' ', @ContactName) = 0 THEN @ContactName
               ELSE SUBSTRING(@ContactName, CHARINDEX(' ', @ContactName) + 1, LEN(@ContactName))
           END
END
GO

-- Test the function
SELECT ContactName
,      [dbo].[fn_GetLastName](ContactName) AS LastName
FROM   [dbo].[t_w3_schools_customers]