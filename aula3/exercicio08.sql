/*
    Autor: Nathan Andrade

    Exercício 8:
    Recuperar o nome e o endereço de todos os funcionários cujo o nome do
    departamento é Pesquisa.
*/
SELECT Pnome, Minicial, Unome, Endereco 
FROM Funcionario f 
INNER JOIN Departamento d ON Dnr = Dnumero 
WHERE Dnome = 'Pesquisa';