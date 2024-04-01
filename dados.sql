create database escola;

create table aluno(nome varchar(40), 
data_nascimento char(8),
série varchar (1),
id_responsável varchar(9));





create table professores(nome varchar(40), 
disciplina varchar(40), 
id_professor varchar(11));



create table disciplinas(nome varchar(40),
carga_horária varchar(4),
id_professor_responsável varchar(11),
id_disciplina varchar(4));


create table notas (id_aluno varchar(9),
id_disciplina varchar(4),
nota varchar(2));

SELECT * from aluno;


SELECT Professores.nome AS NomeProfessor, Disciplinas.nome AS NomeDisciplina
FROM professores
INNER JOIN disciplinas ON professores.id_professor = disciplinas.id_professor_responsável;

INSERT INTO professores (id_professor, nome, disciplina) VALUES ('1374424234', 'João', 'Matemática');
INSERT INTO professores (id_professor, nome, disciplina) VALUES ('2423243423', 'Maria', 'Português');

INSERT INTO disciplinas (id_disciplina, nome, carga_horária, id_professor_responsável) VALUES ('1342', 'Matemática', '60', '1374424234');
INSERT INTO disciplinas (id_disciplina, nome, carga_horária, id_professor_responsável) VALUES ('2463', 'Português', '60', '2423243423');
INSERT INTO disciplinas (id_disciplina, nome, carga_horária, id_professor_responsável) VALUES ('6788', 'Geografia', '160', '7824636742');
INSERT INTO disciplinas (id_disciplina, nome, carga_horária, id_professor_responsável) VALUES ('0967', 'Inglês', '1360', '324723874');

-- Inserindo dados de notas dos alunos
INSERT INTO notas (id_aluno, id_disciplina, nota) VALUES ('1001', '1342', '2');
INSERT INTO notas (id_aluno, id_disciplina, nota) VALUES ('1001', '2463', '10');
INSERT INTO notas (id_aluno, id_disciplina, nota) VALUES ('1002', '0967', '7');


SELECT Professores.nome AS NomeProfessor, Disciplinas.nome AS NomeDisciplina, notas.nota AS Nota
FROM professores
INNER JOIN disciplinas ON professores.id_professor = disciplinas.id_professor_responsável
INNER JOIN notas ON disciplinas.id_disciplina = notas.id_disciplina;



INSERT INTO aluno( nome, id_responsável, data_nascimento, série) VALUES ('Maria', '3428792', '01022008', '3');
INSERT INTO aluno( nome, id_responsável, data_nascimento, série) VALUES ('Joana', '3243245', '03052009', '3');
INSERT INTO aluno( nome, id_responsável, data_nascimento, série) VALUES ('Carla', '3668889', '05092006', '3');
INSERT INTO aluno( nome, id_responsável, data_nascimento, série) VALUES ('Euvira', '3428767', '09012008', '3');

insert into aluno(id_aluno)values('1001');



SELECT Professores.nome AS NomeProfessor, Disciplinas.nome AS NomeDisciplina, notas.nota AS Nota, aluno.nome AS NomeAluno
FROM professores
INNER JOIN disciplinas ON professores.id_professor = disciplinas.id_professor_responsável
INNER JOIN notas ON disciplinas.id_disciplina = notas.id_disciplina
INNER JOIN aluno ON notas.id_aluno = aluno.id_aluno;

ALTER TABLE aluno
ADD COLUMN id_aluno INT AUTO_INCREMENT PRIMARY KEY;

