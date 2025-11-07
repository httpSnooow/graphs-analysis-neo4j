🚀 Desafio 01: Modelagem de Grafos (Streaming)

Esta pasta contém a solução para o primeiro desafio prático do curso de Neo4j da DIO.

🎯 Objetivo

O desafio consiste em projetar, criar e popular um banco de dados de grafos no Neo4j para simular um sistema simples de streaming de filmes e séries.

📂 Conteúdo

constraints.cypher: Script Cypher para criar as CONSTRAINTS (índices únicos) para cada Label (Nó) no banco de dados.

merge-create.cypher: Script Cypher para popular o banco de dados com todos os nós (Usuários, Filmes, Atores, etc.).

relationship.cypher: Script Cypher para ligar as relações do banco de dados entre os nós (Usuários, Filmes, Atores, etc.) e adicionar a propriedade "rating" a relação "whatched".

📊 Modelo de Dados

O modelo de dados segue o diagrama proposto, conectando:

User

Movie & Series

Actor & Director

Genre

Os relacionamentos principais são WATCHED, ACTED_IN, DIRECTED e IN_GENRE.
