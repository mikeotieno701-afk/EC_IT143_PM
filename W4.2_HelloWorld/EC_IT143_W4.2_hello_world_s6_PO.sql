-- Step 6: Load the table from the view


USE MyCommunities;
TRUNCATE TABLE dbo.tbl_artist_song_count_2025;


INSERT INTO dbo.tbl_artist_song_count_2025 (artist, total_songs)
SELECT artist, total_songs
FROM vw_artist_song_count_2025;

SELECT *
FROM tbl_artist_song_count_2025
ORDER BY total_songs DESC;