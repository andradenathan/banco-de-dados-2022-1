SELECT Pnome FROM Funcionario f 
WHERE Cpf IN (
	SELECT Fcpf FROM Dependente d 
	WHERE Parentesco = 'Filho' OR Parentesco = 'Filha'
)