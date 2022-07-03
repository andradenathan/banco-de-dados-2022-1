/*
    Autor: Nathan Andrade

    Exercício 9:
    Para cada projeto localizado em “Maua”, liste o
    número do projeto, o número do departamento
    que o controla e o último nome, endereço e data
    de nascimento do gerente do departamento.
*/
SELECT Projnumero, Dnum, Unome, Endereco
FROM Projeto p
INNER JOIN Departamento d ON p.Dnum = d.Dnumero
INNER JOIN Funcionario f ON d.Cpf_gerente = f.Cpf
WHERE Projlocal = 'Maua';