-- 1. LOJA (CNPJ como número inteiro reduzido para caber no limite de INT do MySQL)
INSERT INTO LOJA(cnpj, razao, telefone, endereco)
VALUES
('12345678', 'Supermercado Silva Ltda', '6133211234', 'Numero 15 - Conjunto A - QL 02 - Quadra 4 - Bairro Asa Sul - Cidade Brasília - Estado DF'),
('87654321', 'Eletro Mundo S.A.', '1138765432',  'Numero 120 - Conjunto B - QL 05 - Quadra 12 - Bairro Centro - Cidade São Paulo - Estado SP');

-- 2. FUNCIONARIO (id_pessoa único e cargos batendo com o ENUM)
INSERT INTO FUNCIONARIO(nome, cpf, telefone, endereco, cargo, salario)
VALUES
('Roberto Gomes Silva', '345678901', '11977773333', 'Numero 88 - Conjunto B - QL 12 - Quadra 8 - Bairro Pinheiros - Cidade São Paulo - Estado SP','GERENTE', 5500),
('Ana Beatriz Ribeiro', '456789012', '61988884444', 'Numero 12 - Conjunto A - QL 02 - Quadra 3 - Bairro Asa Sul - Cidade Brasília - Estado DF', 'CAIXA', 2100),
('Silveira dos Santos', '561451516', '61921842321', 'Numero 01 - Conjunto J - QL 10 - Quadra 4 - Bairro Itapoã - Cidade Brasília - Estado DF', 'VENDEDOR', 2500);

-- 3. CLIENTE (id_pessoa único, cnpj como int)
INSERT INTO CLIENTE(nome, cpf, telefone, endereco, cnpj, tipo)
VALUES
('Carlos Augusto Lima', '123456789', '61988881111', 'Numero 10 - Conjunto A - QL 01 - Quadra 2 - Bairro Asa Norte - Cidade Brasília - Estado DF','51645132', 'FISICO'),
('Mariana Souza Dias', '234567890', '61988882222', 'Numero 45 - Conjunto C - QL 03 - Quadra 5 - Bairro Guará - Cidade Brasília - Estado DF','999999', 'FISICO');

-- 4. PRODUTO (valores decimais sem letras, perecivel como bool)
INSERT INTO PRODUTO(nome, categoria, perecivel, valor, estoque)
VALUES
('Arroz Integral 5kg', 'Alimentos', true, "25", 100),
('Detergente Líquido 500ml', 'Limpeza', false, "3", 250),
('Smart TV 55 Polegadas', 'Eletrônicos', false, "2499", 15);

-- 5. FORNECEDOR (cnpj como int, quadra como int)
INSERT INTO FORNECEDOR(cnpj, razao, numero, conjunto, ql, quadra, bairro, ciade, estado)
VALUES
('55566677', 'Distribuidora Alimentos S.A.', '500', 'Industrial', '01', 3, 'Setor Industrial', 'Taguatinga', 'DF'),
('88899911', 'Logística Eletro BR', '1020', 'Galpão B', '04', 2, 'Cumbica', 'Guarulhos', 'SP');

-- 6. FORNECIMENTO (id_fornecedor aponta para o cnpj int do fornecedor)
INSERT INTO FORNECIMENTO(quantidade, valor)
VALUES
(50, "1000"),
(5, "10000");

-- 7. VENDA (amarrando chaves estrangeiras de tesouraria, funcionario e cliente)
INSERT INTO VENDA(valor, quantidade, forma, status)
VALUES
("62", 6,'PIX', true),
("2499", 1,'CREDITO', true);

-- 8. ITEM_PEDIDO
INSERT INTO ITEM_PEDIDO(quantidade, valor_unitario, valor_total)
VALUES
(2, 25, 50),
(4, 3, 12),
(1, 2499, 2499);
