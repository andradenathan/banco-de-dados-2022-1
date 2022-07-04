-- Busca utilizando OUTER JOIN
SELECT Pnome FROM Funcionario f 
LEFT OUTER JOIN Dependente d ON Fcpf = Cpf
WHERE Nome_dependente IS NULL

-- Busca utilizando conjuntos
(SELECT Pnome FROM Funcionario f 
LEFT OUTER JOIN Dependente d ON Fcpf = Cpf
WHERE Nome_dependente IS NOT NULL)
EXCEPT
(SELECT Pnome FROM Funcionario f 
LEFT OUTER JOIN Dependente d ON Fcpf = Cpf)

-- Busca utilizando subqueries
SELECT Pnome FROM Funcionario f 
WHERE Cpf NOT IN (SELECT Fcpf FROM Dependente d)