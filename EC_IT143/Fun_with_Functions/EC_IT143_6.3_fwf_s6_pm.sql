/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s6_po.sql
PURPOSE: Step 6 - Compare UDF results to ad hoc query results (First Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Comparing the ad hoc query result to the UDF result side by side.
Both columns should show exactly the same values.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Compare ad hoc query vs UDF side by side
SELECT ContactName
,      CASE
           WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
           ELSE LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
       END AS FirstName_AdHoc
,      [dbo].[fn_GetFirstName](ContactName) AS FirstName_UDF
FROM   [dbo].[t_w3_schools_customers]