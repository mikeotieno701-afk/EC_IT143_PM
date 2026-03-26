-- Step 5.2: Add primary key and refine table

USE MyCommunities;
IF OBJECT_ID('dbo.tbl_artist_song_count_2025', 'U') IS NOT NULL
    DROP TABLE dbo.tbl_artist_song_count_2025;

CREATE TABLE dbo.tbl_artist_song_count_2025 (
    artist NVARCHAR(255) NOT NULL PRIMARY KEY,
    total_songs INT NOT NULL
);

INSERT INTO dbo.tbl_artist_song_count_2025 (artist, total_songs)
SELECT artist, total_songs
FROM vw_artist_song_count_2025;

SELECT * FROM tbl_artist_song_count_2025
ORDER BY total_songs DESC;