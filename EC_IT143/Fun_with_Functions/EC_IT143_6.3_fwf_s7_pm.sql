/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s7_po.sql
PURPOSE: Step 7 - Perform a 0 results expected test (First Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
If the UDF is working correctly, comparing it to the ad hoc query
should return ZERO rows. Zero rows means everything matches perfectly.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- 0 results expected test using a CTE
WITH cte_compare
AS
(
    SELECT ContactName
    ,      CASE
               WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
               ELSE LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
           END AS FirstName_AdHoc
    ,      [dbo].[fn_GetFirstName](ContactName) AS FirstName_UDF
    FROM   [dbo].[t_w3_schools_customers]
)
SELECT *
FROM   cte_compare
WHERE  FirstName_AdHoc <> FirstName_UDF
-- If this returns 0 rows the UDF is working perfectly!