create table engenheiro (
nome varchar(50) not null,
atuacao varchar(50) not null,
cidade varchar(50) not null,
uf char(2) not null,
sexo char(2) not null,
eng_id int not null,
primary key (eng_id));

create table projeto (
nome varchar(50) not null,
cidade varchar(50) not null,
uf char(2) not null,
projeto_id int not null,
eng_id int not null,
primary key (projeto_id),
constraint fk_projeto_engenheiro
foreign key (eng_id)
references engenheiro(eng_id));