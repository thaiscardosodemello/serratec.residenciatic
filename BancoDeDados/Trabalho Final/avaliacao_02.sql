/* Criação da tabela de clientes.
   - cpf: Identificador único para cada cliente, usando o tipo varchar(11) para armazenar o CPF.
   - nome: Nome do cliente, que pode ter até 60 caracteres.
   - telefone: Número de telefone do cliente, com até 11 caracteres.
   - email: Endereço de e-mail do cliente, com até 50 caracteres. */
create table cliente (cpf varchar(11) primary key, nome varchar (60), telefone varchar (11), email varchar (50));

/* Alteração da tabela de clientes.
   - Remoção da coluna email existente.
   - Adição de uma nova coluna email com o tipo varchar(50). */
alter table cliente drop column email;
alter table cliente add column email varchar(50);

/* Criação da tabela de produtos.
   - codigo_produto: Identificador único para cada produto, gerado automaticamente com o tipo serial.
   - descricao: Descrição do produto, que não pode ser nula e pode ter até 40 caracteres.
   - preco: Preço do produto, um número com restrição para que seja maior que 0.
   - quantidade_estoque: Quantidade disponível no estoque, com valor padrão de 0.
   - obs: Observações adicionais, com um tipo de dado text que permite texto de tamanho variável. */
create table produto (codigo_produto serial primary key, descricao varchar(40) not null, preco numeric check (preco > 0), quantidade_estoque int default 0, obs text);

/* Inserção de dados na tabela de produtos.
   - Adiciona dois produtos: Geladeira e Fogão, com respectivos preços e quantidades em estoque. */
insert into produto (descricao, preco, quantidade_estoque) values ('Geladeira', 1500, 10), ('Fogão', 800, 5);

/* Consulta de todos os dados da tabela de produtos. */
select * from produto p

/* Inserção de dados adicionais na tabela de produtos.
   - Adiciona dois novos produtos: Forno Elétrico e Cooktop, com respectivas descrições, preços e quantidades em estoque. */
insert into produto (descricao, preco, quantidade_estoque, obs) values ('Forno Elétrico', 700, 2, 'Forno da marca Philco'), ('Cooktop', 450, 5, 'Cooktop modelo ssnsns2');

/* Consulta de todos os dados atualizados da tabela de produtos. */
select * from produto

/* Criação da tabela de departamentos.
   - codigo_departamento: Identificador único para cada departamento, gerado automaticamente com o tipo serial.
   - nome: Nome do departamento, que pode ter até 30 caracteres. */
create table departamento (codigo_departamento serial primary key, nome varchar(30));

/* Criação da tabela de funcionários.
   - codigo_funcionario: Identificador único para cada funcionário, gerado automaticamente com o tipo serial.
   - nome: Nome do funcionário, que não pode ser nulo e pode ter até 50 caracteres.
   - email: Endereço de e-mail do funcionário, que deve ser único e não pode ser nulo.
   - codigo_departamento: Referência ao departamento ao qual o funcionário pertence. É uma chave estrangeira que referencia a coluna codigo_departamento da tabela departamento. */
create table funcionario(codigo_funcionario serial primary key, nome varchar(50) not null, email varchar(50) not null unique, codigo_departamento int, foreign key(codigo_departamento) references departamento(codigo_departamento));

/* Inserção de dados na tabela de departamentos.
   - Adiciona três departamentos: DP, Compras e Financeiro. */
insert into departamento (nome) values('DP'), ('Compras'), ('Financeiro');

/* Inserção de dados na tabela de funcionários.
   - Adiciona um funcionário chamado Roni, com o e-mail r@gmail.com e associado ao departamento com codigo_departamento igual a 1. */
insert into funcionario(nome, email, codigo_departamento) values('Roni','r@gmail.com',1);

/* Consulta de todos os dados da tabela de funcionários. */
select * from funcionario


