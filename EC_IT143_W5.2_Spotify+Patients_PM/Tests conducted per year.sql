/*Tests conducted per year*/


SELECT count([dbo].[lab_results].patient_id) PatientCountPerTest, FORMAT(test_date, 'yyyy') YearOfTest, test_name
  FROM [MyCommunities].[dbo].[lab_results]
  join [dbo].[patients]
  on  [dbo].[lab_results].[patient_id] = [dbo].[patients].patient_id
  group by FORMAT(test_date, 'yyyy'),test_name
  order by 2 desc,1 desc;


