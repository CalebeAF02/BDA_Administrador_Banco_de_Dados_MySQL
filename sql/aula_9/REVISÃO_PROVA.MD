1- Escreva o script SQL para criar um banco de dados chamado ExercitoDB e adicione as duas tabelas descritas a seguir, aplicando corretamente as restrições:


Tabela Alunos:
* AlunoID: Chave primária que deve gerar valores numéricos sequenciais automaticamente.
* Nome: Texto (máximo 150 caracteres), obrigatório preenchimento.
* Email: Texto (máximo 100 caracteres), não pode haver emails duplicados no sistema e o preenchimento é obrigatório.
* DataMatricula: Data padrão deve ser a data atual do sistema se não for informada.

Tabela Matriculas:
* MatriculaID: Chave primária inteira.
* AlunoID: Código do aluno (deve vincular-se à tabela Alunos).
* Curso: Texto (máximo 100 caracteres), obrigatório.
* StatusCurso: Texto, com uma verificação para aceitar apenas os valores: 'Ativo', 'Trancado' ou 'Concluído'.

Modificação Estrutural:

* Após criar as tabelas, utilize um comando para adicionar uma nova coluna chamada NotaFinal (tipo numérico decimal) na tabela Matriculas.
* Insira 4 dados em cada entidade


-- Utilize os bancos de dados World e Sakila para resolver as questões de manipulação e consulta de dados (DML) abaixo. Preste muita atenção aos critérios de filtragem, junções e agrupamentos solicitados.

1 - Questão 1 (SAKILA):
Escreva uma consulta que retorne o título (title), a descrição (description) e o ano de lançamento (release_year) de todos os filmes que possuem a classificação indicativa (rating) igual a 'G'.  

Questão 2 (SAKILA):
A equipe de marketing precisa listar os clientes que estão atualmente inativos para uma campanha de reengajamento. Exiba o primeiro nome (first_name), o sobrenome (last_name) e o email de todos os clientes (tabela customer) cujo status de ativo (active) seja igual a 0. Ordene o resultado alfabeticamente pelo sobrenome. Pense em uma solução para trazer esses usuários de volta  

Questão 3 (WORLD):
Escreva uma consulta que exiba o nome (Name), o continente (Continent) e a população (Population) de todos os países que pertencem ao continente 'South Africa'.

Questão 4 (WORLD):
Escreva uma consulta que retorne o nome do país, o nome da sua respectiva cidade capital e a expectativa de vida apenas para os países localizados no continente 'Europe'. O relatório deve omitir qualquer país que não possua uma capital cadastrada ou que tenha a expectativa de vida nula (NULL) , ordenando o resultado final do país com a maior expectativa de vida para o menor.  

Questão 5 (WORLD):
Crie uma query que agrupe as cidades pelo código do país (CountryCode) e exiba a média populacional das cidades de cada um. No entanto, o relatório deve exibir apenas os países cuja média populacional de suas cidades seja estritamente maior que 2.000.000 de habitantes.  

Questão 6 (WORLD):
O departamento de estatística precisa analisar a diversidade linguística mundial. Escreva uma consulta que exiba o nome do país (country.Name) e a quantidade de idiomas diferentes falados nele (baseado na tabela countrylanguage). Exiba apenas os países que possuem mais de 5 idiomas registrados e ordene o resultado da maior quantidade de idiomas para a menor.  Banco de Dados SAKILA

Questão 7 (SAKILA):
O gerente da locadora precisa de um relatório de desempenho financeiro por categoria de filme. Escreva uma consulta que exiba o nome da categoria do filme (tabela category) e o valor total arrecadado (soma de amount na tabela payment) para cada uma delas. Para isso, você precisará conectar as tabelas category, film_category, film, inventory, rental e payment. Ordene o resultado final pelo faturamento de forma decrescente.  

Questão 8 (SAKILA):
Escreva uma consulta para encontrar o nome completo (nome e sobrenome) e o email de todos os clientes que realizaram um número total de locações (rentals) maior do que a média geral de locações por cliente do sistema. Ordene o resultado final em ordem alfabética pelo sobrenome do cliente.  

Questão 9 (SAKILA):
Encontre todos os filmes cuja descrição (description) contenha especificamente a palavra 'Documentary' e cujo preço de locação (rental_rate) esteja no intervalo entre $2.00 e $5.00. Exiba o título, a descrição e o preço de locação, limitando o resultado final estritamente aos 10 primeiros registros encontrados, ordenados de forma alfabética pelo título.  

Questão 10 (SAKILA):
Identifique quais atores (exibindo actor_id, first_name e last_name) participaram de filmes que, somados, acumulam um custo de substituição (replacement_cost) superior a $1.000,00. Ordene o resultado pelo custo total de substituição de forma decrescente para descobrir os atores "mais caros" do catálogo.