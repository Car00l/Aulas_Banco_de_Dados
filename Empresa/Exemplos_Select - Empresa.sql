-- Listar todos os dados de todos os departamentos

SELECT Codigo, Nome, UF -- Colunas especificas
FROM Departamento;

SELECT * -- Tudo
FROM Departamento;

SELECT Departamento.* -- Todos os dados dessa tabela
FROM Departamento;

-- Listar os códigos dos departamentos
SELECT Codigo
FROM Departamento;

-- Listar os dados do departamento 30
SELECT *
FROM Departamento
WHERE Codigo = 30;

-- Listar o nome e o código do departamento dos empregados
-- que não estão relacionados a um departamento

SELECT Primeiro_Nome, Departamento_Codigo
FROM Empregado
WHERE Departamento_Codigo is null;

-- Listar o nome e o código do departamento dos empregados
-- que estão relacionados a um departamento

SELECT Primeiro_Nome, Departamento_Codigo
FROM Empregado
WHERE Departamento_Codigo is not null;

-- Liste o codigo dos departamentos dos empregados

SELECT Departamento_Codigo
FROM Empregado;

-- Liste o codigo sem repetição dos departamentos dos empregados

SELECT DISTINCT(Departamento_Codigo) -- Nao apresenta repetição de dados
FROM Empregado;

-- Listar os dados dos empregados que trabalham com departamento quarenta E possuam salario superios a 500

SELECT *
FROM Empregado
WHERE Departamento_Codigo = 40
AND Salario > 500; -- Todas as condiçoes devem ser verdadeiras

-- Listar os dados dos empregados que trabalham com departamento quarenta OU possuam salario superios a 500

SELECT *
FROM Empregado
WhERE Departamento_Codigo = 40
OR Salario > 500; -- Alguma das condições deve ser verdadeira

-- Listar os dados dos empregados que trabalhem nos departamentos 10 OU 40

select *
from Empregado
where Departamento_Codigo = 40
or Departamento_Codigo = 10;

select *
from Empregado
where Departamento_Codigo in (10, 40);-- Busca dois valores de uma coluna

-- Listar dados dos empregados que nao trabalhem nos depatamentos 10 e 30

select *
from Empregado
where Departamento_Codigo not in (10, 30);

select *
from Empregado
where Departamento_Codigo <> 30
and Departamento_Codigo <> 10;
 
-- Lista dados dos empregados que não trabalhem nos departamentos 10 e 30 inclusive os que estao sem departamento

select *
from Empregado
where Departamento_Codigo not in (10, 30)
or Departamento_Codigo is null;

-- Listar dados dos empregados que possuem salario ente 250 e 800

select *
from Empregado
where Salario >= 250
and Salario <= 800;

select * 
from Empregado
where Salario BETWEEN 250 AND 850; 
