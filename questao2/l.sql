select d.nome_disciplina,
count(*) as quantidade_alunos
from disciplina as d,
matriculado as m
where d.id_disciplina = m.id_disciplina
group by d.nome_disciplina;