-- Projeto Kitanda Digital - Estrutura básica e dados de teste

-- Cria o banco de dados
DROP DATABASE IF EXISTS kitanda_digital;
CREATE DATABASE kitanda_digital;
USE kitanda_digital;

-- Cria a tabela de vendedores
CREATE TABLE vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    data_cadastro DATE NOT NULL
);

-- Cria a tabela de produtos
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    id_vendedor INT NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

-- Cria a tabela de vendas
CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Cadastra 20 vendedores
INSERT INTO vendedores (nome, email, cidade, estado, data_cadastro) VALUES
('Jose Silva','jose.silva@email.com','São Paulo','SP','2023-01-10'),
('Maria Oliveira','maria.oliveira@email.com','Rio de Janeiro','RJ','2023-01-12'),
('Pedro Santos','pedro.santos@email.com','Belo Horizonte','MG','2023-01-15'),
('Ana Costa','ana.costa@email.com','Curitiba','PR','2023-01-18'),
('Luis Rocha','luis.rocha@email.com','Porto Alegre','RS','2023-01-20'),
('Carla Mendes','carla.mendes@email.com','Salvador','BA','2023-01-22'),
('Bruno Lima','bruno.lima@email.com','Fortaleza','CE','2023-01-25'),
('Paula Araujo','paula.araujo@email.com','Recife','PE','2023-01-28'),
('Ricardo Moreira','ricardo.moreira@email.com','Manaus','AM','2023-02-01'),
('Fernanda Souza','fernanda.souza@email.com','Florianópolis','SC','2023-02-04'),
('Marcos Almeida','marcos.almeida@email.com','Campinas','SP','2023-02-07'),
('Juliana Ribeiro','juliana.ribeiro@email.com','Niterói','RJ','2023-02-10'),
('Tiago Pereira','tiago.pereira@email.com','Uberlândia','MG','2023-02-13'),
('Renata Martins','renata.martins@email.com','Londrina','PR','2023-02-16'),
('Felipe Gomes','felipe.gomes@email.com','Caxias do Sul','RS','2023-02-19'),
('Camila Farias','camila.farias@email.com','Feira de Santana','BA','2023-02-22'),
('Anderson Melo','anderson.melo@email.com','Juazeiro do Norte','CE','2023-02-25'),
('Beatriz Cunha','beatriz.cunha@email.com','Olinda','PE','2023-02-28'),
('Eduardo Freitas','eduardo.freitas@email.com','Belém','PA','2023-03-03'),
('Larissa Dias','larissa.dias@email.com','Joinville','SC','2023-03-06');

-- Cadastra 50 produtos
INSERT INTO produtos (nome_produto, preco, categoria, id_vendedor) VALUES
('Maçã Fuji',4.50,'Frutas',1),
('Banana Prata',3.20,'Frutas',2),
('Laranja Bahia',4.00,'Frutas',3),
('Uva Thompson',7.80,'Frutas',4),
('Morango Doce',6.50,'Frutas',5),
('Abacaxi Pérola',5.90,'Frutas',6),
('Kiwi Verde',8.20,'Frutas',7),
('Melão Amarelo',9.50,'Frutas',8),
('Manga Palmer',6.80,'Frutas',9),
('Pera Williams',7.10,'Frutas',10),
('Tomate Italiano',4.30,'Legumes',11),
('Cenoura Orgânica',3.80,'Legumes',12),
('Batata Inglesa',2.90,'Legumes',13),
('Cebola Roxa',3.40,'Legumes',14),
('Pimentão Verde',4.10,'Legumes',15),
('Abobrinha Verde',3.60,'Legumes',16),
('Berinjela Lisa',4.70,'Legumes',17),
('Alface Crespa',2.50,'Legumes',18),
('Couve Manteiga',2.80,'Legumes',19),
('Brócolis Ninja',5.20,'Legumes',20),
('Leite Integral',4.20,'Laticinios',1),
('Queijo Minas',18.50,'Laticinios',2),
('Iogurte Natural',3.90,'Laticinios',3),
('Manteiga Artesanal',15.00,'Laticinios',4),
('Requeijão Cremoso',6.70,'Laticinios',5),
('Queijo Prato',19.80,'Laticinios',6),
('Leite Desnatado',4.10,'Laticinios',7),
('Creme de Leite',5.30,'Laticinios',8),
('Queijo Coalho',17.50,'Laticinios',9),
('Iogurte Grego',5.80,'Laticinios',10),
('Suco de Laranja',6.20,'Bebidas',11),
('Refrigerante Cola',5.00,'Bebidas',12),
('Água Mineral',2.50,'Bebidas',13),
('Chá Gelado',4.90,'Bebidas',14),
('Café Torrado',12.40,'Bebidas',15),
('Energético Light',9.90,'Bebidas',16),
('Água de Coco',6.70,'Bebidas',17),
('Suco de Uva',7.30,'Bebidas',18),
('Refrigerante Laranja',4.80,'Bebidas',19),
('Chá Mate',3.90,'Bebidas',20),
('Arroz Integral',8.40,'Graos',1),
('Feijão Carioca',7.60,'Graos',2),
('Quinoa Branca',14.90,'Graos',3),
('Farinha de Trigo',5.70,'Graos',4),
('Aveia em Flocos',4.60,'Graos',5),
('Granola Crocante',11.20,'Graos',6),
('Milho para Pipoca',3.70,'Graos',7),
('Cuscuz Nordestino',4.20,'Graos',8),
('Lentilha Verde',9.10,'Graos',9),
('Grão-de-Bico',12.30,'Graos',10);

-- Cadastra 150 vendas (3 vendas para cada produto)
INSERT INTO vendas (id_produto, quantidade, data_venda) VALUES
(1,5,'2024-01-05'),(1,4,'2024-02-05'),(1,6,'2024-03-05'),
(2,6,'2024-01-06'),(2,5,'2024-02-06'),(2,7,'2024-03-06'),
(3,4,'2024-01-07'),(3,3,'2024-02-07'),(3,5,'2024-03-07'),
(4,7,'2024-01-08'),(4,6,'2024-02-08'),(4,8,'2024-03-08'),
(5,5,'2024-01-09'),(5,5,'2024-02-09'),(5,6,'2024-03-09'),
(6,4,'2024-01-10'),(6,4,'2024-02-10'),(6,5,'2024-03-10'),
(7,3,'2024-01-11'),(7,3,'2024-02-11'),(7,4,'2024-03-11'),
(8,6,'2024-01-12'),(8,5,'2024-02-12'),(8,7,'2024-03-12'),
(9,5,'2024-01-13'),(9,4,'2024-02-13'),(9,6,'2024-03-13'),
(10,4,'2024-01-14'),(10,4,'2024-02-14'),(10,5,'2024-03-14'),
(11,5,'2024-02-04'),(11,6,'2024-03-04'),(11,4,'2024-04-04'),
(12,6,'2024-02-05'),(12,5,'2024-03-05'),(12,7,'2024-04-05'),
(13,7,'2024-02-06'),(13,6,'2024-03-06'),(13,5,'2024-04-06'),
(14,5,'2024-02-07'),(14,4,'2024-03-07'),(14,6,'2024-04-07'),
(15,6,'2024-02-08'),(15,5,'2024-03-08'),(15,7,'2024-04-08'),
(16,4,'2024-02-09'),(16,4,'2024-03-09'),(16,5,'2024-04-09'),
(17,5,'2024-02-10'),(17,5,'2024-03-10'),(17,6,'2024-04-10'),
(18,8,'2024-02-11'),(18,7,'2024-03-11'),(18,6,'2024-04-11'),
(19,6,'2024-02-12'),(19,5,'2024-03-12'),(19,7,'2024-04-12'),
(20,4,'2024-02-13'),(20,4,'2024-03-13'),(20,5,'2024-04-13'),
(21,5,'2024-03-03'),(21,6,'2024-04-03'),(21,5,'2024-05-03'),
(22,4,'2024-03-04'),(22,5,'2024-04-04'),(22,6,'2024-05-04'),
(23,7,'2024-03-05'),(23,6,'2024-04-05'),(23,8,'2024-05-05'),
(24,5,'2024-03-06'),(24,5,'2024-04-06'),(24,6,'2024-05-06'),
(25,6,'2024-03-07'),(25,5,'2024-04-07'),(25,7,'2024-05-07'),
(26,4,'2024-03-08'),(26,4,'2024-04-08'),(26,5,'2024-05-08'),
(27,5,'2024-03-09'),(27,5,'2024-04-09'),(27,6,'2024-05-09'),
(28,7,'2024-03-10'),(28,6,'2024-04-10'),(28,8,'2024-05-10'),
(29,6,'2024-03-11'),(29,5,'2024-04-11'),(29,7,'2024-05-11'),
(30,4,'2024-03-12'),(30,4,'2024-04-12'),(30,5,'2024-05-12'),
(31,5,'2024-04-02'),(31,6,'2024-05-02'),(31,5,'2024-06-02'),
(32,7,'2024-04-03'),(32,6,'2024-05-03'),(32,8,'2024-06-03'),
(33,6,'2024-04-04'),(33,5,'2024-05-04'),(33,7,'2024-06-04'),
(34,5,'2024-04-05'),(34,5,'2024-05-05'),(34,6,'2024-06-05'),
(35,4,'2024-04-06'),(35,4,'2024-05-06'),(35,5,'2024-06-06'),
(36,6,'2024-04-07'),(36,5,'2024-05-07'),(36,7,'2024-06-07'),
(37,5,'2024-04-08'),(37,5,'2024-05-08'),(37,6,'2024-06-08'),
(38,7,'2024-04-09'),(38,6,'2024-05-09'),(38,8,'2024-06-09'),
(39,6,'2024-04-10'),(39,5,'2024-05-10'),(39,7,'2024-06-10'),
(40,4,'2024-04-11'),(40,4,'2024-05-11'),(40,5,'2024-06-11'),
(41,6,'2024-05-01'),(41,5,'2024-06-01'),(41,7,'2024-07-01'),
(42,5,'2024-05-02'),(42,5,'2024-06-02'),(42,6,'2024-07-02'),
(43,4,'2024-05-03'),(43,4,'2024-06-03'),(43,5,'2024-07-03'),
(44,6,'2024-05-04'),(44,5,'2024-06-04'),(44,7,'2024-07-04'),
(45,5,'2024-05-05'),(45,5,'2024-06-05'),(45,6,'2024-07-05'),
(46,7,'2024-05-06'),(46,6,'2024-06-06'),(46,8,'2024-07-06'),
(47,4,'2024-05-07'),(47,4,'2024-06-07'),(47,5,'2024-07-07'),
(48,6,'2024-05-08'),(48,5,'2024-06-08'),(48,7,'2024-07-08'),
(49,5,'2024-05-09'),(49,5,'2024-06-09'),(49,6,'2024-07-09'),
(50,7,'2024-05-10'),(50,6,'2024-06-10'),(50,8,'2024-07-10');

-- View com detalhes dos produtos
DROP VIEW IF EXISTS vw_produtos_detalhados;
CREATE VIEW vw_produtos_detalhados AS
SELECT
    p.nome_produto,
    p.preco,
    v.nome AS nome_vendedor,
    v.cidade,
    v.estado,
    p.categoria
FROM produtos p
JOIN vendedores v ON v.id_vendedor = p.id_vendedor;

-- View com total de vendas por vendedor
DROP VIEW IF EXISTS vw_total_vendas_por_vendedor;
CREATE VIEW vw_total_vendas_por_vendedor AS
SELECT
    v.nome AS nome_vendedor,
    SUM(p.preco * vd.quantidade) AS total_vendas
FROM vendedores v
JOIN produtos p ON p.id_vendedor = v.id_vendedor
JOIN vendas vd ON vd.id_produto = p.id_produto
GROUP BY v.id_vendedor, v.nome;

-- View com vendas mensais por vendedor
DROP VIEW IF EXISTS vw_vendas_mensais;
CREATE VIEW vw_vendas_mensais AS
SELECT
    v.nome AS nome_vendedor,
    YEAR(vd.data_venda) AS ano,
    MONTH(vd.data_venda) AS mes,
    SUM(p.preco * vd.quantidade) AS total_vendas
FROM vendedores v
JOIN produtos p ON p.id_vendedor = v.id_vendedor
JOIN vendas vd ON vd.id_produto = p.id_produto
GROUP BY v.id_vendedor, v.nome, YEAR(vd.data_venda), MONTH(vd.data_venda);

-- View com resumo por categoria
DROP VIEW IF EXISTS vw_produtos_por_categoria;
CREATE VIEW vw_produtos_por_categoria AS
SELECT
    categoria,
    COUNT(*) AS total_produtos,
    AVG(preco) AS preco_medio
FROM produtos
GROUP BY categoria;

-- Procedure para cadastrar vendedor
DROP PROCEDURE IF EXISTS sp_cadastrar_vendedor;
DELIMITER $$
CREATE PROCEDURE sp_cadastrar_vendedor (
    IN p_nome VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_cidade VARCHAR(100),
    IN p_estado CHAR(2)
)
BEGIN
    INSERT INTO vendedores (nome, email, cidade, estado, data_cadastro)
    VALUES (p_nome, p_email, p_cidade, p_estado, CURDATE());
END $$
DELIMITER ;

-- Procedure para registrar venda
DROP PROCEDURE IF EXISTS sp_registrar_venda;
DELIMITER $$
CREATE PROCEDURE sp_registrar_venda (
    IN p_id_produto INT,
    IN p_quantidade INT
)
BEGIN
    DECLARE v_existente INT DEFAULT 0;
    SELECT COUNT(*) INTO v_existente FROM produtos WHERE id_produto = p_id_produto;
    IF v_existente = 0 THEN
        SELECT 'Produto não encontrado' AS mensagem;
    ELSE
        INSERT INTO vendas (id_produto, quantidade, data_venda)
        VALUES (p_id_produto, p_quantidade, CURDATE());
        SELECT 'Venda registrada com sucesso' AS mensagem;
    END IF;
END $$
DELIMITER ;

-- Procedure para atualizar preços por categoria
DROP PROCEDURE IF EXISTS sp_atualizar_preco_categoria;
DELIMITER $$
CREATE PROCEDURE sp_atualizar_preco_categoria (
    IN p_categoria VARCHAR(50),
    IN p_percentual DECIMAL(5,2)
)
BEGIN
    UPDATE produtos
    SET preco = preco + (preco * (p_percentual / 100))
    WHERE categoria = p_categoria;
END $$
DELIMITER ;

-- Relatório 1: Ranking dos produtos mais vendidos
SELECT
    p.nome_produto,
    SUM(vd.quantidade) AS quantidade_total
FROM produtos p
JOIN vendas vd ON vd.id_produto = p.id_produto
GROUP BY p.id_produto, p.nome_produto
ORDER BY quantidade_total DESC;

-- Relatório 2: Vendedor com maior valor vendido
SELECT
    v.nome AS nome_vendedor,
    SUM(p.preco * vd.quantidade) AS total_vendas
FROM vendedores v
JOIN produtos p ON p.id_vendedor = v.id_vendedor
JOIN vendas vd ON vd.id_produto = p.id_produto
GROUP BY v.id_vendedor, v.nome
ORDER BY total_vendas DESC
LIMIT 1;

-- Relatório 3: Total por categoria, vendedor e percentual
SELECT
    v.nome AS nome_vendedor,
    p.categoria,
    SUM(p.preco * vd.quantidade) AS total_vendas,
    ROUND((SUM(p.preco * vd.quantidade) / cat.total_categoria) * 100, 2) AS percentual_participacao
FROM vendedores v
JOIN produtos p ON p.id_vendedor = v.id_vendedor
JOIN vendas vd ON vd.id_produto = p.id_produto
JOIN (
    SELECT
        pr.categoria,
        SUM(pr.preco * ve.quantidade) AS total_categoria
    FROM produtos pr
    JOIN vendas ve ON ve.id_produto = pr.id_produto
    GROUP BY pr.categoria
) cat ON cat.categoria = p.categoria
GROUP BY v.id_vendedor, v.nome, p.categoria, cat.total_categoria
ORDER BY p.categoria, total_vendas DESC;

-- Relatório 4: Variação percentual de vendas mês a mês por vendedor
SELECT
    atual.nome_vendedor,
    atual.ano,
    atual.mes,
    atual.total_vendas,
    CASE
        WHEN anterior.total_vendas IS NULL OR anterior.total_vendas = 0 THEN NULL
        ELSE ROUND(((atual.total_vendas - anterior.total_vendas) / anterior.total_vendas) * 100, 2)
    END AS variacao_percentual
FROM vw_vendas_mensais atual
LEFT JOIN vw_vendas_mensais anterior
    ON anterior.nome_vendedor = atual.nome_vendedor
   AND STR_TO_DATE(CONCAT(anterior.ano,'-',LPAD(anterior.mes,2,'0'),'-01'), '%Y-%m-%d')
    = DATE_SUB(STR_TO_DATE(CONCAT(atual.ano,'-',LPAD(atual.mes,2,'0'),'-01'), '%Y-%m-%d'), INTERVAL 1 MONTH)
ORDER BY atual.nome_vendedor, atual.ano, atual.mes;

-- Resumo: Estrutura, dados, views, procedures e consultas essenciais do projeto Kitanda Digital.