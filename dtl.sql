BEGIN;
	UPDATE matricula SET nota1 = 10.00 WHERE id = 2;
SAVEPOINT modificando_notas;
	UPDATE matricula SET nota2 = 7.00 WHERE id = 3;
COMMIT;

BEGIN;
	INSERT INTO matricula (id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
	VALUES (6,1,3,9.00,10.00,8.50);
SAVEPOINT insert_matricula;
	INSERT INTO matricula (id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
	VALUES (7,2,5,8.00,7.00,6.50);
	INSERT INTO matricula (id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
	VALUES (8,3,2,10.00,10.00,8.50);
	INSERT INTO matricula (id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
	VALUES (9,4,1,7.00,10.00,6.50);
	INSERT INTO matricula (id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
	VALUES (10,5,2,8.00,10.00,8.50);
-- ROLLBACK TO SAVEPOINT insert_matricula;
COMMIT;
