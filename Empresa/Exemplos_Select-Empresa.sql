-- Listar todos os dados de todos os departamentos
SELECT Codigo, Nome, UF
FROM Departamento;

SELECT *
FROM Departamento;

SELECT Departamento.*
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