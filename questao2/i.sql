create temporary table media as 
select id_aluno,
avg(m.nota) as media
from matriculado as m
group by id_aluno;

update aluno as a
set media = m.media
from media as m
where a.id_aluno = m.id_aluno