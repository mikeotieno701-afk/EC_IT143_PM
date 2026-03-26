-- Step 7: Create a Stored Procedure to load the table

USE MyCommunities;
GO

CREATE OR ALTER PROCEDURE sp_refresh_artist_song_count_2025
AS
BEGIN
    TRUNCATE TABLE dbo.tbl_artist_song_count_2025;

    INSERT INTO dbo.tbl_artist_song_count_2025 (artist, total_songs)
    SELECT artist, total_songs
    FROM vw_artist_song_count_2025;
END
GO

SELECT *
FROM tbl_artist_song_count_2025
ORDER BY total_songs DESC;