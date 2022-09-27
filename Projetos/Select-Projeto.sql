
-- Listar todos os alunos da cidade de Lins.
select *
from aluno
where cidade = 'Lins';

-- Listar todos alunos que fazem o curso Técnico em Informática.
select *
from aluno
where curso_id = 1;

-- Listar todos alunos que possuem idade superior a 18 anos.
select *
from aluno
where idade > 18;

-- Listar todos alunos que possuem idade entre 18 e 35 anos.
select *
from aluno
where idade BETWEEN 18 AND 35; 

-- Listar os alunos que fazem o curso Técnico em Recursos Humanos e são da cidadede Getulina.
select *
from aluno
where curso_id = 3
and cidade = 'Getulina';

-- Listar os alunos que fazem o curso Técnico em Recursos Humanos que são da cidade de Lins ou Guaimbê.
select *
from aluno
where curso_id = 3
where cidade = 'Guaimbe'

-- Listar id, matrícula do aluno e área do curso de todos os alunos que fazem Técnico em Informática.
select aluno.aluno_id, curso.area, aluno.matricula
from aluno, curso
where aluno.curso_id = 1
and area = 'Tecnologia';
