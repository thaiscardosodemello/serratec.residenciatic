/* Criação da tabela de autores.
   - id_autor: Identificador único para cada autor. Usamos o tipo serial para que o valor seja automaticamente incrementado.
   - nome: Nome do autor, que não pode ser nulo. O tipo varchar(255) é usado para permitir uma quantidade razoável de caracteres. */
create table autor (id_autor serial primary key, nome varchar(255) not null);

/* Criação da tabela de livros.
   - id_livro: Identificador único para cada livro, também auto-incrementado.
   - titulo: Título do livro, que não pode ser nulo e pode ter até 255 caracteres.
   - id_autor: Referência ao autor do livro. Este campo é uma chave estrangeira que aponta para a coluna id_autor da tabela autor.
   - O comportamento 'on delete cascade' garante que se um autor for deletado, todos os livros desse autor também serão removidos automaticamente. */
create table livro (id_livro serial primary key, titulo varchar(255) not null, id_autor int not null, foreign key (id_autor) references autor(id_autor) on delete cascade);

/* Criação da tabela de usuários.
   - id_usuario: Identificador único para cada usuário, com auto-incremento.
   - nome: Nome do usuário, não pode ser nulo e pode ter até 255 caracteres.
   - email: Endereço de e-mail do usuário, não pode ser nulo e deve ser único para cada usuário. O tipo varchar(50) é utilizado para armazenar o e-mail. */
create table usuario (id_usuario serial primary key, nome varchar(255) not null, email varchar(50) not null unique);

/* Criação da tabela de empréstimos.
   - id_emprestimo: Identificador único para cada empréstimo, com auto-incremento.
   - data_emprestimo: Data em que o livro foi emprestado, que não pode ser nula.
   - data_devolucao: Data em que o livro foi devolvido, pode ser nula se o livro ainda não foi devolvido.
   - valor_emprestimo: Valor cobrado pelo empréstimo, com até 10 dígitos no total e 2 casas decimais.
   - id_usuario: Referência ao usuário que pegou o livro emprestado. Este campo é uma chave estrangeira que aponta para a coluna id_usuario da tabela usuario.
   - id_livro: Referência ao livro emprestado. Este campo é uma chave estrangeira que aponta para a coluna id_livro da tabela livro. */
create table emprestimo (id_emprestimo serial primary key, data_emprestimo date not null, data_devolucao date, valor_emprestimo numeric(10, 2), id_usuario int not null, id_livro int not null, foreign key (id_usuario) references usuario(id_usuario), foreign key (id_livro) references livro(id_livro));

/* Populando a tabela de autores com alguns exemplos.
   - Adicionamos diversos autores com nomes diferentes, que servirão como referências para a tabela de livros. */
insert into autor (nome) values ('J.K. Rowling');
insert into autor (nome) values ('J.R.R. Tolkien');
insert into autor (nome) values ('George R.R. Martin');
insert into autor (nome) values ('Agatha Christie');
insert into autor (nome) values ('Isaac Asimov');
insert into autor (nome) values ('Stephen King');
insert into autor (nome) values ('Jane Austen');
insert into autor (nome) values ('Mark Twain');
insert into autor (nome) values ('H.G. Wells');
insert into autor (nome) values ('Arthur Conan Doyle');

/* Populando a tabela de livros com exemplos.
   - Associamos cada livro a um autor através do id_autor. 
   - Adicionamos títulos de livros conhecidos e os associamos aos respectivos autores. */
insert into livro (titulo, id_autor) values ('Harry Potter e a Pedra Filosofal', 1);
insert into livro (titulo, id_autor) values ('Harry Potter e a Câmara Secreta', 1);
insert into livro (titulo, id_autor) values ('Harry Potter e o Prisioneiro de Azkaban', 1);
insert into livro (titulo, id_autor) values ('O Senhor dos Anéis: A Sociedade do Anel', 2);
insert into livro (titulo, id_autor) values ('O Senhor dos Anéis: As Duas Torres', 2);
insert into livro (titulo, id_autor) values ('O Senhor dos Anéis: O Retorno do Rei', 2);
insert into livro (titulo, id_autor) values ('A Guerra dos Tronos', 3);
insert into livro (titulo, id_autor) values ('A Fúria dos Reis', 3);
insert into livro (titulo, id_autor) values ('A Tormenta de Espadas', 3);
insert into livro (titulo, id_autor) values ('Assassinato no Expresso do Oriente', 4);
insert into livro (titulo, id_autor) values ('O Caso dos Dez Negrinhos', 4);
insert into livro (titulo, id_autor) values ('Eu, Robô', 5);
insert into livro (titulo, id_autor) values ('Fundação', 5);
insert into livro (titulo, id_autor) values ('O Iluminado', 6);
insert into livro (titulo, id_autor) values ('IT: A Coisa', 6);

/* Populando a tabela de usuários com exemplos.
   - Adicionamos alguns usuários fictícios, cada um com um nome e um e-mail único. */
insert into usuario (nome, email) values 
('Isabella Assumpção', 'isabella.assumpcao@gmail.com'),
('João Linhares', 'joao.linhares@gmail.com'),
('Rafael Freire', 'rafael.freire@gmail.com'),
('Thais Cardoso', 'thais.cardoso@gmail.com'),
('Ryan de Souza', 'ryan.souza@gmail.com')

/* Populando a tabela de empréstimos com exemplos.
   - Adicionamos registros de empréstimos com datas, valores e referências a usuários e livros. */
insert into emprestimo (data_emprestimo, data_devolucao, valor_emprestimo, id_usuario, id_livro) values 
('2024-01-15', '2024-02-15', 12.50, 1, 1),
('2024-01-20', '2024-02-20', 15.00, 2, 2),
('2024-02-05', '2024-03-05', 10.00, 3, 3),
('2024-02-10', '2024-03-10', 20.00, 4, 4),
('2024-03-01', null, 14.00, 1, 6),        
('2024-03-05', '2024-04-05', 22.00, 2, 7),
('2024-03-10', null, 13.00, 3, 8),        
('2024-03-15', '2024-04-15', 17.00, 4, 9);



/* --------------- CONSULTAS SQL --------------- */

/*1) Retornar os livros emprestados.*/
select distinct l.id_livro, l.titulo from livro l join emprestimo e on l.id_livro = e.id_livro;

/*2) Retornar os livros que não foram emprestados.*/
select l.id_livro, l.titulo from livro l left join emprestimo e on l.id_livro = e.id_livro where e.id_livro is null;

/*3) Contar quantos livros foram emprestados.*/
select count(distinct id_livro) as total_livros_emprestados from emprestimo;

/*4) A quantidade de livros que cada autor tem.*/
select a.id_autor, a.nome, count(l.id_livro) as quantidade_livros from autor a left join livro l on a.id_autor = l.id_autor group by a.id_autor, a.nome;

/*5) Exibir os livros do mais caro ao mais barato em ordem.*/
select l.id_livro, l.titulo, max(e.valor_emprestimo) as preco from livro l join emprestimo e on l.id_livro = e.id_livro group by l.id_livro, l.titulo order by preco desc;

/*6) Apagar um autor consequentemente seu livro deverá ser automaticamente apagado.*/
delete from autor where id_autor = 5;

/*se der um gelo no coração de vcs que nem deu no meu usa isso aqui*/
select id_livro, titulo from livro;

/*7) Mostra o total arrecado em empréstimo de um determinado livro*/
select l.id_livro, l.titulo, SUM(e.valor_emprestimo) as total_arrecadado from livro l join emprestimo e on l.id_livro = e.id_livro where l.id_livro = 9 group by l.id_livro, l.titulo;
