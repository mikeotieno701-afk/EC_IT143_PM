/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s8_po.sql
PURPOSE: Step 8 - Ask the next question

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Q: Now that I can extract the first name, how do I extract
   the LAST name from the ContactName column?

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Q: How do I get the last name from the ContactName column?
SELECT ContactName
FROM   [dbo].[t_w3_schools_customers]