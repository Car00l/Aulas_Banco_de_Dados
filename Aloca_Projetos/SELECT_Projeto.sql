-- Exercicio 1: Liste o nome das pessoas do sexo feminino 
select *
from Pessoas
where sexo = 'F';

-- Exercicio 2: Liste o nome, o sexo e a idade das pessoas com idade entre 37 e 43 anos 
select nome, sexo, idade
from Pessoas 
where idade between 37 and 43;

-- Exercicio 3: Liste o nome, o sexo e a idade das pessoas do sexo maculino com idade superior a 40 anos
select nome, sexo, idade
from Pessoas
where sexo = 'M'
and idade > 40;

-- Exercico 4: Liste os dados das pessoas cujo nome inica pela letra E ou R
select * 
from Pessoas
where nome like 'E%'
or nome like 'R%';

-- Exercicio 5: liste os dados das pessoas cuja idade seja par
select *
from pessoas
where idade %2 = 0;

-- Exercico 6: Liste a quantidade de pessoas cadastradas na tabela pessoas, idade minima, idade maxima e a media das idades das pessoas 
select count(CPF) as quant_Pessoas
from Pessoas;

select min(idade) as idade_minima
from Pessoas;

select max(idade) as idade_maxima
from Pessoas;

select truncate(avg(idade), 2) as media_idades
from Pessoas;