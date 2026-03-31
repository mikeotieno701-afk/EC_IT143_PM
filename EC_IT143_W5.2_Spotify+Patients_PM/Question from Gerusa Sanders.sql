/*

How do the top all time songs differ in energy and danceability across genres?
I need the primary_genre, danceability, and energy fields to compare how musical style relates to listener engagement in the top 100 tracks.
*/

SELECT [primary_genre]
      ,[danceability]
      ,[energy]
  FROM [MyCommunities].[dbo].[spotify_alltime_top100_songs]
