BEGIN;
	UPDATE matricula SET nota1 = 10.00 WHERE id = 2;
SAVEPOINT modificando_notas;
	UPDATE matricula SET nota2 = 7.00 WHERE id = 3;
COMMIT;
