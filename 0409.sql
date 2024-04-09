-- ATIVIDADE 01 (SALARIOS)

SELECT MAX(SALÁRIO) AS MAIOR_SAL_TODOS
FROM SALARIOS
WHERE PROFISSÃO IN ('Ator', 'Músico');

-- ATIVIDADE 02 
SELECT MAX(SALÁRIO) AS MAIOR_SAL_TODOS
FROM SALARIOS
WHERE PROFISSÃO IN ('Ator', 'Músico', 'Professor');

-- ATIVIDADE 03
UPDATE alunos
SET sexo = 'M';

UPDATE alunos
SET sexo = 'F'
WHERE id IN (1, 2, 4, 5, 6, 7, 9, 11, 12, 13, 15, 17, 18, 19, 20, 22, 23, 24, 27, 28);

-- calcular média de todas as idades de todos os alunos

SELECT AVG(idade) AS media_idade FROM alunos;

-- somar todas as idades de todos os alunos

SELECT SUM(idade) AS soma_idades FROM alunos;

-- calcular média das idades das alunas e alunos separadamente

SELECT AVG(idade) AS media_idade
FROM alunos
WHERE sexo = 'F';

SELECT AVG(idade) AS media_idade
FROM alunos
WHERE sexo = 'M';

-- somar as idades das alunas e alunos separadamente

SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE sexo = 'F';

SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE sexo = 'M';

-- --ATIVIDADE_4 (ALUNOS)
-- calcular média dos alunos com 'b' no nome
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE nome LIKE '%b%' AND sexo = 'M';

-- somar idades dos alunos com 's' no nome
SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE nome LIKE '%s%';

-- somar idades dos alunos com 's' no nome
SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE nome LIKE '%s%';

-- calcular média das idades das alunas que começam com 'i'
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE nome LIKE 'I%' AND sexo = 'F';

-- calcular média das idades dos alunos que começam com 'g'
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE nome LIKE 'G%' AND sexo = 'M';

-- somar idades das alunas com 'a' no nome
SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE nome LIKE '%a%' AND sexo = 'F';

-- somar idades dos alunos com 'f' no nome
SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE nome LIKE '%f%' AND sexo = 'M';


-- --ATIVIDADE_5 (ALUNOS)
-- idade máxima dos alunos com 'c' no nome (exceto seu próprio nome)
SELECT MAX(idade) AS idade_maxima
FROM alunos
WHERE nome LIKE '%c%' AND sexo = 'M' AND nome != 'Hugo';

-- idade mínima dos alunos e alunas com 'f' no nome (exceto seu próprio nome)
SELECT MIN(idade) AS idade_minima
FROM alunos
WHERE nome LIKE '%f%' AND nome != 'Hugo';

-- idade máxima das alunas que começam com 'g' (exceto seu próprio nome)
SELECT MAX(idade) AS idade_maxima
FROM alunos
WHERE nome LIKE '%G%' AND nome != 'Hugo';

-- idade mínima dos alunos que começam com 'r' (exceto seu próprio nome)
SELECT MIN(idade) AS idade_minima
FROM alunos
WHERE nome LIKE '%R%' AND nome != 'Hugo';

-- soma das idades máxima e mínima dos alunos (exceto seu próprio nome)
SELECT (SELECT MAX(idade) FROM alunos WHERE nome != 'Hugo') +
       (SELECT MIN(idade) FROM alunos WHERE nome != 'Hugo') AS soma_idades;
       
-- selecionar alunas q tem 'a' no nome (exceto seu próprio nome)       
SELECT *
FROM alunos
WHERE nome LIKE '%a%' AND sexo = 'F' AND nome != 'Hugo'
LIMIT 25;

