/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s6_ln_po.sql
PURPOSE: Step 6 - Compare UDF results to ad hoc query results (Last Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/09/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Comparing the ad hoc query result to the UDF result side by side.
Both columns should show exactly the same values.

******************************************************************************************************************/

-- Compare ad hoc query vs UDF side by side
SELECT ContactName
,      CASE
           WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
           ELSE SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, LEN(ContactName))
       END AS LastName_AdHoc
,      [dbo].[fn_GetLastName](ContactName) AS LastName_UDF
FROM   [dbo].[t_w3_schools_customers]