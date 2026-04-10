/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s2_po.sql
PURPOSE: Step 2 - Begin creating an answer (First Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Where I am: The ContactName column has first and last name together
            for example 'Maria Anders'

Next step: The first name is everything BEFORE the space.
           I can use CHARINDEX to find the space position
           and LEFT to extract everything before it.

******************************************************************************************************************/

USE [EC_IT143_DA]
GO

-- Where I am and what I think the next step is
SELECT ContactName
,      'First name is everything before the space' AS MyThought
FROM   [dbo].[t_w3_schools_customers]