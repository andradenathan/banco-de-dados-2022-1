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

INSERT INTO departamento(nome) VALUES('Departamento de Ciência da Computação');
INSERT INTO professor(nome, cpf, salario, depto_id) VALUES('Paulo Aguiar', '111', '10.000', 1);


/*
    Exercício 01
*/

CREATE TABLE funcionario(
    pnome VARCHAR(15) NOT NULL, 
    cpf CHAR(11) NOT NULL, 
    cpf_supervisor CHAR(11), 
    dnr INT, 
    PRIMARY KEY (cpf), 
    CONSTRAINT func_sup FOREIGN KEY (cpf_supervisor) REFERENCES funcionario(cpf) ON DELETE SET NULL
);

CREATE TABLE departamento(
    dnome VARCHAR(15) NOT NULL, 
    dnumero INT NOT NULL, 
    cpf_gerente CHAR(11), 
    PRIMARY KEY (dnumero), 
    UNIQUE (dnome),
    CONSTRAINT depto_ger FOREIGN KEY (cpf_gerente) REFERENCES funcionario(cpf)
);

ALTER TABLE funcionario ADD CONSTRAINT func_depto FOREIGN KEY (dnr) REFERENCES departamento(dnumero);

CREATE TABLE dependente(
    fcpf CHAR(11) NOT NULL, 
    nome_dependente VARCHAR(15) NOT NULL, 
    PRIMARY KEY (fcpf, nome_dependente), 
    CONSTRAINT dep_func FOREIGN KEY (fcpf) REFERENCES funcionario(cpf) ON DELETE CASCADE
);


INSERT INTO departamento(dnome, dnumero) VALUES('DCC', 15);
INSERT INTO funcionario(pnome, cpf, dnr) VALUES('João', '67924331018', 15);
INSERT INTO funcionario(pnome, cpf, dnr, cpf_supervisor) VALUES('Nathan', '94708554001', 15, '67924331018');
INSERT INTO dependente(fcpf, nome_dependente) VALUES('67924331018', 'Pedro');

DELETE FROM departamento WHERE dnumero = 15; /* Não é possível pois existem funcionários no departamento. */
DELETE FROM funcionario WHERE cpf = '67924331018'; 
/* 
    O usuário é excluído e como existe a R.I 'on delete set null', o cpf_supervisor de Nathan 
    passa a ficar null.
*/
UPDATE departamento SET dnumero = 20 WHERE dnome = 'DCC';  
/* Não é possível pois há um bloqueio na foreign key que relaciona departamento com funcionário. */

ALTER TABLE funcionario DROP FOREIGN KEY(dnr);

ALTER TABLE funcionario 
ADD CONSTRAINT func_depto 
FOREIGN KEY (dnr) 
REFERENCES departamento(dnumero)
ON UPDATE cascade
ON DELETE cascade;