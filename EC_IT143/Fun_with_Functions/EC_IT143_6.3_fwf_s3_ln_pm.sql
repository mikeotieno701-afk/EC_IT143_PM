/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s3_ln_po.sql
PURPOSE: Step 3 - Create an ad hoc SQL query (Last Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/09/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Ad hoc query to extract last name from ContactName
Using CHARINDEX to find the space and SUBSTRING to get everything after it
Added CASE to handle names with no space (like 'Zbyszek')

******************************************************************************************************************/

-- Ad hoc query to get the last name
SELECT ContactName
,      CASE
           WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
           ELSE SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, LEN(ContactName))
       END AS LastName
FROM   [dbo].[t_w3_schools_customers]