# 🗄️ Administração de Banco de Dados (DBA) com MySQL

**Curso completo realizado no SENAI** com foco em modelagem de dados, SQL, DDL, DML, JOINs, subqueries e boas práticas de bancos relacionais.

<div align="center">

📂 [Repositório GitHub](https://github.com/CalebeAF02/BDA_Administrador_Banco_de_Dados_MySQL)  
📚 [Documentação Completa no Notion](https://topaz-hall-5f8.notion.site/Administrador-de-Banco-de-Dados-DBA-35e70184581b80e49314cf27bd2611ad)

</div>

---

## 🚀 Competências Desenvolvidas

| Modelagem | SQL | Bancos de Dados |
|-----------|-----|-----------------|
| ✅ MER (Modelagem Conceitual) | ✅ DDL (Create, Alter, Drop) | ✅ WORLD |
| ✅ DER (Modelagem Lógica) | ✅ DML (Select, Insert, Update, Delete) | ✅ SAKILA |
| ✅ Normalização | ✅ Integridade Referencial | ✅ MySQL |
| ✅ Relacionamentos | ✅ JOINs (Inner, Left, Right) | ✅ ExercitoDB |
|  | ✅ GROUP BY e HAVING | |
|  | ✅ Subqueries | |
|  | ✅ UNION | |

---

## 📊 Resumo do Curso

| Métrica | Quantidade |
|---------|-----------|
| **Aulas** | 9 |
| **Bancos Utilizados** | 3 (WORLD, SAKILA, ExercitoDB) |
| **Projetos Modelados** | 4 (Casa do Sertanejo, Biblioteca, Academia, Barbearia) |
| **Questões Resolvidas** | 50+ |
| **JOINs Praticados** | 20+ |
| **Subqueries Desenvolvidas** | 10+ |
| **Horas de Estudo** | ~40 |

---

## ⚙️ Como Executar

### Pré-requisitos
- **MySQL Server** instalado
- **MySQL Workbench** (recomendado)
- **Git** para clonar o repositório

### Passos

1. **Clone o repositório**
   ```bash
   git clone https://github.com/CalebeAF02/BDA_Administrador_Banco_de_Dados_MySQL.git
   cd BDA_Administrador_Banco_de_Dados_MySQL
   ```

2. **Abra MySQL Workbench**
   - Conecte ao seu servidor MySQL local

3. **Execute os scripts na ordem das aulas**
   ```
   sql/
   ├── aula_1/  → Execute primeiro (DDL básico)
   ├── aula_2/  → Continuação de DDL
   ├── aula_3/  → Modelagem complexa
   ├── aula_4/  → WORLD e SAKILA (importe os bancos)
   ├── aula_5/  → DML avançado
   ├── aula_6/  → Consultas filtradas
   ├── aula_7/  → Múltiplos critérios
   ├── aula_8/  → JOINs e GROUP BY ⭐
   └── aula_9/  → Prova final e subqueries 🎓
   ```

4. **Para executar um arquivo SQL:**
   - Abra em MySQL Workbench → `File > Open SQL Script`
   - Clique em ⚡ ou `Ctrl + Shift + Enter`

---

## 🔥 Principais Consultas Desenvolvidas

- ✅ **INNER JOIN** entre países e capitais
- ✅ **LEFT JOIN** para registros sem correspondência
- ✅ **GROUP BY com HAVING** - filtros em agregações
- ✅ **UNION** entre clientes e funcionários
- ✅ **Subqueries correlacionadas** - clientes com rentals > média
- ✅ **Ranking de países** por população
- ✅ **Análise de receita** do banco SAKILA (6 tabelas)
- ✅ **Contagem de idiomas** por país com filtros
- ✅ **LIKE com wildcards** e BETWEEN em intervalos
- ✅ **Agregação complexa** - custo total de filmes por ator

---

## 📋 Informações Gerais

- **Aluno:** Calebe Alves Freitas
- **SGBD:** MySQL
- **Duração:** 9 aulas progressivas
- **Nível:** Do básico ao avançado
- **Data de Conclusão:** junho de 2026

---

## 🎯 Objetivo do Curso

- ✅ Dominar criação e manipulação de bancos de dados em MySQL
- ✅ Praticar modelagem de dados relacionais complexos
- ✅ Desenvolver consultas SQL avançadas com JOINs, GROUP BY e subqueries
- ✅ Aplicar conceitos de integridade referencial e constraints
- ✅ Preparar-se para trabalhos com bancos de dados em produção

---

## 📊 Estrutura do Curso

### **AULA 1-2 | DDL e Fundamentos**
**Temas:** Criação de tabelas, constraints, relacionamentos básicos  
**Comandos:** `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `INSERT`, `DELETE`  
**Bancos:** Casa do Sertanejo

### **AULA 3 | Modelagem Complexa**
**Temas:** Tabelas com múltiplos relacionamentos, chaves compostas  
**Comandos:** Foreign Keys avançadas, ENUM, DEFAULT values  
**Banco:** Biblioteca

### **AULA 4 | Introdução aos Bancos WORLD e SAKILA**
**Temas:** Exploração de bancos públicos, funções de agregação  
**Comandos:** `SELECT`, `LIKE`, `BETWEEN`, `IN`, `LIMIT`, `COUNT()`, `AVG()`, `SUM()`  
**Bancos:** WORLD (dados geográficos), SAKILA (locadora de filmes)

### **AULA 5 | DML Avançado**
**Temas:** CRUD completo em dados reais, consultas com múltiplas condições  
**Comandos:** `UPDATE`, `DELETE` condicional, `WHERE` complexo  
**Banco:** AULA_1 (CLIENTE)

### **AULA 6 | Consultas Filtradas Avançadas**
**Temas:** 19 questões práticas com SELECT complexo, subqueries simples  
**Desafios:** Top 7 países mais populosos, filmes com durações específicas  
**Bancos:** WORLD, SAKILA

### **AULA 7 | Consultas com Múltiplos Critérios**
**Temas:** 9 questões complexas, combinações de filtros  
**Desafios:** Países africanos com múltiplas condições, filmes por intervalo de preço  
**Bancos:** WORLD, SAKILA

### **AULA 8 | JOINs, GROUP BY e HAVING** ⭐
**Temas:** Ponto de virada do curso - relacionamento de tabelas  
**Comandos:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `GROUP BY`, `HAVING`, `UNION`  
**Desafios:**
- Cidades com nomes de países (INNER JOIN)
- Filmes por classificação (GROUP BY + COUNT)
- Continentes com > 20 países (GROUP BY + HAVING)
- Lista única de clientes e funcionários (UNION)

**Bancos:** WORLD, SAKILA

### **AULA 9 | Prova Final - Subqueries e Consultas Complexas** 🎓
**Temas:** 10 questões da prova, criação de novo banco com DDL  
**Tópicos DDL:**
- Auto-increment para PKs
- ENUM com valores pré-definidos
- Relacionamentos com Foreign Keys
- ALTER TABLE para adicionar colunas

**Tópicos DML (10 questões):**
1. Filtro simples com rating = 'G'
2. Status de clientes inativos
3. Continentes específicos
4. JOINs com capitais e expectativa de vida
5. GROUP BY com HAVING e média populacional
6. Contagem de idiomas por país (com subquery)
7. **JOINs complexos em 6 tabelas** (category → film_category → film → inventory → rental → payment)
8. Subquery para clientes com rentals > média
9. LIKE com 'Documentary' + BETWEEN para preço + LIMIT 10
10. Agregação: atores com custo total de filmes > $1000

**Banco:** ExercitoDB (novo criado), WORLD, SAKILA

---

## 📈 Progressão de Habilidades

| Fase | Aulas | Foco | Complexidade |
|------|-------|------|--------------|
| **Fundação** | 1-3 | DDL e modelagem | Básico → Intermediário |
| **Exploração** | 4-5 | DML com dados reais | Intermediário |
| **Consultas** | 6-7 | Filtros complexos | Intermediário → Avançado |
| **Relacionamentos** | 8 | JOINs e agrupamento | **Avançado** |
| **Mastery** | 9 | Subqueries complexas | **Muito Avançado** |

---

## 🏗️ Modelagem de Dados

### Casa do Sertanejo
- E-commerce de produtos típicos nordestinos
- Tabelas: USUARIO, LOJA, PESSOA, FUNCIONARIO
- Enfoque: estrutura básica com Foreign Keys
- Diagrama: `projetos/Loja_Casa_Do_Sertanejo/`

### Biblioteca
- Sistema de empréstimo de livros
- Tabelas: AUTOR, ALUNO, LIVRO, EMPRESTIMO
- Enfoque: relacionamentos complexos (1-N, M-N)
- Diagrama: `projetos/academia/`

### Academia e Barbearia
- Diagramas ER disponíveis em `projetos/`

---

## 🗂️ Estrutura do Repositório

```
BDA_Administrador_Banco_de_Dados_MySQL/
├── sql/
│   ├── aula_1/     → DDL básico, criação de tabelas
│   ├── aula_2/     → Continuação de DDL
│   ├── aula_3/     → Modelagem com BIBLIOTECA
│   ├── aula_4/     → Introdução WORLD e SAKILA
│   ├── aula_5/     → CRUD avançado
│   ├── aula_6/     → Atividades 2-3 (SELECT com filtros)
│   ├── aula_7/     → Atividade 4 (consultas complexas)
│   ├── aula_8/     → Atividades 5-6 (JOINs, GROUP BY, HAVING)
│   ├── aula_9/     → Atividade 7 (prova final, subqueries)
│   └── util/       → Scripts auxiliares
├── projetos/       → Diagramas ER e modelagem
│   ├── academia/
│   ├── barbearia/
│   └── Loja_Casa_Do_Sertanejo/
└── README.md       → Este arquivo
```

---

## 🔑 Comandos SQL Principais por Etapa

### **DDL (Data Definition Language)**
```sql
CREATE DATABASE
CREATE TABLE
ALTER TABLE (ADD, MODIFY, DROP COLUMN)
DROP TABLE / TRUNCATE TABLE
```

### **Constraints & Relacionamentos**
```sql
PRIMARY KEY
FOREIGN KEY (CONSTRAINT fk_)
UNIQUE
NOT NULL
DEFAULT
CHECK
ENUM
```

### **DML Básico (Data Manipulation Language)**
```sql
INSERT INTO
UPDATE
DELETE FROM
SELECT (com projeções específicas)
```

### **DML Intermediário**
```sql
WHERE com AND/OR
BETWEEN, IN, LIKE
ORDER BY (ASC/DESC)
LIMIT
IS NULL / IS NOT NULL
```

### **Funções de Agregação**
```sql
COUNT()
SUM()
AVG()
MIN()
MAX()
```

### **Consultas Avançadas** ⭐
```sql
INNER JOIN
LEFT JOIN / RIGHT JOIN
GROUP BY
HAVING
UNION
Subqueries
```

---

## 📚 Bancos de Dados Utilizados

### **WORLD**
- Dados geográficos: países, cidades, idiomas
- Tabelas: country, city, countrylanguage
- Casos de uso: filtros por continente, população, expectativa de vida
- Download: Disponível em mysql.com/products/workbench/

### **SAKILA**
- Banco de dados de locadora de filmes
- Tabelas: film, actor, customer, rental, payment, category, inventory
- Casos de uso: análises de receita, filmes por categoria, comportamento de clientes
- Download: Disponível em github.com/mysql/mysql-workbench/tree/master/samples

### **ExercitoDB**
- Banco customizado criado para exercício final
- Tabelas: ALUNO, MATRICULA
- Demonstra: criação completa de banco e relacionamentos

---

## 💡 Principais Aprendizados

1. **DDL Sólido:** Criar e modificar estruturas de dados com constraints apropriadas
2. **Integridade Referencial:** Usar Foreign Keys para manter consistência
3. **Modelagem:** Pensar em relacionamentos e normalização
4. **Consultas Progressivas:** Evoluir de SELECT simples para JOINs complexos
5. **Agrupamento e Filtragem:** GROUP BY + HAVING para análises
6. **Subqueries:** Usar consultas dentro de consultas para lógica complexa
7. **Performance:** Entender o impacto de JOINs e índices

---

## 🎯 Aplicação Profissional

Os conhecimentos deste repositório podem ser aplicados em:

- 💼 **Administração de Banco de Dados** - Planejamento, criação e manutenção de bancos relacionais
- 🛠️ **Desenvolvimento Backend** - Integração de aplicações com bancos de dados
- 📊 **Engenharia de Dados** - Pipelines de dados e ETL
- 📈 **Business Intelligence** - Análises e relatórios com SQL avançado
- 🔍 **Análise de Dados** - Consultas complexas para insights
- 🌐 **Desenvolvimento Full Stack** - Modelagem de dados para sistemas web

---

## 🎓 Próximos Passos

- 📚 Explorar **índices** para otimização de queries
- 🔧 Estudar **views** e **procedures** (PL/SQL)
- 🔄 Aprender **transações** e **locks**
- 💾 Praticar **backup e restore**
- 🚀 Entender **replicação e clustering**
- 🐘 Explorar **PostgreSQL** e outros SGBDs

---

## 🔗 Documentação Complementar

### Notion - Acompanhamento Completo do Curso
Toda a documentação, anotações, exercícios e material de estudo:

📌 **[Administrador de Banco de Dados (DBA) - Notion](https://topaz-hall-5f8.notion.site/Administrador-de-Banco-de-Dados-DBA-35e70184581b80e49314cf27bd2611ad)**

### Estrutura dos Arquivos de Atividades

- **atividade_X.md** → Questões de exercícios (enunciados)
- **teste_X.sql** → Resoluções e exemplos práticos
- **prova.sql** → Questões da prova final
- **REVISÃO_PROVA.MD** → Guia de estudo para prova

---

## 👨‍💼 Autor

**Calebe Alves Freitas**

- 📧 Email: calebe@example.com
- 💼 LinkedIn: [Seu LinkedIn]
- 🐙 GitHub: [@CalebeAF02](https://github.com/CalebeAF02)

---

## 🎓 Instrutor

**Prof. Leydson**

- 🐙 GitHub: [@Leydsonbusiness](https://github.com/Leydsonbusiness)
- 🏫 Instrutor do Curso DBA no SENAI pelo Exército Brasileiro
- 💼 Especialista em Administração de Banco de Dados e SQL

Agradecimentos especiais ao professor Leydson pela excelente condução do curso, orientação didática e suporte durante todo o processo de aprendizagem.

---

<div align="center">

**Curso concluído em  18 junho de 2026** ✅


</div>
