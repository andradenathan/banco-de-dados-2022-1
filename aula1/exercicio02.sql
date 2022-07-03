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