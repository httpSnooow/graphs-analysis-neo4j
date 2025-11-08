// Constraits

CREATE CONSTRAINT ON (u:User) ASSERT u.userId IS UNIQUE;
CREATE CONSTRAINT ON (m:Movie) ASSERT m.movieId IS UNIQUE;
CREATE CONSTRAINT ON (g:Genre) ASSERT g.name IS UNIQUE; 
CREATE CONSTRAINT ON (a:Actor) ASSERT a.actorId IS UNIQUE;
CREATE CONSTRAINT ON (d:Director) ASSERT d.directorId IS UNIQUE;

CREATE CONSTRAINT ON (g:Genre) ASSERT g.name IS UNIQUE;
  
// População - Merge

MERGE (u1:User {userId: "user_001", name: "Guilherme"})
MERGE (u2:User {userId: "user_002", name: "Gabriel"})
MERGE (u3:User {userId: "user_003", name: "Michele"})
MERGE (u4:User {userId: "user_004", name: "Luana"})
MERGE (u5:User {userId: "user_005", name: "Arthur"})
MERGE (u6:User {userId: "user_006", name: "Pedro"})
MERGE (u7:User {userId: "user_007", name: "Luziana"})
MERGE (u8:User {userId: "user_008", name: "Luciana"})
MERGE (u9:User {userId: "user_009", name: "Junior"})
MERGE (u10:User {userId: "user_010", name: "Roberta"});

MERGE (g1:Genre {name: "Action"})
MERGE (g2:Genre {name: "Comedy"})
MERGE (g3:Genre {name: "Drama"})
MERGE (g4:Genre {name: "Sci-Fi"})
MERGE (g5:Genre {name: "Horror"})
MERGE (g6:Genre {name: "Thriller"})
MERGE (g7:Genre {name: "Romance"})
MERGE (g8:Genre {name: "Fantasy"})
MERGE (g9:Genre {name: "Animation"})
MERGE (g10:Genre {name: "Documentary"});

MERGE (a1:Actor {actorId: "actor_001", name: "Tom Hanks"})
MERGE (a2:Actor {actorId: "actor_002", name: "Meryl Streep"})
MERGE (a3:Actor {actorId: "actor_003", name: "Leonardo DiCaprio"})
MERGE (a4:Actor {actorId: "actor_004", name: "Scarlett Johansson"})
MERGE (a5:Actor {actorId: "actor_005", name: "Denzel Washington"})
MERGE (a6:Actor {actorId: "actor_006", name: "Emma Watson"})
MERGE (a7:Actor {actorId: "actor_007", name: "Robert Downey Jr."})
MERGE (a8:Actor {actorId: "actor_008", name: "Angelina Jolie"})
MERGE (a9:Actor {actorId: "actor_009", name: "Brad Pitt"})
MERGE (a10:Actor {actorId: "actor_010", name: "Natalie Portman"})
MERGE (a11:Actor {actorId: "actor_011", name: "Chris Evans"})
MERGE (a12:Actor {actorId: "actor_012", name: "Jennifer Lawrence"});

MERGE (d1:Director {directorId: "director_001", name: "Steven Spielberg"})
MERGE (d2:Director {directorId: "director_002", name: "Christopher Nolan"})
MERGE (d3:Director {directorId: "director_003", name: "Quentin Tarantino"})
MERGE (d4:Director {directorId: "director_004", name: "Greta Gerwig"})
MERGE (d5:Director {directorId: "director_005", name: "Martin Scorsese"})
MERGE (d6:Director {directorId: "director_006", name: "Ava DuVernay"})
MERGE (d7:Director {directorId: "director_007", name: "James Cameron"})
MERGE (d8:Director {directorId: "director_008", name: "Denis Villeneuve"})
MERGE (d9:Director {directorId: "director_009", name: "Nora Ephron"})
MERGE (d10:Director {directorId: "director_010", name: "Alfred Hitchcock"})
MERGE (d11:Director {directorId: "director_011", name: "Wes Anderson"})
MERGE (d12:Director {directorId: "director_012", name: "Sofia Coppola"});

MERGE (m1:Movie {movieId: "movie_001", title: "Inception", year: 2010})
MERGE (m2:Movie {movieId: "movie_002", title: "Forrest Gump", year: 1994})
MERGE (m3:Movie {movieId: "movie_003", title: "Pulp Fiction", year: 1994})
MERGE (m4:Movie {movieId: "movie_004", title: "The Matrix", year: 1999})
MERGE (m5:Movie {movieId: "movie_005", title: "Parasite", year: 2019})
MERGE (m6:Movie {movieId: "movie_006", title: "Interstellar", year: 2014})
MERGE (m7:Movie {movieId: "movie_007", title: "The Shawshank Redemption", year: 1994})
MERGE (m8:Movie {movieId: "movie_008", title: "Fight Club", year: 1999})
MERGE (m9:Movie {movieId: "movie_009", title: "Spirited Away", year: 2001})
MERGE (m10:Movie {movieId: "movie_010", title: "Avatar", year: 2009})
MERGE (m11:Movie {movieId: "movie_011", title: "Dune", year: 2021})
MERGE (m12:Movie {movieId: "movie_012", title: "Barbie", year: 2023});

MERGE (s1:Series {seriesId: "series_001", title: "Stranger Things", startYear: 2016})
MERGE (s2:Series {seriesId: "series_002", title: "The Crown", startYear: 2016})
MERGE (s3:Series {seriesId: "series_003", title: "Breaking Bad", startYear: 2008})
MERGE (s4:Series {seriesId: "series_004", title: "The Mandalorian", startYear: 2019})
MERGE (s5:Series {seriesId: "series_005", title: "Chernobyl", startYear: 2019})
MERGE (s6:Series {seriesId: "series_006", title: "Friends", startYear: 1994})
MERGE (s7:Series {seriesId: "series_007", title: "The Office", startYear: 2005})
MERGE (s8:Series {seriesId: "series_008", title: "Game of Thrones", startYear: 2011})
MERGE (s9:Series {seriesId: "series_009", title: "Wednesday", startYear: 2022})
MERGE (s10:Series {seriesId: "series_010", title: "Arcane", startYear: 2021})
MERGE (s11:Series {seriesId: "series_011", title: "The Last of Us", startYear: 2023})
MERGE (s12:Series {seriesId: "series_012", title: "House of the Dragon", startYear: 2022});

// Relações e propriedade "rating"

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
MATCH (a:Actor {actorId: "actor_007"}), (s:Series {seriesId: "series_001"}) CREATE (a)-[:ACTED_IN]->(s); 
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
