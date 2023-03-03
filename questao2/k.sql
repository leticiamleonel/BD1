select p.nome_professor,
sum(d.carga_horaria) as CH
from professor as p,
disciplina as d
where p.id_professor = d.id_professor
group by p.nome_professor;