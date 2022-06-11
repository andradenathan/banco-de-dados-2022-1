/**
 * Autor: Nathan Andrade
 */
 
SELECT Projnumero, Dnum, Dnr, Unome, Endereco, Datanasc FROM Projeto 
WHERE Projeto.projlocal = 'Maua' 
JOIN Departamento ON Derpartamento.Dnumero = Projeto.Dnum
JOIN Funcionario ON Funcionario.Cpf = Departamento.Cpf_gerente; 