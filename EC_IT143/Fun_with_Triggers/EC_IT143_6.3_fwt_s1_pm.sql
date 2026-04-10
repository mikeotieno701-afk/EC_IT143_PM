/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s1_po.sql
PURPOSE: Step 1 - Start with a question (Last Modified Date)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Q: How do I automatically track WHEN a record was 
   last modified in the t_w3_schools_customers table?

******************************************************************************************************************/

-- Q: How do I track when a record was last modified?
USE [EC_IT143_DA]
GO
SELECT *
FROM   [dbo].[t_w3_schools_customers]