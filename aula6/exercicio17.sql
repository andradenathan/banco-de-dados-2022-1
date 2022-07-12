/*
    Autor: Nathan Andrade

    Descobrir os nomes dos funcionários que
    trabalham em todos os projetos controlados
    pelo departamento número 5.
*/

SELECT Pnome FROM Funcionario f 
WHERE Dnr IN (SELECT Dnumero FROM Departamento d WHERE Dnr = 5)