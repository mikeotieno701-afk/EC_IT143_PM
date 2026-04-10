/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s4_ln_po.sql
PURPOSE: Step 4 - Research and test a solution (Last Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/09/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Resources used:
1. https://www.w3schools.com/sql/func_sqlserver_substring.asp
2. https://www.w3schools.com/sql/func_sqlserver_charindex.asp

CHARINDEX(' ', ContactName) finds the position of the space
SUBSTRING(ContactName, position + 1, LEN(ContactName)) gets everything after the space

******************************************************************************************************************/

-- Tested and refined solution
SELECT ContactName
,      CHARINDEX(' ', ContactName)                                                        AS SpacePosition
,      CASE
           WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
           ELSE SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, LEN(ContactName))
       END AS LastName
FROM   [dbo].[t_w3_schools_customers]