-- Step 5.1: Create a table from the view

USE MyCommunities
SELECT *
INTO tbl_artist_song_count_2025
FROM vw_artist_song_count_2025;

SELECT * FROM tbl_artist_song_count_2025;