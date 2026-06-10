use aula_1;

-- Verifica os dados existentes
select * 
from cliente;

-- Insere um conjunto de informações na tabela cliente
insert into cliente (nome,cpf,telefone,endereco,cnpj,tipo)
values
("Calebe", "12345678901","(61) 99300-9537","casa 01","12345678901234","JURIDICO");

select * 
from cliente
where cpf = "12345678901";

-- Atualiza uma unica informação da tabela cliente de uma linha especifica
update cliente
set tipo = "FISICO"
where cpf = "12345678901";

-- seleciona o cliente do cpf tal
select (tipo)
from cliente
where cpf = "12345678901";

-- Deleta uma unica informação da tabela cliente de uma linha especifica
delete from cliente
where cpf = "12345678901";

-- verifica se esse cliente existe
select * 
from cliente
where cpf = "12345678901";

-- seleciona todos os clientes
select * 
from cliente;

-- seleciona as linhas que possui os valores diferentes de um especifico na coluna
select * 
from cliente
where ! tipo = "JURIDICO";

-- seleciona as linhas que não possuem a coluna nome vazia
select *
from cliente
where nome is not null;

-- conta as linhas que não possuem vlaores nulos
select count(*)
from cliente
where cpf is not null;

-- seleciona quem começa com M ou C
select *
from cliente
where nome like "M%" or nome like "C%";

-- encontra as linhas com determinados valores
select *
from cliente
where nome in ("Calebe","Mariana Souza Dias","Carlos Augusto Lima");

-- seleciona quem possui cpf de um valor ate um valor
select *
from cliente
where cpf between 0 and 243456789;


-- ordena os nomes em ordem descrescente
select * 
from cliente
order by nome desc;

select min(cnpj) 
from cliente;

select max(cnpj) 
from cliente;

-- tipos
-- min(), max, count(), avg(), sum()
