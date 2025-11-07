MATCH (m:Movie {movieId: "movie_001"}), (g:Genre {name: "Sci-Fi"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_001"}), (g:Genre {name: "Thriller"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_002"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_002"}), (g:Genre {name: "Romance"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_003"}), (g:Genre {name: "Thriller"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_003"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_004"}), (g:Genre {name: "Sci-Fi"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_004"}), (g:Genre {name: "Action"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_005"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_005"}), (g:Genre {name: "Thriller"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_006"}), (g:Genre {name: "Sci-Fi"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_007"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_008"}), (g:Genre {name: "Drama"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_009"}), (g:Genre {name: "Animation"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_009"}), (g:Genre {name: "Fantasy"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_010"}), (g:Genre {name: "Sci-Fi"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_011"}), (g:Genre {name: "Sci-Fi"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_012"}), (g:Genre {name: "Comedy"}) CREATE (m)-[:IN_GENRE]->(g);
MATCH (m:Movie {movieId: "movie_012"}), (g:Genre {name: "Fantasy"}) CREATE (m)-[:IN_GENRE]->(g);

MATCH (s:Series {seriesId: "series_001"}), (g:Genre {name: "Sci-Fi"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_001"}), (g:Genre {name: "Horror"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_002"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_003"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_003"}), (g:Genre {name: "Thriller"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_004"}), (g:Genre {name: "Sci-Fi"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_004"}), (g:Genre {name: "Action"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_005"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_005"}), (g:Genre {name: "Thriller"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_006"}), (g:Genre {name: "Comedy"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_007"}), (g:Genre {name: "Comedy"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_008"}), (g:Genre {name: "Fantasy"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_008"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_009"}), (g:Genre {name: "Fantasy"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_010"}), (g:Genre {name: "Animation"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_011"}), (g:Genre {name: "Drama"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_011"}), (g:Genre {name: "Horror"}) CREATE (s)-[:IN_GENRE]->(g);
MATCH (s:Series {seriesId: "series_012"}), (g:Genre {name: "Fantasy"}) CREATE (s)-[:IN_GENRE]->(g);


MATCH (a:Actor {actorId: "actor_001"}), (m:Movie {movieId: "movie_002"}) CREATE (a)-[:ACTED_IN]->(m); 
MATCH (a:Actor {actorId: "actor_003"}), (m:Movie {movieId: "movie_001"}) CREATE (a)-[:ACTED_IN]->(m); 
MATCH (a:Actor {actorId: "actor_004"}), (m:Movie {movieId: "movie_004"}) CREATE (a)-[:ACTED_IN]->(m); 
MATCH (a:Actor {actorId: "actor_007"}), (m:Movie {movieId: "movie_006"}) CREATE (a)-[:ACTED_IN]->(m); 
MATCH (a:Actor {actorId: "actor_009"}), (m:Movie {movieId: "movie_008"}) CREATE (a)-[:ACTED_IN]->(m); 
MATCH (a:Actor {actorId: "actor_006"}), (m:Movie {movieId: "movie_012"}) CREATE (a)-[:ACTED_IN]->(m); 

MATCH (a:Actor {actorId: "actor_001"}), (s:Series {seriesId: "series_006"}) CREATE (a)-[:ACTED_IN]->(s); 
MATCH (a:Actor {actorId: "actor_007"}), (s:Series {seriesId: "series_001"}) CREATE (a)-[:ACTED_IN]->(s); /
MATCH (a:Actor {actorId: "actor_009"}), (s:Series {seriesId: "series_008"}) CREATE (a)-[:ACTED_IN]->(s); 


MATCH (d:Director {directorId: "director_002"}), (m:Movie {movieId: "movie_001"}) CREATE (d)-[:DIRECTED]->(m); 
MATCH (d:Director {directorId: "director_002"}), (m:Movie {movieId: "movie_006"}) CREATE (d)-[:DIRECTED]->(m); 
MATCH (d:Director {directorId: "director_001"}), (m:Movie {movieId: "movie_002"}) CREATE (d)-[:DIRECTED]->(m); 
MATCH (d:Director {directorId: "director_003"}), (m:Movie {movieId: "movie_003"}) CREATE (d)-[:DIRECTED]->(m); 
MATCH (d:Director {directorId: "director_008"}), (m:Movie {movieId: "movie_011"}) CREATE (d)-[:DIRECTED]->(m); 
MATCH (d:Director {directorId: "director_004"}), (m:Movie {movieId: "movie_012"}) CREATE (d)-[:DIRECTED]->(m); 

MATCH (d:Director {directorId: "director_002"}), (s:Series {seriesId: "series_003"}) CREATE (d)-[:DIRECTED]->(s); 
MATCH (d:Director {directorId: "director_001"}), (s:Series {seriesId: "series_004"}) CREATE (d)-[:DIRECTED]->(s); 


MATCH (u:User {userId: "user_001"}), (m:Movie {movieId: "movie_001"}) CREATE (u)-[:WATCHED {rating: 10}]->(m);
MATCH (u:User {userId: "user_001"}), (m:Movie {movieId: "movie_002"}) CREATE (u)-[:WATCHED {rating: 9}]->(m);
MATCH (u:User {userId: "user_002"}), (m:Movie {movieId: "movie_001"}) CREATE (u)-[:WATCHED {rating: 8}]->(m);
MATCH (u:User {userId: "user_002"}), (m:Movie {movieId: "movie_003"}) CREATE (u)-[:WATCHED {rating: 10}]->(m);
MATCH (u:User {userId: "user_003"}), (m:Movie {movieId: "movie_004"}) CREATE (u)-[:WATCHED {rating: 6}]->(m);
MATCH (u:User {userId: "user_004"}), (m:Movie {movieId: "movie_005"}) CREATE (u)-[:WATCHED {rating: 10}]->(m);
MATCH (u:User {userId: "user_005"}), (m:Movie {movieId: "movie_006"}) CREATE (u)-[:WATCHED {rating: 9}]->(m);
MATCH (u:User {userId: "user_006"}), (m:Movie {movieId: "movie_007"}) CREATE (u)-[:WATCHED {rating: 9}]->(m);
MATCH (u:User {userId: "user_007"}), (m:Movie {movieId: "movie_008"}) CREATE (u)-[:WATCHED {rating: 8}]->(m);
MATCH (u:User {userId: "user_008"}), (m:Movie {movieId: "movie_009"}) CREATE (u)-[:WATCHED {rating: 10}]->(m);
MATCH (u:User {userId: "user_009"}), (m:Movie {movieId: "movie_010"}) CREATE (u)-[:WATCHED {rating: 6}]->(m);
MATCH (u:User {userId: "user_010"}), (m:Movie {movieId: "movie_011"}) CREATE (u)-[:WATCHED {rating: 8}]->(m);


MATCH (u:User {userId: "user_001"}), (s:Series {seriesId: "series_001"}) CREATE (u)-[:WATCHED {rating: 10}]->(s);
MATCH (u:User {userId: "user_002"}), (s:Series {seriesId: "series_003"}) CREATE (u)-[:WATCHED {rating: 9}]->(s);
MATCH (u:User {userId: "user_003"}), (s:Series {seriesId: "series_002"}) CREATE (u)-[:WATCHED {rating: 7}]->(s);
MATCH (u:User {userId: "user_004"}), (s:Series {seriesId: "series_004"}) CREATE (u)-[:WATCHED {rating: 10}]->(s);
MATCH (u:User {userId: "user_005"}), (s:Series {seriesId: "series_005"}) CREATE (u)-[:WATCHED {rating: 8}]->(s);
MATCH (u:User {userId: "user_006"}), (s:Series {seriesId: "series_006"}) CREATE (u)-[:WATCHED {rating: 10}]->(s);
MATCH (u:User {userId: "user_007"}), (s:Series {seriesId: "series_007"}) CREATE (u)-[:WATCHED {rating: 9}]->(s);
MATCH (u:User {userId: "user_008"}), (s:Series {seriesId: "series_008"}) CREATE (u)-[:WATCHED {rating: 10}]->(s);
MATCH (u:User {userId: "user_009"}), (s:Series {seriesId: "series_009"}) CREATE (u)-[:WATCHED {rating: 7}]->(s);
MATCH (u:User {userId: "user_010"}), (s:Series {seriesId: "series_010"}) CREATE (u)-[:WATCHED {rating: 8}]->(s);
