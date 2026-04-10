/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s1_ln_po.sql
PURPOSE: Step 1 - Start with a question (Last Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/09/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Q: How do I get the last name from the ContactName column
   in the t_w3_schools_customers table?

******************************************************************************************************************/

-- Q: How do I get the first name from the ContactName column?

USE [EC_IT143_DA]
GO

SELECT ContactName
FROM [dbo].[t_w3_schools_customers]