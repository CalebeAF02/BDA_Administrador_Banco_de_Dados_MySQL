## 1\) Qual é a principal função do comando JOIN?

a) Agrupar registros

**b) Juntar tabelas relacionadas**

c) Filtrar registros

d) Ordenar resultados





## 2\) Qual JOIN retorna apenas os registros que possuem correspondência nas duas tabelas?

a) LEFT JOIN

b) RIGHT JOIN

c) INNER JOIN

**d) CROSS JOIN**





## 3\) O comando UNION é utilizado para:

a) Juntar tabelas

b) Criar grupos

**c) Unir resultados de consultas**

d) Filtrar grupos





## 4\) Qual comando é utilizado para agrupar registros que possuem o mesmo valor?

a) ORDER BY

**b) GROUP BY**

c) HAVING

d) UNION





## 5\) Qual função é utilizada para contar registros?

a) SUM()

b) AVG()

**c) COUNT()**

d) MAX()





## 6\) Qual cláusula é utilizada para filtrar registros antes do agrupamento?

a) HAVING

b) GROUP BY

c) ORDER BY

**d) WHERE**





## 7\)

Observe as tabelas:



Cliente

id\_cliente	nome

1		João

2		Maria

3		Pedro



Agendamento

id\_agendamento	id\_cliente

1		1

2		2



### Qual cliente aparecerá em um LEFT JOIN entre Cliente e Agendamento?

a) João e Maria

b) Apenas Pedro

**c) João, Maria e Pedro**

d) Nenhum





## 8\) Analise a consulta:



SELECT categoria,

&#x20;      COUNT(\*)

FROM produto

GROUP BY categoria;



### O que será exibido?



a) Todos os produtos cadastrados

**b) A quantidade de produtos por categoria**

c) Apenas as categorias

d) A média de produtos por categoria





## 9\) Considere o resultado após um GROUP BY:



cidade	     quantidade

Brasília	3

Goiânia		8

Natal		2



### Qual cláusula deve ser utilizada para mostrar apenas cidades com mais de 5 registros?



a) WHERE quantidade > 5

b) GROUP BY quantidade > 5

**c) HAVING COUNT(\*) > 5**

d) ORDER BY quantidade > 5





## 10\) Observe a consulta:



SELECT first\_name

FROM customer



UNION



SELECT first\_name

FROM staff;



### Qual será o comportamento do UNION?



a) Juntará as tabelas customer e staff.

b) Criará grupos de nomes.

**c) Unirá os resultados das consultas removendo nomes repetidos.**

d) Ordenará os nomes em ordem alfabética.

