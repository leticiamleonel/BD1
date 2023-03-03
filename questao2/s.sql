insert into matriculado
select d.id_disciplina, a.id_aluno, 0 as nota
from disciplina as d,
aluno as a
where not EXISTS(
    select id_disciplina
    from matriculado as m
    where m.id_disciplina = d.id_disciplina
);