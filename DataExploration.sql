--checking number of Platforms

SELECT DISTINCT Platform, COUNT(Platform) as no_of_platforms 
FROM `capstone-452719.VideoGames.Sales`
GROUP BY Platform;

--checking number of Genres

SELECT DISTINCT Genre, COUNT(Genre) as no_of_genres
FROM `capstone-452719.VideoGames.Sales`
GROUP BY Genre;

--checking number of Publisher

SELECT DISTINCT Publisher, COUNT(Publisher) as no_of_publishers
FROM `capstone-452719.VideoGames.Sales`
GROUP BY Publisher;

--checking number of releaed years

SELECT DISTINCT Year, COUNT(Year) as no_of_years
FROM `capstone-452719.VideoGames.Sales`
GROUP BY Year;
