select a.nome_aluno,
sum(d.carga_horaria) as ch
from aluno as a,
matriculado as m, 
disciplina as d
where a.id_aluno = m.id_aluno
and d.id_disciplina = m.id_disciplina
group by a.nome_aluno
having sum(d.carga_horaria)>=100