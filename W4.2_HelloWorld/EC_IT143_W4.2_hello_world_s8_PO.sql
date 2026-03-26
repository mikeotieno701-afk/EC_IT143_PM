-- Step 8: Call the stored procedure


EXEC sp_refresh_artist_song_count_2025;

SELECT *
FROM tbl_artist_song_count_2025
ORDER BY total_songs DESC;