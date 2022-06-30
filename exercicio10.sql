/*
    Autor: Nathan Andrade

    Exercício 9:
    Recuperar o nome e a localização dos
    departamentos cuja localização inicia pela
    letra ‘S’. Apresentar os resultados ordenados
    crescentemente pelo nome do departamento.
*/
SELECT Dnome, Dlocal FROM Departamento d 
JOIN Localizacao_Dep ld ON d.Dnumero = ld.Dnumero 
WHERE ld.Dlocal LIKE 'S%' ORDER BY Dlocal;