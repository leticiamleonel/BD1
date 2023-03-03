postgres=# \connect postgres;
You are now connected to database "postgres" as user "postgres".
postgres=# DROP DATABASE IF EXISTS academico;
NOTICE:  database "academico" does not exist, skipping
DROP DATABASE
postgres=# CREATE DATABASE academico;
CREATE DATABASE
postgres=# \connect academico;
You are now connected to database "academico" as user "postgres".
academico=# CREATE TABLE aluno(
academico(#     id_aluno SERIAL NOT NULL,
academico(#     nome_aluno VARCHAR(50) NOT NULL,
academico(#     cpf CHAR(11),
academico(#     data_nascimento DATE,
academico(#     media FLOAT DEFAULT 0.0,
academico(#     CONSTRAINT aluno_pk PRIMARY KEY (id_aluno),
academico(#     CONSTRAINT aluno_pk_key UNIQUE (cpf)
academico(# );
CREATE TABLE