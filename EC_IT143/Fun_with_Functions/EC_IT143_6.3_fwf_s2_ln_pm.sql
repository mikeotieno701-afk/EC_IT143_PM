/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s2_ln_po.sql
PURPOSE: Step 2 - Begin creating an answer (Last Name)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/09/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Where I am: The ContactName column has first and last name together
            for example 'Maria Anders'

Next step: The last name is everything AFTER the space.
           I can use CHARINDEX to find the space position
           and RIGHT or SUBSTRING to extract everything after it.

******************************************************************************************************************/

-- Where I am and what I think the next step is
SELECT ContactName
,      'Last name is everything after the space' AS MyThought
FROM   [dbo].[t_w3_schools_customers]