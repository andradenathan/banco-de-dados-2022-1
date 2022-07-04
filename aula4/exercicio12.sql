-- Busca utilizando OUTER JOIN
SELECT Pnome, Nome_dependente FROM Funcionario f
INNER JOIN Departamento d ON Dnr = Dnumero
RIGHT OUTER JOIN Dependente d2 ON Fcpf = Cpf
WHERE Cpf_gerente = Cpf AND (SELECT COUNT(Fcpf)) >= 1   

-- Busca utilizando operações de conjuntos
-- Não funciona no MySQL
SELECT Pnome FROM Funcionario f
INNER JOIN Departamento d ON Dnumero = Dnr
RIGHT OUTER JOIN Dependente d2 ON Fcpf = Cpf
WHERE (SELECT COUNT(Fcpf)) >= 1  
EXCEPT 
SELECT Pnome FROM Funcionario f
INNER JOIN Departamento d ON Dnumero = Dnr
RIGHT OUTER JOIN Dependente d2 ON Fcpf = Cpf
WHERE Cpf_gerente <> Cpf AND (SELECT COUNT(Fcpf)) >= 1  