/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s4_po.sql
PURPOSE: Step 4 - Research and test a solution (First Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Resources used:
1. https://www.w3schools.com/sql/func_sqlserver_left.asp
2. https://www.w3schools.com/sql/func_sqlserver_charindex.asp

CHARINDEX(' ', ContactName) finds the position of the space
LEFT(ContactName, position - 1) extracts everything before the space

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Tested and refined solution
SELECT ContactName
,      CHARINDEX(' ', ContactName)                        AS SpacePosition
,      CASE
           WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
           ELSE LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
       END AS FirstName
FROM   [dbo].[t_w3_schools_customers]