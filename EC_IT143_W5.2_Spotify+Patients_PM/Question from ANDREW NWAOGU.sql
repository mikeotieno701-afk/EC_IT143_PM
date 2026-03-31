/*
Which songs appear in both the all-time top 100 and the 2025 top 50, and how do their total streams compare to the 2025 streams? 
*/

select *  FROM [MyCommunities].[dbo].[spotify_alltime_top100_songs]
join [MyCommunities].[dbo].[spotify_wrapped_2025_top50_songs]
on [spotify_alltime_top100_songs].artist = [spotify_wrapped_2025_top50_songs].artist
and [spotify_alltime_top100_songs].song_title = [spotify_wrapped_2025_top50_songs].song_title
order by [wrapped_2025_rank] desc;