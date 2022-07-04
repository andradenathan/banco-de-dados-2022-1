SELECT Pnome FROM Funcionario f 
WHERE Dnr IN (SELECT Dnumero FROM Departamento d WHERE Dnr = 5)