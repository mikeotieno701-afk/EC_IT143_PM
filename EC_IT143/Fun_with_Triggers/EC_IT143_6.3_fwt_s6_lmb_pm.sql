/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s6_lmb_po.sql
PURPOSE: Step 6 - Ask the next question (Last Modified By)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Q: Now that I can track WHO last modified a record,
   what other improvements can I make to this table?

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Final check showing both LastModifiedDate and LastModifiedBy
SELECT CustomerID
,      ContactName
,      LastModifiedDate
,      LastModifiedBy
FROM   [dbo].[t_w3_schools_customers]