-- Step 4: Turn Ad Hoc SQL Query into a View

GO

CREATE OR ALTER VIEW vw_artist_song_count_2025
AS
SELECT
    artist,
    COUNT(song_title) AS total_songs
FROM spotify_wrapped_2025_top50_songs
GROUP BY artist;

GO

SELECT *
FROM vw_artist_song_count_2025
ORDER BY total_songs DESC;