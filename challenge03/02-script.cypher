// CONSTRAINTS
CREATE CONSTRAINT user_username_unique FOR (u:User) REQUIRE u.username IS UNIQUE;
CREATE CONSTRAINT post_id_unique FOR (p:Post) REQUIRE p.postId IS UNIQUE;
CREATE CONSTRAINT topic_name_unique FOR (t:Topic) REQUIRE t.name IS UNIQUE;

// NÓS (NODES)

// --- Tópicos ---
MERGE (t1:Topic {name: "Tech"})
MERGE (t2:Topic {name: "Programming"})
MERGE (t3:Topic {name: "Neo4j"})
MERGE (t4:Topic {name: "Finance"})
MERGE (t5:Topic {name: "Investing"})
MERGE (t6:Topic {name: "Cooking"})
MERGE (t7:Topic {name: "Baking"});

MERGE (u1:User {username: "gui_dev", name: "Gui"})
MERGE (u2:User {username: "ana_data", name: "Ana"})
MERGE (u3:User {username: "bruno_backend", name: "Bruno"});

MERGE (u4:User {username: "carla_invest", name: "Carla"})
MERGE (u5:User {username: "davi_stocks", name: "Davi"});

MERGE (u6:User {username: "felipe_chef", name: "Felipe"})
MERGE (u7:User {username: "gabi_bakes", name: "Gabi"});

// --- Posts ---
MERGE (p1:Post {postId: "post_001", text: "Acabei de terminar o desafio de Neo4j! Grafos são demais."})
MERGE (p2:Post {postId: "post_002", text: "Como otimizar queries em Java? #Programming"})
MERGE (p3:Post {postId: "post_003", text: "O mercado de ações está volátil hoje."})
MERGE (p4:Post {postId: "post_004", text: "Dicas para seu primeiro investimento em FIIs."})
MERGE (p5:Post {postId: "post_005", text: "Receita de pão de fermentação natural 🍞"})
MERGE (p6:Post {postId: "post_006", text: "A importância de um bom back-end para Data Science."})
MERGE (p7:Post {postId: "post_007", text: "Investir em tech vale a pena? Minha análise."}); // Post "Ponte"

// RELACIONAMENTOS

// --- Interesses dos Usuários ---
MATCH (u:User {username: "gui_dev"}), (t:Topic {name: "Neo4j"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "gui_dev"}), (t:Topic {name: "Programming"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "ana_data"}), (t:Topic {name: "Tech"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "bruno_backend"}), (t:Topic {name: "Programming"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "carla_invest"}), (t:Topic {name: "Investing"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "davi_stocks"}), (t:Topic {name: "Finance"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "davi_stocks"}), (t:Topic {name: "Investing"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "felipe_chef"}), (t:Topic {name: "Cooking"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "gabi_bakes"}), (t:Topic {name: "Baking"}) CREATE (u)-[:INTERESTED_IN]->(t);
MATCH (u:User {username: "gabi_bakes"}), (t:Topic {name: "Cooking"}) CREATE (u)-[:INTERESTED_IN]->(t);

MATCH (u:User {username: "ana_data"}), (t:Topic {name: "Baking"}) CREATE (u)-[:INTERESTED_IN]->(t); 

// --- FOLLOWS ---
MATCH (u1:User {username: "gui_dev"}), (u2:User {username: "ana_data"}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u1:User {username: "gui_dev"}), (u2:User {username: "bruno_backend"}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u1:User {username: "ana_data"}), (u2:User {username: "gui_dev"}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u1:User {username: "carla_invest"}), (u2:User {username: "davi_stocks"}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u1:User {username: "davi_stocks"}), (u2:User {username: "carla_invest"}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u1:User {username: "felipe_chef"}), (u2:User {username: "gabi_bakes"}) CREATE (u1)-[:FOLLOWS]->(u2);
MATCH (u1:User {username: "gui_dev"}), (u2:User {username: "davi_stocks"}) CREATE (u1)-[:FOLLOWS]->(u2); 

// --- Posts ---
MATCH (u:User {username: "gui_dev"}), (p:Post {postId: "post_001"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_001"}), (t:Topic {name: "Neo4j"}) CREATE (p)-[:HAS_TOPIC]->(t);
MATCH (p:Post {postId: "post_001"}), (t:Topic {name: "Tech"}) CREATE (p)-[:HAS_TOPIC]->(t);

MATCH (u:User {username: "bruno_backend"}), (p:Post {postId: "post_002"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_002"}), (t:Topic {name: "Programming"}) CREATE (p)-[:HAS_TOPIC]->(t);

MATCH (u:User {username: "carla_invest"}), (p:Post {postId: "post_003"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_003"}), (t:Topic {name: "Finance"}) CREATE (p)-[:HAS_TOPIC]->(t);

MATCH (u:User {username: "davi_stocks"}), (p:Post {postId: "post_004"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_004"}), (t:Topic {name: "Investing"}) CREATE (p)-[:HAS_TOPIC]->(t);

MATCH (u:User {username: "gabi_bakes"}), (p:Post {postId: "post_005"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_005"}), (t:Topic {name: "Baking"}) CREATE (p)-[:HAS_TOPIC]->(t);

MATCH (u:User {username: "ana_data"}), (p:Post {postId: "post_006"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_006"}), (t:Topic {name: "Tech"}) CREATE (p)-[:HAS_TOPIC]->(t);
MATCH (p:Post {postId: "post_006"}), (t:Topic {name: "Programming"}) CREATE (p)-[:HAS_TOPIC]->(t);

MATCH (u:User {username: "davi_stocks"}), (p:Post {postId: "post_007"}) CREATE (u)-[:POSTED]->(p);
MATCH (p:Post {postId: "post_007"}), (t:Topic {name: "Investing"}) CREATE (p)-[:HAS_TOPIC]->(t);
MATCH (p:Post {postId: "post_007"}), (t:Topic {name: "Tech"}) CREATE (p)-[:HAS_TOPIC]->(t);

// --- LIKES e REPOSTED ---
MATCH (u:User {username: "ana_data"}), (p:Post {postId: "post_001"}) CREATE (u)-[:LIKES]->(p);
MATCH (u:User {username: "bruno_backend"}), (p:Post {postId: "post_001"}) CREATE (u)-[:LIKES]->(p);
MATCH (u:User {username: "gui_dev"}), (p:Post {postId: "post_006"}) CREATE (u)-[:REPOSTED]->(p);
MATCH (u:User {username: "felipe_chef"}), (p:Post {postId: "post_005"}) CREATE (u)-[:LIKES]->(p);
MATCH (u:User {username: "ana_data"}), (p:Post {postId: "post_005"}) CREATE (u)-[:LIKES]->(p); // Ana (Tech) curte post de Culinária
MATCH (u:User {username: "gui_dev"}), (p:Post {postId: "post_007"}) CREATE (u)-[:LIKES]->(p); // Gui (Tech) curte post de Finanças/Tech
