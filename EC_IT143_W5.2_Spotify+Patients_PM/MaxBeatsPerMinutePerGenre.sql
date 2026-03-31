
SELECT [primary_genre]
      ,max(bpm) MaxBeatsPerMinutePerGenre
  FROM [MyCommunities].[dbo].[spotify_alltime_top100_songs]
  group by [primary_genre]