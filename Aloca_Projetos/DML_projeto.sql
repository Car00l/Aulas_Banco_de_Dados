insert into Projeto ( codigo, descricao)
values ( 1122, 'BI'),
(3344, 'GTI'),
(5566, 'SIG');

insert into Pessoas ( CPF, nome, sexo, idade, gerente_CPF)
values (123, 'Rubi', 'F', 35, null),
(147, 'Maria', 'F', 42, 123),
(258, 'Edu', 'M', 45, 147),
(456, 'Igor', 'M', 40, 123),
(789, 'Luiz', 'M', 38, 456);

insert into Aloca (projeto_codigo, pessoas_CPF)
values (1122, 123),
(3344, 123),
(5566,123),
(3344, 147),
(1122, 456),
(5566, 456),
(3344, 789);

