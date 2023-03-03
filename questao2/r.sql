select id_disciplina, nome_disciplina
from disciplina as d
where not EXISTS(
    select id_disciplina
    from matriculado as m
    where m.id_disciplina = d.id_disciplina
);