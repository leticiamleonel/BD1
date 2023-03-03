select id_professor, 
nome_professor 
FROM professor as p
where not EXISTS(
    select d.id_professor
    from disciplina as d
    where p.id_professor = d.id_professor);
