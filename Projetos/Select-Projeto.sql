select *
from engenheiro
where cidade = 'Lins';

select *
from engenheiro 
where sexo = 'F';

select *
from engenheiro
where atuacao = 'civil';

select eng_id
from projeto
where uf <> 'SP';

select projeto.nome, engenheiro.atuacao
from engenheiro, projeto
where projeto.uf <> 'SP'
where engenheiro.atuacao ;

select eng_id
from projeto 
where nome = 'predio';

select projeto.nome, engenheiro.atuacao
from engenheiro, projeto
where projeto.nome = 'predio';


