/**
 * Autor: Nathan Andrade
 */
 
SELECT Projnumero, Dnum, Dnr, Unome, Endereco, Datanasc FROM Projeto 
WHERE Projeto.projlocal = 'Maua' 
JOIN Departamento ON Derpartamento.Dnumero = Projeto.Dnum
JOIN Funcionario ON Funcionario.Cpf = Departamento.Cpf_gerente; 

/*
Utilizando o RelaX para solução acima com CROSS JOIN
*/
πProjnumero, Dnum, Unome 
σProjlocal = 'Maua' ∧ Dnum = Dnumero ∧ Cpf_gerente = Cpf 
(Projeto ⨯ Departamento ⨯ Funcionario)