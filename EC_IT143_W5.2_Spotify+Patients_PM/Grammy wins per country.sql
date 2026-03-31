/* grammy wins per coutry*/

SELECT sum(grammy_wins), artist_country
  FROM [MyCommunities].[dbo].[spotify_alltime_top100_songs]
  join spotify_wrapped_2025_top50_artists 
  on [spotify_alltime_top100_songs].artist = spotify_wrapped_2025_top50_artists.artist_name
  group by artist_country