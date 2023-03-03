select a.nome_aluno
from aluno as a
where exists(
    select 1
    from disciplina as d,
    matriculado as m
    where a.id_aluno = m.id_aluno
    and d.id_disciplina = m.id_disciplina
    and d.carga_horaria >= 60);
