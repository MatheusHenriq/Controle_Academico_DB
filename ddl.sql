CREATE DATABASE Sistema_Academico;

CREATE TABLE IF NOT EXISTS funcionario(
	matricula SERIAL PRIMARY KEY,
	cpf VARCHAR(11) NOT NULL,
	sexo CHAR CHECK ((sexo = 'M') or (sexo = 'F')) NOT NULL,
	nome VARCHAR(150) NOT NULL,
	salario DECIMAL(7,2) NOT NULL,
	telefone VARCHAR(8) NOT NULL,
	email VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS departamento(
	id SERIAL PRIMARY KEY,
	sigla VARCHAR(4) NOT NULL,
	descricao VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS extensao(
	id SERIAL PRIMARY KEY,
	duracao DATE NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	codigo_atividade SMALLINT NOT NULL,
	data_comeco DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS disciplinas(
	id SERIAL PRIMARY KEY,
	C_H SMALLINT NOT NULL,
	numero_creditos SMALLINT NOT NULL,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS  turmas(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS aluno(
	matricula SERIAL PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	telefone VARCHAR(8) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	email VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS pre_requisitos(
	id SERIAL PRIMARY KEY,
	especificacao VARCHAR(100) NOT NULL
);

-- Disciplinas_Alunos
CREATE TABLE IF NOT EXISTS Matricula(
	id SERIAL PRIMARY KEY,
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
	id_turma INTEGER,
	id_disciplina INTEGER,
	periodo_dia VARCHAR(10) NOT NULL,
	FOREIGN KEY (id_turma) REFERENCES turmas(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS pre_requisito_disciplina(
	id SERIAL PRIMARY KEY,
	id_pre INTEGER,
	id_disciplina INTEGER,
	FOREIGN KEY (id_pre) REFERENCES pre_requisitos(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

    CREATE TABLE IF NOT EXISTS pos_graduacao(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS graduacao(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS pos_graduacao_disciplina(
	id SERIAL PRIMARY KEY,
	id_pos INTEGER,
	id_disciplina INTEGER,
	periodo_dia VARCHAR(10),
	FOREIGN KEY(id_pos) REFERENCES pos_graduacao(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS graduacao_disciplina(
	id SERIAL PRIMARY KEY,
	id_graduacao INTEGER,
	id_disciplina INTEGER,
	periodo_dia VARCHAR(10),
	FOREIGN KEY(id_graduacao) REFERENCES graduacao(id),
	FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id)
);

CREATE TABLE IF NOT EXISTS publicacoes(
	id SERIAL PRIMARY KEY,
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
	id_autores INTEGER,
	id_publicacoes INTEGER,
	FOREIGN KEY (id_autores) REFERENCES autores(id),
	FOREIGN KEY (id_publicacoes) REFERENCES publicacoes(id)
);

CREATE TABLE IF NOT EXISTS professores(
	id SERIAL PRIMARY KEY,
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


pos_graduacao: (id,nome)
(1,'Pós-Graduação em Historia')
(2,'Pós-Graduação em 	Quimica')
(3,'Pós-Graduação em Matematica')
(4,'Pós-Graduação em Física')
(5,'Pós-Graduação em Biologia')

publicacoes: (id,ano,titulo,editora,qualificação,paginas,evento,id_pos)
(1,'2012','Amargo é a Biologia mal explicada','B3',235,'Rio Grande do Sul em Pesquisa',5)
(2,'2018','Em Ombros de Gigantes a Física caminha','A2',401,'Centro de Física',4)
(3,'2016','O pior cego é aquele que não vê matemática em tudo','A2',452,'IMPA-Eventos',3)
(4,'2014','Fusão Nuclear e benéficios para o mundo','B1',167,'Química Brasil',2)
(5,'2019','FEB - Heróis Nacionais ','A1',453,'História Brasil',1)




















