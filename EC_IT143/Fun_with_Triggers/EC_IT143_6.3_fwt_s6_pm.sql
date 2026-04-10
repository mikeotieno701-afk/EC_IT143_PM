/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s6_po.sql
PURPOSE: Step 6 - Ask the next question

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Q: Now that I can track WHEN a record was last modified,
   how do I track WHO last modified a record?

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Q: How do I track WHO last modified a record?
SELECT CustomerID
,      ContactName
,      LastModifiedDate
FROM   [dbo].[t_w3_schools_customers]