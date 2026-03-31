/*
Which patients have the highest number of diagnoses along with the medications they are taking?
I would like to see patient names from the patients table and diagnosis and medication details 
from the diagnoses and medications tables by joining them using patient_id.
*/

SELECT count(*) count_diagnosis,
[diagnoses].[patient_id]
      ,[primary_diagnosis]
      ,[primary_icd10]
     ,[medication]
      --,[secondary_diagnoses]
      --,[secondary_icd10s]
      --,[provider_specialty]
  FROM [MyCommunities].[dbo].[diagnoses]
  join [MyCommunities].[dbo].[patients]
  on [diagnoses].patient_id = [patients].patient_id
  join [MyCommunities].[dbo].[medications]
  on [diagnoses].patient_id = [medications].patient_id
  group by [diagnoses].[patient_id]
      ,[primary_diagnosis]
      ,[primary_icd10]
     ,[medication]
     order by 1 desc