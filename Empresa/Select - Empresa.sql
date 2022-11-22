-- Listar todos os dados de todos os departamentos

-- Colunas especificas
SELECT Codigo, Nome, UF 
FROM Departamento;

-- Tudo
SELECT * 
FROM Departamento;

-- Todos os dados dessa tabela
SELECT Departamento.* 
FROM Departamento;

-- Listar os códigos dos departamentos
SELECT Codigo
FROM Departamento;

-- WHERE

-- Listar os dados do departamento 30
SELECT *
FROM Departamento
WHERE Codigo = 30;

-- IS NULL

-- Listar o nome e o código do departamento dos empregados
-- que não estão relacionados a um departamento
SELECT Primeiro_Nome, Departamento_Codigo
FROM Empregado
WHERE Departamento_Codigo is null;

-- IS NOT NULL

-- Listar o nome e o código do departamento dos empregados
-- que estão relacionados a um departament
SELECT Primeiro_Nome, Departamento_Codigo
FROM Empregado
WHERE Departamento_Codigo is not null;

-- Liste o codigo dos departamentos dos empregados
SELECT Departamento_Codigo
FROM Empregado;

-- SELECT DISTING = Nao apresenta repetição de dados

-- Liste o codigo sem repetição dos departamentos dos empregados
SELECT DISTINCT(Departamento_Codigo) 
FROM Empregado;

-- AND = Todas as condiçoes devem ser verdadeiras

-- Listar os dados dos empregados que trabalham com departamento quarenta E possuam salario superios a 500
SELECT *
FROM Empregado
WHERE Departamento_Codigo = 40
AND Salario > 500;

-- OR = Alguma das condições deve ser verdadeira

-- Listar os dados dos empregados que trabalham com departamento quarenta OU possuam salario superios a 500
SELECT *
FROM Empregado
WhERE Departamento_Codigo = 40
OR Salario > 500; 

-- IN = Busca dois valores de uma coluna

-- Listar os dados dos empregados que trabalhem nos departamentos 10 OU 40
select *
from Empregado
where Departamento_Codigo = 40
or Departamento_Codigo = 10;

select *
from Empregado
where Departamento_Codigo in (10, 40);

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

-- BETWEEN = entre dois valores

-- Listar dados dos empregados que possuem salario ente 250 e 800
select *
from Empregado
where Salario >= 250
and Salario <= 800;

select * 
from Empregado
where Salario BETWEEN 250 AND 850; 

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

-- Listar o nome e o salario dos empregados acrescidos de R$50,00

-- nao adiciona no bando, somente na tela
select Primeiro_Nome, Salario + 50.00
from empregado;

-- ultilizar ALIAS (apelido)
-- uma nova coluna (temporaria) com os valores
select Primeiro_Nome, Salario + 50.00 as Novo_Salario
from Empregado;

-- listar o nome e o salario dos empregados decrecidos de R$50,00
select Primeiro_Nome, Salario - 50.00 as Novo_Salario
from Empregado;

-- listar o nome e o salario dos emprgados acrescidos 10%
select Primeiro_Nome, truncate( Salario *1.1, 2) as Novo_Salario
from Empregado;

-- lisatr o nome e a metade do salario dos empregados 
select Primeiro_Nome, truncate(salario / 2, 2) as Novo_Salario
from Empregado;

-- Sempre arredonda pra cima
-- ROUND (15.654, 2) = 15.65
-- ROUND (15.655, 2) = 15.66

-- Mantem o mesmo numero
-- TRUNCATE (15.654, 2) = 15.65
-- TRUNCATE (15.655, 2) = 15.65

-- listar o nome e salrio dos empregados cujo salario seja divisivio po 3.

-- MOD %
select Primeiro_Nome, Salario
from Empregado
where Salario % 3 = 0;

-- COUNT = contar

-- Listar o total de empregados que estão alocados em departamentos
select count(Departamento_Codigo)
from empregado
where Departamento_Codigo is not null;

-- Listar o total de empregados que estão alocados no departemento 40
select count(Departamento_Codigo)
from empregado
where Departamento_Codigo = 40;

-- SUN = somatoria

-- Listar o total de salário dos empregados
select sum(Salario)
from empregado;

-- Listar o total de salário dos empregados do departamento 40
select sum(Salario)
from empregado
where Departamento_Codigo = 40;

-- AVG = media

-- Listar a media dos salario dos empregados que estão alocados no depatamento 40
select avg(Salario)
from empregado
where Departamento_Codigo = 40;

-- ORDEN BY = ordena 
-- ASC = ascendente A - Z
-- DES = descendente Z - A
-- so é possivel fazer ou em asc ou em des

-- Ordernar o resultado da consulta pelos campos Primeiro_Nome
select * 
from empregado
order by Primeiro_Nome asc;

select * 
from empregado
order by 2 asc; -- puxar numero da tabela

-- GROUP BY = agrupa resultados
-- HAVING =  contendo algo

-- Listar codigo do departamento e a quantidade de empregados desse departamento quando o departamento pussuir mais de um empregado
 select Departamento_Codigo, count(*)
 from empregado
 group by Departamento_Codigo
 having count(*) > 1;

-- Listar o codigo do departamento e a media salarial dos empregados desse departemento quando a media salarial do departamento for maior que R$ 500,00
 select Departamento_Codigo, avg(Salario)
 from empregado
 group by Departamento_Codigo
 having avg(salario)> 500.00;

-- Listar o codigo do departamento e a media salarial dos empregados desse departemento quando a media salarial do departamento for maior que R$ 500,00, considerar apenas empregados com salario maior que 550
select Departamento_Codigo, avg(Salario)
 from empregado
 where Salario > 550.00
 group by Departamento_Codigo
 having avg(salario)> 500.00;
 
 -- Listar o codigo do departamento e a media salarial dos empregados desse departemento quando a media salarial do departamento for maior que R$ 500,00, considerar apenas empregados com salario maior que 550, o resultado devera ser ordenado em ordem decrescente em relação a média salarial
 select Departamento_Codigo, avg(Salario)
 from empregado
 where Salario > 550.00
 group by Departamento_Codigo
 having avg(salario)> 500.00
 order by avg(Salario) desc;
 
 -- Listar o nome dos departamentos que possuem empregados
  
 -- IN compara / amarra 
 select nome 
 from departamento
 where codigo in (
 select departamento_codigo
 from empregado
 where departamento_codigo is not null
 );
 
 -- Exists onde existe
 select nome 
 from departamento
 where exists (
 select departamento_codigo
 from empregado
 where departamento_codigo is not null
 and codigo = Departamento_Codigo
 );
 
 -- NOT IN
  select nome 
 from departamento
 where codigo not in(
 select departamento_codigo
 from empregado
 where departamento_codigo is not null
 );
 
 -- NOT EXISTS
  select nome 
 from departamento
 where not exists (
 select departamento_codigo
 from empregado
 where departamento_codigo is not null
 and codigo = Departamento_Codigo
 );
 
 -- Listar os dados de todas as combinações possiveis de empregados com departamento
 select *
 from empregado, departamento;
 
 -- CROSS JOIN tras todas as informaçãoes
 select *
 from empregado cross join departamento;
 
  -- INNER JOIN compara duas tabelas 
 -- Listar os dados de todos os empregados e dos departamentos relacionados
 select empregado.*, nome as dep
 from empregado inner join departamento
 on Departamento_Codigo = Codigo;
 
 -- Utilizando o NATURAL JOIN sem comparação nenhuma
 select *
 from empregado natural join dep;
 
 -- Alterar na tabela dep o campo codigo para departamento_codigo ai podemos ver tranquilamente a ultilização do Natural join
 
 -- OUTER JOIN
 
 -- Listar os dados de todos os empregados, independente deles estraem relacionados a departamento 
 -- Quando o empregado estiver relacionado a um departamento, apresente os dados do departaemnto
 select *
 from empregado left outer join departamento
 on Departamento_Codigo = codigo;
 
  -- Listar os dados de todos os departamentos, independente deles estraem relacionados a um empregado 
 -- Quando o departamento estiver relacionado a um empregado, apresente os dados de empregado
select *
 from empregado right outer join departamento
 on Departamento_Codigo = codigo;
