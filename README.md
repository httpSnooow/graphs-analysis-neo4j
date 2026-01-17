# Neo4j: Análise de Dados com Grafos

> Repositório oficial dos meus estudos e desafios práticos desenvolvidos durante o Bootcamp da **Digital Innovation One (DIO)**. O foco é dominar a modelagem e análise de dados complexos através de Bancos de Dados Orientados a Grafos.

<div align="center">

  ![Neo4J](https://img.shields.io/badge/Neo4j-008CC1?style=for-the-badge&logo=neo4j&logoColor=white)
  ![Cypher](https://img.shields.io/badge/Cypher-Query_Lang-gray?style=for-the-badge&logo=neo4j&logoColor=white)
  ![DIO](https://img.shields.io/badge/DIO-Bootcamp-30A3DC?style=for-the-badge&logo=udemy&logoColor=white)

</div>

---

## O Que Estou Aprendendo?

Diferente dos bancos relacionais (SQL) que focam em tabelas, este curso explora o poder das **conexões**. O objetivo é entender como modelar o mundo real através de nós e relacionamentos para resolver problemas como detecção de fraudes e sistemas de recomendação.

### Conteúdo Programático

<details>
<summary><b>🔻 Clique para ver os módulos detalhados</b></summary>

| Módulo | Tópicos Abordados |
| :--- | :--- |
| **1. Fundamentos** | • Diferença Relacional vs. Grafo <br> • Vantagens do NoSQL <br> • Arquitetura do Neo4j |
| **2. Estrutura** | • **Nodes** (Nós) e **Labels** (Rótulos) <br> • **Relationships** (Relacionamentos) direcionados <br> • **Properties** (Propriedades chave-valor) |
| **3. Ecossistema** | • Neo4j Desktop (Local) <br> • **AuraDB** (Cloud/DBaaS) <br> • Neo4j Browser |
| **4. Cypher** | • Sintaxe básica (`MATCH`, `RETURN`) <br> • Criação (`CREATE`, `MERGE`) <br> • Filtragem e Agregação |
| **5. Casos de Uso** | • Redes Sociais <br> • Detecção de Fraudes <br> • Gestão de Identidades |

</details>

---

## Estrutura do Projeto

O repositório está organizado para facilitar a consulta de scripts e resoluções.

* **`/challenge`**: Contém a solução prática para os desafios de projeto propostos pela DIO.
* **`/scripts`**: Snippets úteis de Cypher que desenvolvi durante as aulas.

---

## Tecnologias & Ferramentas

<div align="left">
  <img src="https://img.shields.io/badge/Neo4j-008CC1?style=for-the-badge&logo=neo4j&logoColor=white" />
  <img src="https://img.shields.io/badge/Aura_DB-Cloud-blue?style=for-the-badge&logo=icloud&logoColor=white" />
  <img src="https://img.shields.io/badge/Cypher-Language-lightgrey?style=for-the-badge" />
</div>

---

## Como Executar os Scripts

Você pode rodar os códigos deste repositório tanto localmente quanto na nuvem.

### Opção 1: Neo4j AuraDB (Nuvem - Recomendado)
1. Crie uma conta gratuita no [Neo4j Aura](https://neo4j.com/cloud/aura-free/).
2. Crie uma nova instância (Database).
3. Abra o **Neo4j Browser** no navegador.
4. Copie o conteúdo dos arquivos `.cypher` deste repositório e cole no console.

### Opção 2: Neo4j Desktop (Local)
1. Baixe e instale o [Neo4j Desktop](https://neo4j.com/download/).
2. Crie um novo Projeto e inicie o banco (Start).
3. Abra o terminal integrado e execute os comandos.

