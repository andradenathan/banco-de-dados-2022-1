SELECT Pnome, Salario  FROM Funcionario f 
WHERE Salario > ALL (SELECT Salario FROM Funcionario WHERE Dnr = 5)