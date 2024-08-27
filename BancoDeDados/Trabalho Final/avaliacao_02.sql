CREATE TABLE funcionario (
    cod_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf INT NOT NULL
);

CREATE TABLE categoria (
    cod_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao TEXT
);

CREATE TABLE produto (
    cod_produto SERIAL PRIMARY KEY UNIQUE,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT,
    qtd_estoque INT,
    data_fabricacao DATE NOT NULL,
    valor_un DECIMAL(10, 2),
    cod_categoria INT,
    FOREIGN KEY (cod_categoria) REFERENCES categoria(cod_categoria)
);

CREATE TABLE cliente (
    cod_cliente SERIAL PRIMARY KEY,
    nome_completo VARCHAR(200),
    nome_usuario VARCHAR(50),
    email VARCHAR(50),
    cpf CHAR(11),
    data_nascimento DATE,
    endereco TEXT
);

CREATE TABLE pedido (
    cod_pedido SERIAL PRIMARY KEY,
    data_pedido DATE,
    cod_cliente INT,
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente),
    cod_funcionario INT,
    FOREIGN KEY (cod_funcionario) REFERENCES funcionario(cod_funcionario)
);

CREATE TABLE carrinho (
    quantidade INT,
    cod_produto INT,
    FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
    cod_pedido INT,
    FOREIGN KEY (cod_pedido) REFERENCES pedido(cod_pedido),
);

drop table carrinho cascade;

CREATE TABLE carrinho (
    quantidade INT,
    cod_produto INT,
    FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
    cod_pedido INT,
    FOREIGN KEY (cod_pedido) REFERENCES pedido(cod_pedido),
    PRIMARY KEY (cod_pedido)
);

alter table funcionario alter column cpf type char(11);

INSERT INTO funcionario (nome, cpf) VALUES 
('João Silva', 12345678901),
('Maria Oliveira', 23456789012),
('Carlos Sousa', 34567890123),
('Ana Lima', 45678901234),
('Beatriz Santos', 56789012345);

INSERT INTO categoria (nome, descricao) VALUES 
('Eletrônicos', 'Aparelhos eletrônicos diversos'),
('Livros', 'Livros de diferentes gêneros'),
('Vestuário', 'Roupas e acessórios'),
('Beleza', 'Produtos de beleza e cuidados pessoais'),
('Móveis', 'Móveis para casa e escritório');

INSERT INTO produto (nome, descricao, qtd_estoque, data_fabricacao, valor_un, cod_categoria) VALUES 
('Smartphone', 'Celular de última geração', 50, '2024-01-15', 2500.00, 1),
('Notebook', 'Notebook para trabalho e estudo', 30, '2024-03-01', 3500.00, 1),
('Camisa', 'Camisa social masculina', 100, '2024-02-20', 120.00, 3),
('Creme Facial', 'Creme anti-idade', 200, '2024-05-10', 80.00, 4),
('Estante', 'Estante de madeira', 15, '2024-06-25', 500.00, 5);

INSERT INTO cliente (nome_completo, nome_usuario, email, cpf, data_nascimento, endereco) VALUES 
('Lucas Pereira', 'lucas_p', 'lucas@gmail.com', '12312312312', '1990-07-14', 'Rua A, 123'),
('Mariana Silva', 'mari_s', 'mariana@gmail.com', '23423423423', '1985-11-23', 'Rua B, 456'),
('Rafael Costa', 'rafa_c', 'rafael@gmail.com', '34534534534', '1992-03-05', 'Rua C, 789'),
('Clara Ferreira', 'clara_f', 'clara@gmail.com', '45645645645', '1988-09-17', 'Rua D, 101'),
('Pedro Souza', 'pedro_s', 'pedro@gmail.com', '56756756756', '1995-01-22', 'Rua E, 202');

INSERT INTO pedido (data_pedido, cod_cliente, cod_funcionario) VALUES 
('2024-08-01', 1, 1),
('2024-08-02', 2, 2),
('2024-08-03', 3, 3),
('2024-08-04', 4, 4),
('2024-08-05', 5, 5);

drop table carrinho cascade;

CREATE TABLE carrinho (
    quantidade INT,
    cod_produto INT,
    FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
    cod_pedido INT,
    FOREIGN KEY (cod_pedido) REFERENCES pedido(cod_pedido)
);

INSERT INTO carrinho (quantidade, cod_produto, cod_pedido) VALUES 
(2, 1, 1),
(1, 2, 1),
(3, 3, 2),
(1, 4, 3),
(4, 5, 4);

INSERT INTO pedido (data_pedido, cod_cliente, cod_funcionario) values
('2024-08-24', 5, 4);

INSERT INTO carrinho (quantidade, cod_produto, cod_pedido) VALUES 
(1, 1, 6),
(1, 2, 6);

UPDATE produto
SET qtd_estoque = 60
WHERE cod_produto = 1;

select * from pedido

create or replace view Nota_Fiscal as
select 
	p.cod_pedido, 
	c.nome_completo as nome_cliente,
	f.nome as nome_funcionario,
	sum(carrinho.quantidade) as qtd_produtos
from
	pedido p
join
	cliente c on p.cod_cliente = c.cod_cliente
join
	funcionario f on p.cod_funcionario = f.cod_funcionario
join
	carrinho carrinho on p.cod_pedido = carrinho.cod_pedido 
group by
	p.cod_pedido, c.nome_completo, f.nome;

drop table carrinho cascade;

CREATE TABLE carrinho (
    cod_produto INT,
    cod_pedido INT,
    quantidade INT,
    PRIMARY KEY (cod_produto, cod_pedido),
    FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
    FOREIGN KEY (cod_pedido) REFERENCES pedido(cod_pedido)
);

INSERT INTO carrinho (quantidade, cod_produto, cod_pedido) VALUES 
(2, 1, 1),
(1, 2, 1),
(3, 3, 2),
(1, 4, 3),
(4, 5, 4);

CREATE OR REPLACE VIEW Nota_Fiscal AS
SELECT 
    p.cod_pedido, 
    c.nome_completo AS nome_cliente,
    f.nome AS nome_funcionario,
    SUM(carrinho.quantidade) AS qtd_produtos,
    pr.valor_un as valor_un,
    SUM(carrinho.quantidade * pr.valor_un) AS valor_total
FROM
    pedido p
JOIN
    cliente c ON p.cod_cliente = c.cod_cliente
JOIN
    funcionario f ON p.cod_funcionario = f.cod_funcionario
JOIN
    carrinho carrinho ON p.cod_pedido = carrinho.cod_pedido
JOIN
    produto pr ON carrinho.cod_produto = pr.cod_produto
GROUP BY
    p.cod_pedido, c.nome_completo, f.nome, pr.valor_un;
