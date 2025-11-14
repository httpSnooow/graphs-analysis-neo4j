// Qual é o conteúdo mais popular?

MATCH (p:Post)

OPTIONAL MATCH (l:User)-[:LIKES]->(p)
OPTIONAL MATCH (r:User)-[:REPOSTED]->(p)

WITH p, count(l) AS likes, count(r) AS reposts
RETURN p.text AS Post, 
       likes, 
       reposts, 
       (likes + (reposts * 2)) AS ScoreDeEngajamento
ORDER BY ScoreDeEngajamento DESC
LIMIT 5

// Quais usuários você recomendaria para o Gui?
MATCH (u1:User {username: "gui_dev"})-[:FOLLOWS]->(friend:User)

MATCH (friend)-[:FOLLOWS]->(fof:User) 

WHERE u1 <> fof AND NOT (u1)-[:FOLLOWS]->(fof)

RETURN DISTINCT fof.name AS Recomendacao, 
       collect(friend.name) AS AmigoEmComum

// Quais usuários a Ana deveria seguir com base em interesses?
MATCH (u1:User {username: "ana_data"})-[:INTERESTED_IN]->(topic:Topic)

MATCH (other:User)-[:INTERESTED_IN]->(topic)

WHERE u1 <> other AND NOT (u1)-[:FOLLOWS]->(other)

RETURN other.name AS Recomendacao, 
       topic.name AS InteresseEmComum


//Como a Ana descobriu um post de "Baking"?
MATCH (u:User {username: "ana_data"}), (t:Topic {name: "Baking"})
MATCH p = shortestPath( (u)-[*..6]-(t) )

RETURN p

// Como o Gui está conectado ao Felipe?
MATCH (u1:User {username: "gui_dev"}), (u2:User {username: "felipe_chef"})

MATCH p = shortestPath( (u1)-[*..10]-(u2) )

RETURN p