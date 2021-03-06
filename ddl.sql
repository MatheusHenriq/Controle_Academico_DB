CREATE DATABASE Sistema_Academico;
CREATE LANGUAGE plpgsql; -- use o comando caso a versão do seu POSTGRES não tenha suporte nativo para essa linguagem de procedimento.

CREATE SEQUENCE IF NOT EXISTS type_seq 
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999
	START WITH 1
	CACHE 1;


CREATE TABLE IF NOT EXISTS funcionario(
	matricula SERIAL PRIMARY KEY,
	-- MATRICULA integer DEFAULT nextval('type_seq') PRIMARY KEY,
	cpf VARCHAR(11) NOT NULL,
	sexo CHAR CHECK ((sexo = 'M') or (sexo = 'F')) NOT NULL,
	nome VARCHAR(150) NOT NULL,
	salario DECIMAL(7,2) NOT NULL,
	telefone VARCHAR(8) NOT NULL,
	email VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS departamento(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	sigla VARCHAR(4) NOT NULL,
	descricao VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS extensao(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	duracao DATE NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	codigo_atividade SMALLINT NOT NULL,
	data_comeco DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS disciplinas(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	C_H SMALLINT NOT NULL,
	numero_creditos SMALLINT NOT NULL,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS  turmas(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	nome VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS aluno(
	matricula SERIAL PRIMARY KEY,
	-- MATRICULA integer DEFAULT nextval('type_seq') PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	telefone VARCHAR(8) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	email VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS pre_requisitos(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	especificacao VARCHAR(100) NOT NULL
);

-- Disciplinas_Alunos
CREATE TABLE IF NOT EXISTS Matricula(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	matricula_aluno INTEGER,	
	id_disciplina INTEGER,
	nota1 DECIMAL(4,2) NOT NULL,
	nota2 DECIMAL(4,2) NOT NULL,
	nota3 DECIMAL(4,2) NOT NULL,
	FOREIGN KEY(matricula_aluno) REFERENCES aluno(matricula),
	FOREIGN KEY(id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS disciplinas_turma(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	id_turma INTEGER,
	id_disciplina INTEGER,
	periodo_dia VARCHAR(10) NOT NULL,
	FOREIGN KEY (id_turma) REFERENCES turmas(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS pre_requisito_disciplina(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	id_pre INTEGER,
	id_disciplina INTEGER,
	FOREIGN KEY (id_pre) REFERENCES pre_requisitos(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

    CREATE TABLE IF NOT EXISTS pos_graduacao(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS graduacao(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS pos_graduacao_disciplina(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	id_pos INTEGER,
	id_disciplina INTEGER,
	periodo_dia VARCHAR(10),
	FOREIGN KEY(id_pos) REFERENCES pos_graduacao(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS graduacao_disciplina(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	id_graduacao INTEGER,
	id_disciplina INTEGER,
	periodo_dia VARCHAR(10),
	FOREIGN KEY(id_graduacao) REFERENCES graduacao(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS publicacoes(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	ano VARCHAR(4) NOT NULL,
	titulo VARCHAR(100) NOT NULL,
	editora VARCHAR(100) NOT NULL,
	qualificação VARCHAR(15) NOT NULL,
	paginas SMALLINT NOT NULL,
	evento VARCHAR(150) NOT NULL,
	id_pos INTEGER,
	FOREIGN KEY (id_pos) REFERENCES pos_graduacao(id)
);

CREATE TABLE IF NOT EXISTS autores(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS autores_publicacoes(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	id_autores INTEGER,
	id_publicacoes INTEGER,
	FOREIGN KEY (id_autores) REFERENCES autores(id),
	FOREIGN KEY (id_publicacoes) REFERENCES publicacoes(id)
);

CREATE TABLE IF NOT EXISTS professores(
	id SERIAL PRIMARY KEY,
	-- id integer DEFAULT nextval('type_seq') PRIMARY KEY,
	id_func INTEGER,
	id_pos INTEGER,
	id_graduacao INTEGER,
	id_dep INTEGER,
	id_extensao INTEGER,
	FOREIGN KEY (id_func) REFERENCES funcionario(matricula),
	FOREIGN KEY (id_pos) REFERENCES pos_graduacao(id),
	FOREIGN KEY (id_graduacao) REFERENCES graduacao(id),
	FOREIGN KEY (id_dep) REFERENCES departamento(id),
	FOREIGN KEY (id_extensao) REFERENCES extensao(id)	
);

CREATE TABLE IF NOT EXISTS notas_alteracao (
	id  INTEGER NOT NULL,
	data_alteracao TEXT NOT NULL,
	operacao_realizada TEXT NOT NULL
);

--GROUPO DE USUÁRIOS
CREATE ROLE professores CONNECTION LIMIT -1;
CREATE ROLE alunos CONNECTION LIMIT -1; 
--USUÁRIOS
CREATE ROLE erisberto_1 INHERIT LOGIN PASSWORD 'senha1' CONNECTION LIMIT 1 IN ROLE professores;
CREATE ROLE ramon_2 INHERIT LOGIN PASSWORD 'senha2' CONNECTION LIMIT 1 IN ROLE professores;
CREATE ROLE esmeralda_3 INHERIT LOGIN PASSWORD 'senha3' CONNECTION LIMIT 1 IN ROLE professores;
CREATE ROLE renata_4 INHERIT LOGIN PASSWORD 'senha4' CONNECTION LIMIT 1 IN ROLE professores;
CREATE ROLE riccarti_5 INHERIT LOGIN PASSWORD 'senha5' CONNECTION LIMIT 1 IN ROLE professores;

CREATE ROLE marcelo_1 INHERIT LOGIN PASSWORD 'senha1' CONNECTION LIMIT 1 IN ROLE alunos;
CREATE ROLE ricardo_2 INHERIT LOGIN PASSWORD 'senha2' CONNECTION LIMIT 1 IN ROLE alunos;
CREATE ROLE italo_3 INHERIT LOGIN PASSWORD 'senha3' CONNECTION LIMIT 1 IN ROLE alunos;
CREATE ROLE arruda_4 INHERIT LOGIN PASSWORD 'senha4' CONNECTION LIMIT 1 IN ROLE alunos;
CREATE ROLE antonio_5 INHERIT LOGIN PASSWORD 'senha5' CONNECTION LIMIT 1 IN ROLE alunos;

CREATE ROLE adm LOGIN PASSWORD 'admin' CONNECTION LIMIT 1 ;

-- FUNÇÃO PARA AUXILIAR NA INSERÇÃO, O USO DE FUNÇÕES É DE EXTREMA IMPORTÂNCIA POR REDUZIR O NÚMERO DE SOLICITAÇÕES FEITAS PELO SERVIDOR
AO BANCO DE DADOS.

CREATE OR REPLACE FUNCTION alunos_add (a_matricula INTEGER, a_nome VARCHAR(150), a_telefone VARCHAR(8), a_cpf VARCHAR(11), a_email VARCHAR(250))
RETURNS INTEGER
LANGUAGE PLPGSQL
SECURITY INVOKER
CALLED ON NULL INPUT
AS $$
DECLARE variavel_mat INTEGER;
BEGIN
	IF a_matricula IS NULL OR a_nome IS NULL OR a_telefone IS NULL OR a_cpf IS NULL OR a_email IS NULL THEN
		RETURN 0;
	END IF;
	SELECT INTO variavel_mat matricula
	FROM aluno
	WHERE matricula = a_matricula;
	IF variavel_mat  IS NULL THEN
		INSERT INTO aluno(matricula,nome,telefone,cpf,email) 
		VALUES (a_matricula,a_nome,a_telefone,a_cpf,a_email);
		RETURN variavel_mat;
	END IF; 
END;
$$;
																	   
CREATE OR REPLACE FUNCTION funcionario_graduacao (salario DECIMAL(7,2)) 
RETURNS TEXT
AS $$
BEGIN
	RAISE NOTICE 'Entrando no IF';
	IF salario <= 3200 THEN
		RAISE NOTICE 'Dentro do 1o IF';
		RETURN 'Mestre';
	ELSIF salario <= 3500 THEN
		RAISE NOTICE 'dentro do 2o IF';
		RETURN 'Doutor';
	ELSE
		RAISE EXCEPTION 'Não existe funcionario com o salário expecificado' USING HINT='Insira um funcionario com o salario desejado, ou mude a função';
	END IF;
END;
$$ LANGUAGE PLPGSQL;
								
								  
CREATE OR REPLACE FUNCTION notas_alteracao_func()
RETURNS TRIGGER AS $func_trigger$
BEGIN
	IF(TG_OP = 'INSERT') THEN
		INSERT INTO notas_alteracao(id,data_alteracao,operacao_realizada)
		VALUES(new.id,current_timestamp,'Operação de inserção. A linha '
		|| NEW.id || ' teve os valores inseridos');
		RETURN NEW;
	ELSIF (TG_OP = 'UPDATE') THEN 
		INSERT INTO notas_alteracao(id,data_alteracao,operacao_realizada)
		VALUES(old.id,current_timestamp,'Operação de atualização. A linha '
		|| NEW.id || ' teve os valores atualizados' || OLD || ' com ' || NEW.* ||'.');
		RETURN NEW;
	ELSIF (TG_OP = 'DELETE') THEN
		INSERT INTO notas_alteracao(id,data_alteracao,operacao_realizada)
		VALUES(old.id,current_timestamp,'Operação de deleção. A linha '
		|| OLD.id || ' teve os valores excluidos');
		RETURN OLD;
	ELSE
		RAISE EXCEPTION 'Nenhuma das instruções DML (INSERT,UPDATE,DELETE) foram atendidas' 
		USING HINT = 'Utilize alguma das operações válidas';
	END IF;
END;
$func_trigger$ LANGUAGE plpgsql;
																	   
-- CRIAÇÃO DE VIEW PARA AUXILIAR NA VISUALIZAÇÃO DE DADOS NO BD	
																	   																	   
CREATE OR REPLACE VIEW professores_referencia AS (
	SELECT funcionario.nome AS nome, graduacao.nome AS graduacao, pos_graduacao.nome AS pos_graduacao,
	publicacoes.titulo AS publicacoes, extensao.descricao AS extensao, departamento.descricao AS departamento
	FROM funcionario 
	JOIN professores ON funcionario.matricula = professores.id_func
	JOIN pos_graduacao ON pos_graduacao.id = professores.id_pos
	JOIN graduacao ON graduacao.id = professores.id_graduacao
	JOIN publicacoes ON publicacoes.id_pos = pos_graduacao.id
	JOIN extensao ON extensao.id = professores.id_extensao
	JOIN departamento ON departamento.id = professores.id_dep
);																	   
																	   
CREATE OR REPLACE VIEW aluno_disciplinas (nome,disciplinas) AS (
	SELECT aluno.nome, disciplinas.nome FROM aluno
	JOIN matricula ON matricula.matricula_aluno = aluno.matricula
	JOIN disciplinas ON disciplinas.id = matricula.id_disciplina
);	
								  
CREATE OR REPLACE VIEW prof_salario(nome,salario) AS (
	SELECT funcionario.nome,funcionario.salario FROM funcionario
	JOIN professores ON professores.id_func = funcionario.matricula
); 					
																	   
--CRIAÇÃO DE TRIGGER
CREATE TRIGGER  notas_alteracao_trig
AFTER INSERT OR DELETE OR UPDATE ON matricula
FOR EACH ROW
EXECUTE PROCEDURE notas_alteracao_func();								  
