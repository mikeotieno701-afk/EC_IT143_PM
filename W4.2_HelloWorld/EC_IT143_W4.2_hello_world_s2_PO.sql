-- Step 2: Begin Creating an Answer
-- Question: How many songs does each artist have in the Spotify 2025 Wrapped Songs dataset?

-- Plan:
-- 1. Use table: spotify_wrapped_2025_top50_songs
-- 2. Columns needed: artist, song_title
-- 3. Aggregate using COUNT(song_title) to get total songs per artist
-- 4. Group by artist
-- 5. Sort by total_songs DESC