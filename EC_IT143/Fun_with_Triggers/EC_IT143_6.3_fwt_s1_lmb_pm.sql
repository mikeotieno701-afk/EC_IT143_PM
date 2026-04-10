/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s1_lmb_po.sql
PURPOSE: Step 1 - Start with a question (Last Modified By)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Q: How do I automatically track WHO last modified 
   a record in the t_w3_schools_customers table?

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Q: How do I track who last modified a record?
SELECT *
FROM   [dbo].[t_w3_schools_customers]