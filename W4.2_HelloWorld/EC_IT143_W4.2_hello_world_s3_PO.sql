-- Step 3: Ad Hoc SQL Query
-- Answering the question: How many songs does each artist have in the 2025 Wrapped Songs dataset?

USE MyCommunities;
SELECT
    artist,
    COUNT(song_title) AS total_songs
FROM spotify_wrapped_2025_top50_songs
GROUP BY artist
ORDER BY total_songs DESC;
