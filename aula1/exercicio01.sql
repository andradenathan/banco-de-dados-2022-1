/*
    Criação de tabelas para a Aula 9 - 
    INTEGRIDADE REFERENCIAL, 
    CONSULTAS, INSERÇÕES, ALTERAÇÕES E REMOÇÕES

    Autor: Nathan Andrade
*/

CREATE TABLE departamento(
    id numeric(5,0) PRIMARY KEY,
    nome varchar(50) NOT NULL,
);

CREATE TABLE professor(
    id numeric(5,0) PRIMARY KEY,
    nome varchar(50) NOT NULL,
    cpf char(11) UNIQUE,
    salario numeric(8,2),
    depto_id numeric(5,0),  
    FOREIGN KEY (depto_id) REFERENCES departamento(id)
);

INSERT INTO departamento(nome) VALUES('DCC');
INSERT INTO professor(nome, cpf, salario, depto_id) VALUES('Paulo Aguiar', '00000000011', 40.000, 1);