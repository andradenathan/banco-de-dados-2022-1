(SELECT Projnumero, Unome FROM Funcionario f
INNER JOIN Departamento d ON Dnr = Dnumero
INNER JOIN Projeto p ON Dnum = Dnumero
WHERE Cpf_gerente = Cpf AND Unome = 'Silva')
UNION 
(SELECT Projnumero, Unome FROM Funcionario f
INNER JOIN Departamento d ON Dnr = Dnumero
INNER JOIN Projeto p ON Dnum = Dnumero
WHERE Cpf_gerente <> Cpf AND Unome = 'Silva');