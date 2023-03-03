academico=# CREATE TABLE matriculado (
academico(#     id_disciplina INT NOT NULL,
academico(#     id_aluno INT NOT NULL,
academico(#     nota FLOAT,
academico(#     CONSTRAINT matriculado_pk PRIMARY KEY (id_disciplina, id_aluno),
academico(#     CONSTRAINT matriculado_fk_aluno FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno)
academico(# );
CREATE TABLE