/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s3_po.sql
PURPOSE: Step 3 - Create an ad hoc SQL query (First Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Ad hoc query to extract first name from ContactName
Using LEFT and CHARINDEX to find and extract text before the space
Added CASE to handle names with no space (like 'Zbyszek')

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Ad hoc query to get the first name
SELECT ContactName
,      CASE
           WHEN CHARINDEX(' ', ContactName) = 0 THEN ContactName
           ELSE LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
       END AS FirstName
FROM   [dbo].[t_w3_schools_customers]