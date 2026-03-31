/*Count of patients per insurance scheme*/

SELECT count(*) PatientsInScheme,insurance_type
  FROM [MyCommunities].[dbo].[patients] group by insurance_type
  order by 1 desc