select d.nome_disciplina
from disciplina as d,
matriculado as m
where m.id_aluno = 1
and exists(
    select m2.id_disciplina,
    count(*)
    from matriculado as m2
    where m2.id_disciplina = d.id_disciplina
    group by m2.id_disciplina
    having count(*) >=2);
