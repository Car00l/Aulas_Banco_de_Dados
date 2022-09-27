
-- Questa A
select *
from aluno
where cidade = 'Lins';

-- Questao B
select *
from aluno
where curso_id = 1;

-- Questao C
select *
from aluno
where idade > 18;

-- Questao D
select *
from aluno
where idade BETWEEN 18 AND 35; 

-- Questao E
select *
from aluno
where curso_id = 3
and cidade = 'Getulina';

-- Quetao F
select *
from aluno
where curso_id = 3
where cidade = 'Guaimbe'

-- Questao G
select aluno.aluno_id, curso.area, aluno.matricula
from aluno, curso
where aluno.curso_id = 1
and area = 'Tecnologia';