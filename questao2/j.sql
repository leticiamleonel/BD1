select DISTINCT a.nome_aluno
from aluno as a,
matriculado as m,
disciplina as d,
professor as p
where a.id_aluno = m.id_aluno
and d.id_disciplina = m.id_disciplina
and p.id_professor = d.id_professor
and p.area = 'Computação';