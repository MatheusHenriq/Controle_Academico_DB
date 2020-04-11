INSERT INTO extensao(id,duracao,descricao,codigo_atividade,data_comeco)
VALUES (1,'10/02/2021','iniciação científica em Física',1,'10/01/2020');
INSERT INTO extensao(id,duracao,descricao,codigo_atividade,data_comeco)
VALUES (2,'11/02/2021','iniciação científica em Biologia',2,'21/01/2020');
INSERT INTO extensao(id,duracao,descricao,codigo_atividade,data_comeco)
VALUES (3,'12/02/2021','iniciação científica em Quimica',3,'20/01/2020');
INSERT INTO extensao(id,duracao,descricao,codigo_atividade,data_comeco)
VALUES (4,'13/02/2021','iniciação científica em Historia',4,'12/01/2020');
INSERT INTO extensao(id,duracao,descricao,codigo_atividade,data_comeco)
VALUES (5,'14/02/2021','iniciação científica em Matemática',5,'17/01/2020');

INSERT INTO departamento (id,descricao,sigla) 
VALUES (1,'departamento principal','DP');
INSERT INTO departamento (id,descricao,sigla) 
VALUES (2,'departamento secundário','DS');
INSERT INTO departamento (id,descricao,sigla) 
VALUES (3,'departamento terciário','DT');
INSERT INTO departamento (id,descricao,sigla) 
VALUES (4,'departamento quaternário','DQA');
INSERT INTO departamento (id,descricao,sigla) 
VALUES (5,'departamento quinário','DQI');

INSERT INTO aluno(matricula,telefone,email,nome,cpf)
VALUES (1,'88887777','marcelinho@gmail.com','Marcelo Alves Farias','11111111111');
INSERT INTO aluno(matricula,telefone,email,nome,cpf)
VALUES (2,'85387337','ricardinho@gmail.com','Ricardo Macarenas Brito','12121212121');
INSERT INTO aluno(matricula,telefone,email,nome,cpf)
VALUES (3,'86687667','italo@gmail.com','Italo Pereira Silva','11313131313');
INSERT INTO aluno(matricula,telefone,email,nome,cpf)
VALUES (4,'84847447','arruda@gmail.com','Marcelo Arruda da Silva','14141414141');
INSERT INTO aluno(matricula,telefone,email,nome,cpf)
VALUES (5,'81817117','antonio@gmail.com','Antonio Maria Santana','16161616161');

INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (1,'TCC 1',60,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (2,'TCC 2',90,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (3,'Introdução ao Curso',90,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (4,'Estatística',60,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (5,'Metodologia Científica',60,3);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (6,'Cálculo 3',60,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (7,'História Avançada do Brasil',90,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (8,'Botânica',90,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (9,'Química Orgânica Avançada',60,2);
INSERT INTO Disciplinas(id,nome,C_H,numero_creditos)
VALUES (10,'Corpos Não Orientáveis',60,3);

INSERT INTO turmas(id,nome)
VALUES (1,'1A');
INSERT INTO turmas(id,nome)
VALUES (2,'2A');
INSERT INTO turmas(id,nome)
VALUES (3,'3A');
INSERT INTO turmas(id,nome)
VALUES (4,'4A');
INSERT INTO turmas(id,nome)
VALUES (5,'5A');

INSERT INTO pre_requisitos(id,especificacao)
VALUES (1,'Pontualidade');
INSERT INTO pre_requisitos(id,especificacao)
VALUES (2,'Menos de 70% de faltas');
INSERT INTO pre_requisitos(id,especificacao)
VALUES (3,'Nunca ter reprovado alguma matéria');
INSERT INTO pre_requisitos(id,especificacao)
VALUES (4,'Média 7 ou superior em todas as matérias');
INSERT INTO pre_requisitos(id,especificacao)
VALUES (5,'3 artigos submetidos');



INSERT INTO matricula(id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
VALUES (1,1,1,10.00,7.50,08.75);
INSERT INTO matricula(id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
VALUES (2,3,2,8.00,8.50,08.00);
INSERT INTO matricula(id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
VALUES (3,4,5,7.00,6.50,08.50);
INSERT INTO matricula(id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
VALUES (4,2,3,10.00,9.50,07.00);
INSERT INTO matricula(id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
VALUES (5,5,4,6.00,7.50,07.75);

INSERT INTO disciplinas_turma(id,id_turma,id_disciplina,periodo_dia)
VALUES (1,1,1,'Matutino');
INSERT INTO disciplinas_turma(id,id_turma,id_disciplina,periodo_dia)
VALUES (2,2,2,'Vespertino');
INSERT INTO disciplinas_turma(id,id_turma,id_disciplina,periodo_dia)
VALUES (3,3,3,'Matutino');
INSERT INTO disciplinas_turma(id,id_turma,id_disciplina,periodo_dia)
VALUES (4,4,4,'Noturno');
INSERT INTO disciplinas_turma(id,id_turma,id_disciplina,periodo_dia)
VALUES (5,5,5,'Matutino');

INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (1,1,1);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (2,2,3);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (3,3,2);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (4,4,5);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (5,5,4);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (6,3,6);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (7,1,7);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (8,4,8);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (9,5,9);
INSERT INTO pre_requisito_disciplina(id,id_pre,id_disciplina)
VALUES (10,2,10); 

INSERT INTO graduacao(id,nome)
VALUES (1,'Graduação em Historia');
INSERT INTO graduacao(id,nome)
VALUES (2,'Graduação em Quimica');
INSERT INTO graduacao(id,nome)
VALUES (3,'Graduação em Matematica');
INSERT INTO graduacao(id,nome)
VALUES (4,'Graduação em Física');
INSERT INTO graduacao(id,nome)
VALUES (5,'Graduação em Biologia');

INSERT INTO pos_graduacao(id,nome)
VALUES (1,'Pós-Graduação em Historia');
INSERT INTO pos_graduacao(id,nome)
VALUES (2,'Pós-Graduação em Quimica')	;
INSERT INTO pos_graduacao(id,nome)
VALUES (3,'Pós-Graduação em Matematica');
INSERT INTO pos_graduacao(id,nome)
VALUES (4,'Pós-Graduação em Física');
INSERT INTO pos_graduacao(id,nome)
VALUES (5,'Pós-Graduação em Biologia');


INSERT INTO publicacoes(id,ano,titulo,editora,qualificação,paginas,evento,id_pos)
VALUES (1,'2012','Amargo é a Biologia mal explicada','Editora 1','B3',235,'Rio Grande do Sul em Pesquisa',5);
INSERT INTO publicacoes(id,ano,titulo,editora,qualificação,paginas,evento,id_pos)
VALUES (2,'2018','Em Ombros de Gigantes a Física caminha','Editora 2','A2',401,'Centro de Física',4);
INSERT INTO publicacoes(id,ano,titulo,editora,qualificação,paginas,evento,id_pos)
VALUES (3,'2016','O pior cego é aquele que não vê matemática em tudo','Editora 3','A2',452,'IMPA-Eventos',3);
INSERT INTO publicacoes(id,ano,titulo,editora,qualificação,paginas,evento,id_pos)
VALUES (4,'2014','Fusão Nuclear e benéficios para o mundo','Editora 4','B1',167,'Química Brasil',2);
INSERT INTO publicacoes(id,ano,titulo,editora,qualificação,paginas,evento,id_pos)
VALUES (5,'2019','FEB - Heróis Nacionais ','Editora 5','A1',453,'História Brasil',1);

INSERT INTO pos_graduacao_disciplina(id,id_pos,id_disciplina,periodo_dia)
VALUES (1,2,9,'Matutino');
INSERT INTO pos_graduacao_disciplina(id,id_pos,id_disciplina,periodo_dia)
VALUES (2,1,7,'Vespertino');
INSERT INTO pos_graduacao_disciplina(id,id_pos,id_disciplina,periodo_dia)
VALUES (3,3,10,'Matutino');
INSERT INTO pos_graduacao_disciplina(id,id_pos,id_disciplina,periodo_dia)
VALUES (4,4,6,'Noturno');
INSERT INTO pos_graduacao_disciplina(id,id_pos,id_disciplina,periodo_dia)
VALUES (5,5,8,'Matutino');

INSERT INTO graduacao_disciplina(id,id_graduacao,id_disciplina,periodo_dia)
VALUES (1,1,2,'Vespertino');
INSERT INTO graduacao_disciplina(id,id_graduacao,id_disciplina,periodo_dia)
VALUES (2,2,1,'Matutino');
INSERT INTO graduacao_disciplina(id,id_graduacao,id_disciplina,periodo_dia)
VALUES (3,3,4,'Vespertino');
INSERT INTO graduacao_disciplina(id,id_graduacao,id_disciplina,periodo_dia)
VALUES (4,4,5,'Matutino');
INSERT INTO graduacao_disciplina(id,id_graduacao,id_disciplina,periodo_dia)
VALUES (5,5,3,'Vespertino');


INSERT INTO funcionario(matricula,cpf,sexo,nome,salario,telefone,email)
VALUES (1,'22222222222','M','Erisberto Brito Cunha',3000.000,'56430981','Erisberto@gmail.com');
INSERT INTO funcionario(matricula,cpf,sexo,nome,salario,telefone,email)
VALUES (2,'21212122121','M','Ramon Seixas Galeno',3100.000,'86430081','Ramon@gmail.com');
INSERT INTO funcionario(matricula,cpf,sexo,nome,salario,telefone,email)
VALUES (3,'22242322322','F','Esmeralda Rita de Melo',3200.000,'66430001','Esmeralda@gmail.com');
INSERT INTO funcionario(matricula,cpf,sexo,nome,salario,telefone,email)
VALUES (4,'28852212122','F','Renata Portugal de Silva',3300.000,'96400989','Renata @gmail.com');
INSERT INTO funcionario(matricula,cpf,sexo,nome,salario,telefone,email)
VALUES (5,'25552229992','M','Ricartti del Monte',3400.000,'64309000','Ricartti@gmail.com');

INSERT INTO professores(id,id_func,id_pos,id_graduacao,id_dep,id_extensao)
VALUES (1,4,5,4,1,1);
INSERT INTO professores(id,id_func,id_pos,id_graduacao,id_dep,id_extensao)
VALUES (2,3,1,2,2,2);
INSERT INTO professores(id,id_func,id_pos,id_graduacao,id_dep,id_extensao)
VALUES (3,5,3,5,3,3);
INSERT INTO professores(id,id_func,id_pos,id_graduacao,id_dep,id_extensao)
VALUES (4,2,2,3,4,4);
INSERT INTO professores(id,id_func,id_pos,id_graduacao,id_dep,id_extensao)
VALUES (5,1,4,1,5,5);

SELECT funcionario.nome,publicacoes.titulo FROM funcionario
JOIN professores ON professores.id_func = funcionario.matricula
JOIN pos_graduacao ON pos_graduacao.id = professores.id_pos
JOIN publicacoes ON publicacoes.id_pos = pos_graduacao.id
ORDER BY funcionario.salario DESC;

SELECT funcionario.nome,disciplinas.nome FROM funcionario
JOIN professores ON professores.id_func = funcionario.matricula
JOIN pos_graduacao ON pos_graduacao.id = professores.id_pos
JOIN pos_graduacao_disciplina ON pos_graduacao_disciplina.id_pos =  pos_graduacao.id
JOIN disciplinas ON disciplinas.id = pos_graduacao_disciplina.id_disciplina;

SELECT funcionario.nome,disciplinas.nome FROM funcionario
JOIN professores ON professores.id_func = funcionario.matricula
JOIN graduacao ON graduacao.id = professores.id_graduacao
JOIN graduacao_disciplina ON graduacao_disciplina.id_graduacao =  graduacao.id
JOIN disciplinas ON disciplinas.id = graduacao_disciplina.id_disciplina;

SELECT disciplinas.nome,pre_requisitos.especificacao FROM pre_requisitos
JOIN pre_requisito_disciplina AS p_r_d ON p_r_d.id_pre = pre_requisitos.id
JOIN disciplinas ON disciplinas.id = p_r_d.id_disciplina;

--EXEMPLO DE CHAMADA DA FUNÇÃO
SELECT alunos_add(16,'Mariana Ramos Veras','78621230','09172638172','MarianinhaVeras@gmail.com');

--ACESSANDO A VIEW
SELECT nome,graduacao,pos_graduacao,publicacoes,extensao,departamento FROM professores_referencia;
SELECT nome,disciplinas FROM aluno_disciplinas;

--ACESSANDO VIEWS E FUNÇÕES
SELECT nome,salario,funcionario_graduacao(salario) FROM prof_salario;

--INSERINDO NA TABELA ALUNO E MATRICULA
INSERT INTO aluno(matricula,nome,telefone,cpf,email) 
VALUES (6,'Joana Maria das Chagas','85867001','10983129401','joaninha@gmail.com');

INSERT INTO matricula(id,matricula_aluno,id_disciplina,nota1,nota2,nota3)
VALUES (11,6,2,10.00,7.50,8.25);

--CONSULTANDO A TABELA PARA VER O FUNCIONAMENTO DOS TRIGGERS
SELECT id,data_alteracao,operacao_realizada FROM notas_alteracao;




