insert into empregado (Matricula, Primeiro_Nome, Familia_Nome, Salario, Departamento_Codigo)
values (855, 'Edu', 'Santos', 600.00, 30);

-- Listar nome eo salario dos empregados do departamento 40 que possuam salario maior que todos os empregados do departamento 30.

-- Ultilizando o ALL (maior que todos)
select Primeiro_Nome, Salario 
from Empregado
where Departamento_Codigo = 40 and 
salario > all (
select Salario 
from Empregado 
where Departamento_Codigo = 30
);

-- Ultilizando o MAX (o maiorque todos)
select Primeiro_Nome, Salario
from Empregado 
where Departamento_Codigo = 40 and
Salario > (
select max(Salario)
from Empregado 
where Departamento_Codigo = 30
);

-- Listar o nome e o salario dos empregados do departamento 40 que possuem salario maior que pelo menos um dos empregados do departamento 30.

-- Ultilizando o MIN (pelo menos maior que algum)
select Primeiro_Nome, Salario
from Empregado 
where Departamento_Codigo = 40 and
Salario > (
select min(Salario)
from Empregado 
where Departamento_Codigo = 30
);

-- Ultilizando o ANY (pelo menos um)
select Primeiro_Nome, Salario 
from Empregado
where Departamento_Codigo = 40 and 
salario > any (
select Salario 
from Empregado 
where Departamento_Codigo = 30
);


