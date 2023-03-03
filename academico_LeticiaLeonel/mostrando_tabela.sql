academico=# SELECT * FROM aluno;
 id_aluno | nome_aluno |     cpf     | data_nascimento | media
----------+------------+-------------+-----------------+-------
        1 | José       | 11111111111 | 1990-01-20      |    85
        2 | João       |             | 1993-09-10      |  84.8
        3 | Maria      | 33333333333 | 1989-05-15      |  66.9
        4 | Ana        | 44444444444 | 1992-04-21      |  70.5
(4 rows)


academico=# SELECT * FROM professor;
 id_professor | nome_professor | sobrenome |     area
--------------+----------------+-----------+---------------
           10 | Roberto        | Silva     | Computação
           20 | Carlos         | Alves     | Administração
           30 | José           | Teodoro   | Matemática
           40 | Rodrigo        | Martins   | Engenharia
(4 rows)

academico=# SELECT * FROM disciplina;
 id_disciplina | carga_horaria | id_professor |  nome_disciplina
---------------+---------------+--------------+--------------------
 100           |            80 |           10 | {Algoritmos}
 200           |            80 |           10 | {"Banco de dados"}
 300           |            60 |           20 | {Cálculo}
 400           |            60 |           20 | {Álgebra}
 500           |            40 |           30 | {Empreendedorismo}
 600           |            80 |              | {Redes}
(6 rows)


academico=# SELECT * FROM matriculado;
 id_disciplina | id_aluno | nota
---------------+----------+------
           100 |        1 | 89.5
           200 |        1 |   78
           300 |        1 |   90
           400 |        1 | 82.5
           100 |        2 | 88.7
           200 |        2 |   81
           400 |        2 | 77.5
           500 |        2 |   92
           100 |        3 | 72.5
           200 |        3 | 52.8
           400 |        3 | 83.3
           100 |        4 |   71
           200 |        4 |   70
           300 |        3 |   59
(14 rows)
academico=# Select nome_aluno, data_nascimento FROM aluno;
 nome_aluno | data_nascimento
------------+-----------------
 José       | 1990-01-20
 João       | 1993-09-10
 Maria      | 1989-05-15
 Ana        | 1992-04-21
(4 rows)


academico=# SELECT 102 * 30 as conta;
 conta
-------
  3060
(1 row)