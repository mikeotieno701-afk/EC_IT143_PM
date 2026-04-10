/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s2_po.sql
PURPOSE: Step 2 - Begin creating an answer (Last Modified Date)

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     04/10/2026   PO            1. Built this script for EC IT143 6.3

NOTES:
Where I am: The table has no column to track when a record was last modified.

Next steps:
1. Add a new column called LastModifiedDate to the table
2. Create an AFTER UPDATE trigger that automatically sets 
   LastModifiedDate to the current date and time whenever 
   a record is updated

******************************************************************************************************************/

-- Check the current columns in the table
SELECT *
FROM   [dbo].[t_w3_schools_customers]