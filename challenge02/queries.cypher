// Recomendar Músicas de Artistas Seguidos

MATCH (u:User {name: "Alice"})-[:FOLLOWS]->(a:Artist)
MATCH (m:Music)-[:PERFORMED_BY]->(a)
WHERE NOT EXISTS { (u)-[:LIKES|LISTENED_TO]->(m) }
RETURN m.title AS Recomendacao, a.name AS Artista

// Collaborative Filtering

MATCH (u1:User {name: "Alice"})
MATCH (u1)-[:LIKES|FOLLOWS]->(item)
MATCH (u2:User)-[:LIKES|FOLLOWS]->(item)
WHERE u1 <> u2 
WITH u1, u2, count(item) AS similarityScore

MATCH (u2)-[:LIKES]->(rec:Music)
WHERE NOT EXISTS { (u1)-[:LIKES|LISTENED_TO]->(rec) }

RETURN rec.title AS Recomendacao,
       u2.name AS RecomendadoPor,
       similarityScore
ORDER BY similarityScore DESC

// Recomendação por Gênero

MATCH (u:User {name: "Alice"})

MATCH (u)-[:FOLLOWS]->(followedArtist:Artist)-[:PLAYS_GENRE]->(genre:Genre)

MATCH (similarArtist:Artist)-[:PLAYS_GENRE]->(genre)
WHERE similarArtist <> followedArtist

MATCH (recMusic:Music)-[:PERFORMED_BY]->(similarArtist)

WHERE NOT EXISTS { (u)-[:LIKES|LISTENED_TO]->(recMusic) }
AND NOT EXISTS { (u)-[:FOLLOWS]->(similarArtist) }

RETURN DISTINCT recMusic.title AS Recomendacao,
                similarArtist.name AS ArtistaSimilar,
                genre.name AS GeneroEmComum
LIMIT 10

// Recomendação Social

MATCH (u1:User {name: "Alice"})
MATCH (u1)-[:FOLLOWS]->(friend:User)
MATCH (friend)-[:FOLLOWS]->(recArtist:Artist)

WHERE NOT EXISTS { (u1)-[:FOLLOWS]->(recArtist) }

RETURN DISTINCT recArtist.name AS ArtistaRecomendado,
                friend.name AS AmigoEmComum
LIMIT 10

// Caminhos

MATCH p = shortestPath( 
  (u:User {name: "Bob"})-[*..10]-(m:Music {title: "Creep"}) 
)

RETURN p

// Comunidades

MATCH (u:User {name: "Alice"})
MATCH (u)-[:FOLLOWS]->(friend:User)
MATCH (friend)-[:LIKES]->(recMusic:Music)

WHERE NOT EXISTS { (u)-[:LIKES|LISTENED_TO]->(recMusic) }

WITH recMusic, count(recMusic) AS popularidadeNaComunidade

RETURN recMusic.title AS RecomendacaoComunidade, 
       popularidadeNaComunidade
ORDER BY popularidadeNaComunidade DESC
