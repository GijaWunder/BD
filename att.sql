create database biblioteca;
use biblioteca;

create table autores(idAutor int primary key,
nomeAutor varchar(100) not null,
nacionalidade varchar(50)); 

create table categorias(idCategoria int primary key,
descricao varchar(50) not null);

create table livros(idLivro int, 
idCategoria int,
idAutor int,
titulo varchar(100) not null,
anoPublicacao year, 
primary key (idLivro, idCategoria, idAutor),
foreign key (idCategoria) references categorias(idCategoria) on delete cascade on update cascade,
foreign key (idAutor) references autores(idAutor) on delete cascade on update cascade);

alter table livros add preco decimal(5,2);
alter table categorias add quantidade int;

insert into autores values(1,"Machado De Assis","Brasil");
insert into autores values(2,"Monteiro Lobato","Brasil");
insert into autores values(3,"José De Alencar","Brasil");

insert into categorias values(1,"Romance", 10);
insert into categorias values(2,"Ficção Cientifica", 40);
insert into categorias values(3,"Fantasia", 100);

insert into livros values(1,1,3, 'O Guarani', null, 10.00);
insert into livros values(1,2,3, 'Cortiço', null, 10.00);
insert into livros values(2,2,1, 'O pequeno principe', null, 20.00);
insert into livros values(3,1,2, 'Memorias postumas de bras', null, 10.00);



describe table livros;
