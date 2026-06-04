-- 1. LOJA (CNPJ como número inteiro reduzido para caber no limite de INT do MySQL)
INSERT INTO LOJA(cnpj, razao, telefone, numero, conjunto, ql, quadra, bairro, ciade, estado)
VALUES
('12345678', 'Supermercado Silva Ltda', '6133211234', '15', 'A', '02', 4, 'Asa Sul', 'Brasília', 'DF'),
('87654321', 'Eletro Mundo S.A.', '1138765432', '120', 'B', '05', 12, 'Centro', 'São Paulo', 'SP');

-- 2. PESSOA (cpf como número inteiro, quadra como int, id_loja referenciando o cnpj acima)
INSERT INTO PESSOA(nome, cpf, telefone, numero, conjunto, ql, quadra, bairro, ciade, estado, id_loja)
VALUES
('Carlos Augusto Lima', '123456789', '61988881111', '10', 'A', '01', 2, 'Asa Norte', 'Brasília', 'DF', 1),
('Mariana Souza Dias', '234567890', '61988882222', '45', 'C', '03', 5, 'Guará', 'Brasília', 'DF', 1),
('Roberto Gomes Silva', '345678901', '11977773333', '88', 'B', '12', 8, 'Pinheiros', 'São Paulo', 'SP', 2),
('Ana Beatriz Ribeiro', '456789012', '61988884444', '12', 'A', '02', 3, 'Asa Sul', 'Brasília', 'DF', 1);

-- 3. FUNCIONARIO (id_pessoa único e cargos batendo com o ENUM)
INSERT INTO FUNCIONARIO(id_pessoa, cargo, salario)
VALUES
(1, 'GERENTE', 5500),
(2, 'CAIXA', 2100),
(3, 'VENDEDOR', 2500);

-- 4. CLIENTE (id_pessoa único, cnpj como int)
INSERT INTO CLIENTE(id_pessoa, cnpj, tipo)
VALUES
(4, '999999', 'FISICO');

-- 5. PRODUTO (valores decimais sem letras, perecivel como bool)
INSERT INTO PRODUTO(nome, categoria, perecivel, valor, estoque)
VALUES
('Arroz Integral 5kg', 'Alimentos', true, "25", 100),
('Detergente Líquido 500ml', 'Limpeza', false, "3", 250),
('Smart TV 55 Polegadas', 'Eletrônicos', false, "2499", 15);

-- 6. FORNECEDOR (cnpj como int, quadra como int)
INSERT INTO FORNECEDOR(cnpj, razao, numero, conjunto, ql, quadra, bairro, ciade, estado)
VALUES
('55566677', 'Distribuidora Alimentos S.A.', '500', 'Industrial', '01', 3, 'Setor Industrial', 'Taguatinga', 'DF'),
('88899911', 'Logística Eletro BR', '1020', 'Galpão B', '04', 2, 'Cumbica', 'Guarulhos', 'SP');

-- 7. FORNECIMENTO (id_fornecedor aponta para o cnpj int do fornecedor)
INSERT INTO FORNECIMENTO(id_fornecedor, id_produto, quantidade, valor)
VALUES
(1, 1, 50, "1000"),
(2, 3, 5, "10000");

-- 8. VENDA (amarrando chaves estrangeiras de tesouraria, funcionario e cliente)
INSERT INTO VENDA(id_funcionario, id_cliente, valor, quantidade, forma, status)
VALUES
(2, 1, "62", 6,'PIX', true),
(3, 1, "2499", 1,'CREDITO', true);

-- 9. ITEM_PEDIDO
INSERT INTO ITEM_PEDIDO(id_venda, id_produto, quantidade, valor_unitario, valor_total)
VALUES
(1, 1, 2, 25, 50),
(1, 2, 4, 3, 12),
(2, 3, 1, 2499, 2499);
