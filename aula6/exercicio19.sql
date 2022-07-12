/**
	Autor: Nathan Andrade

	Recuperar o nome de cada funcionário
	que tem pelo menos um dependente que
	seja do parentesco filho(a).
**/

SELECT Pnome FROM Funcionario f 
WHERE Cpf IN (
	SELECT Fcpf FROM Dependente d 
	WHERE Parentesco = 'Filho' OR Parentesco = 'Filha'
)