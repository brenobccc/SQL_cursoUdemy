
/*
	Traga os funcionarios que trabalhem no departamento de filmes
	OU no departamento de roupas.
	
	O gestor de marketing pediu a lista das funcionarias que trabalhem no departamento de filmes ou no departamento lar,
	Ele necessita enviar um email para as colaboradores desses dois setores.
	
	Como estamos trabalhando com AND, colocamos o 
	departamneto primeiro, pois ele irá checar as segunda 
	condição um numero menor de vezes.
		
		Traga os funcionarios do sexo masculino ou
		funcionarios que trabalhem no Jardim.

*/

CREATE DATABASE EXERCICIO;

USE EXERCICIO;

CREATE TABLE FUNCIONARIOS(
	idFuncionario integer,
	nome varchar(100),
	email varchar(200),
	sexo varchar(10),
	departamento varchar(100),
	admissao varchar(10),
	salario integer,
	cargo varchar(100),
	idRegiao int
);


/*Traga os funcionarios que trabalhem no departamento de filmes
	OU no departamento de roupas.*/
	
SELECT COUNT(*) FROM FUNCIONARIOS WHERE DEPARTAMENTO LIKE 'ROUPAS';	

SELECT * FROM FUNCIONARIOS WHERE DEPARTAMENTO LIKE 'ROUPAS' OR DEPARTAMENTO LIKE 'FILMES';

/*O gestor de marketing pediu a lista das funcionarias que trabalhem 
no departamento de filmes ou no departamento lar,
Ele necessita enviar um email para as colaboradores desses dois setores.*/

-- Feminino 491 ocorrencias
SELECT COUNT(*), SEXO 
FROM FUNCIONARIOS GROUP BY SEXO;
-- Lar: 52, Filmes: 21.
SELECT COUNT(*), departamento 
FROM FUNCIONARIOS GROUP BY departamento;

SELECT nome, departamento, email from FUNCIONARIOS where departamento like 'filmes' or departamento like 'lar';


	/*Traga os funcionarios do sexo masculino ou
	funcionarios que trabalhem no Jardim.*/
	
SELECT * from FUNCIONARIOS where sexo like 'masculino' or departamento like 'jardim' ;