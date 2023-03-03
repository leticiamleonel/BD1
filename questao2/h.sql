select a.id_aluno, a.nome_aluno,
avg(m.nota) as media
from aluno as a,
matriculado as m
where a.id_aluno = m.id_aluno
group by a.id_aluno
order by avg(m.nota) desc;