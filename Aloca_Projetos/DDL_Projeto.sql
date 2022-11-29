create table Projeto ( 
codigo int not null, 
descricao varchar(45) not null, 
primary key (codigo)
);

create table Pessoas ( 
CPF int not null, 
nome varchar(45) not null, 
sexo char(1) not null,
idade int not null, 
gerente_CPF int, 
primary key (CPF)
);

create table Aloca (
projeto_codigo int not null, 
pessoas_CPF int not null, 
constraint fk_projeto_codigo foreign key (projeto_codigo) references Projeto(codigo), 
constraint fk_pessoas_CPF foreign key (pessoas_CPF) references Pessoas(CPF)
);