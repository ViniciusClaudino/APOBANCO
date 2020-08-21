CREATE DATABASE banco;
CREATE TABLE tb_curso
(
	cod_curso INT NOT NULL AUTO_INCREMENT,
    nomecurso VARCHAR(60) NOT NULL,
    periodo INT NOT NULL,
    CONSTRAINT tb_curso_pk PRIMARY KEY (cod_curso)
);

CREATE TABLE tb_disciplina
(
	cod_disciplina INT NOT NULL AUTO_INCREMENT,
	nomedisciplina VARCHAR(60) NOT NULL,
    nomeprofessor VARCHAR(60) NOT NULL,
	CONSTRAINT tb_disciplina_pk PRIMARY KEY (cod_disciplina)
);

CREATE TABLE tb_professor
(
	cod_professor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    salario VARCHAR(60) NOT NULL,
    CONSTRAINT tb_professor PRIMARY KEY (cod_professor)
);

CREATE TABLE tb_aluno
(
	cod_aluno INT NOT NULL AUTO_INCREMENT,
    nomealuno VARCHAR(60) NOT NULL,
    CONSTRAINT tb_aluno_pk PRIMARY KEY (cod_aluno)
);

CREATE TABLE tb_periodo
(
	cod_periodo INT NOT NULL AUTO_INCREMENT,
    periodo VARCHAR(30) NOT NULL,
    nomealuno VARCHAR(60) NOT NULL,
    CONSTRAINT tb_periodo PRIMARY KEY (cod_periodo)
);

CREATE TABLE tb_nota
(
	cod_nota INT NOT NULL AUTO_INCREMENT,
    nota VARCHAR(30) NOT NULL,
    nomedisciplina VARCHAR(60) NOT NULL,
    nomecurso VARCHAR(60) NOT NULL,
    nomealuno VARCHAR(60) NOT NULL,
    periodo VARCHAR(60) NOT NULL,
    CONSTRAINT tb_nota PRIMARY KEY (cod_nota)
);

-- Ex1 -- 

SELECT count(nomealuno) FROM tb_periodo 
WHERE periodo = "8";

-- Ex2 --

SELECT P.nomealuno
FROM tb_periodo AS P
JOIN tb_curso AS C ON C.periodo = "8";

-- Ex 3 -- 

SELECT P.nome As MaiorSalario, COUNT(C.nomeprofessor) AS MaiorQntDeAulas
FROM tb_professor AS P,
tb_disciplina AS C
WHERE salario = (SELECT MAX(salario) FROM tb_professor);

-- Ex 4 -- 

-- nao consegui, tem que agrupar os alunos pelo nome, filtrar pelo curso e depois fazer uma media com todas as notas de cada
-- disciplina e depois aplicar a condicao de exibir somente os alunos formados. MUITO HARD --

    
    
    
    