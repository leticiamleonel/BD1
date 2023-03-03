academico=# CREATE TABLE disciplina(
academico(#     id_disciplina VARCHAR(30) NOT NULL,
academico(#     carga_horaria INT NOT NULL,
academico(#     id_professor INT,
academico(#     CONSTRAINT disciplina_pk PRIMARY KEY (id_disciplina),
academico(#     CONSTRAINT disciplina_fk_professor FOREIGN KEY (id_professor) REFERENCES professor (id_professor)
academico(# );
CREATE TABLE