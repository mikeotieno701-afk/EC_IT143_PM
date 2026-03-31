
/*Artists with more than one song with the same release year in top 100*/
  SELECT count(*) ArtistCount
  ,[artist],
  [release_year]
  FROM [MyCommunities].[dbo].[spotify_alltime_top100_songs]
  group by [artist],[release_year]  
  having count(*) > 1