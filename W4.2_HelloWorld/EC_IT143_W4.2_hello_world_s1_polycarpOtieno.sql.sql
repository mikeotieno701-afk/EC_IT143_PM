-- Question 1: How many songs does each artist have in the 2025 Wrapped dataset?
USE MyCommunities;


SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'spotify_wrapped_2025_top50_songs';