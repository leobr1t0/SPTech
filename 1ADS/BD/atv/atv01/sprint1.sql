CREATE DATABASE sprint1;
USE sprint1;

-- EX 1 --
CREATE TABLE Atleta(
	idAtleta INT NOT NULL PRIMARY KEY auto_increment,
    nome VARCHAR(40) NOT NULL,
    modalidade VARCHAR(40) NOT NULL,
    qtdMedalha INT    
);

INSERT INTO Atleta(nome, modalidade, qtdMedalha) VALUES 
	('Marcelo','Bilhar',3),
	('Leonardo','Ping-Pong',20),
	('Will','Ping-Pong',3),
	('Luan','Natação',10),
	('Isabela','Leventamento de peso',0),
	('Pedro','Natação',5),
	('Jeferson','Levantamento de peso',2),
	('Marcos','Bilhar',2),
	('Felipy','Ginástica artística',0),
	('Yago','Ginástica artística',10),
	('Matheus','Futebol',18),
	('Borges','Futebol',0);
    
-- Exibir todos os dados da tabela.
SELECT * FROM atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome, qtdMedalha FROM atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT * FROM atleta
WHERE modalidade = "Futebol";

-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM atleta
ORDER BY modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM atleta
ORDER BY qtdMedalha DESC;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM atleta
WHERE nome LIKE "%s%";

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM atleta 
WHERE nome LIKE "m%";

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM atleta 
WHERE nome LIKE "%o";

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM atleta 
WHERE nome LIKE "%r_";

-- Eliminar a tabela.
DROP TABLE atleta;

-- Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;
UPDATE Atleta SET qtdMedalha = 2 WHERE idAtleta = 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
UPDATE Atleta SET qtdMedalha = 4 WHERE idAtleta IN (2, 3);
UPDATE Atleta SET qtdMedalha = 5 WHERE idAtleta = 2 OR idAtleta = 3;
UPDATE Atleta SET qtdMedalha = 6 WHERE idAtleta BETWEEN 2 AND 3;

-- Atualizar o nome do atleta com o id=4;
UPDATE Atleta SET nome = 'Luan Viana' WHERE idAtleta = 4; 

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
ALTER TABLE Atleta ADD COLUMN dtNasc DATE;
DESC ATleta;

-- Atualizar a data de nascimento de todos os atletas;
UPDATE Atleta SET dtNasc = '2000-01-01' WHERE idAtleta = 1;
UPDATE Atleta SET dtNasc = '2000-02-02' WHERE idAtleta = 2;
UPDATE Atleta SET dtNasc = '2000-03-03' WHERE idAtleta = 3;
UPDATE Atleta SET dtNasc = '2000-04-04' WHERE idAtleta = 4;
UPDATE Atleta SET dtNasc = '2000-05-05' WHERE idAtleta = 5;
UPDATE Atleta SET dtNasc = '2000-06-06' WHERE idAtleta = 6;
UPDATE Atleta SET dtNasc = '2000-07-07' WHERE idAtleta = 7;
UPDATE Atleta SET dtNasc = '2000-08-08' WHERE idAtleta = 8;
UPDATE Atleta SET dtNasc = '2000-09-09' WHERE idAtleta = 9;
UPDATE Atleta SET dtNasc = '2000-10-10' WHERE idAtleta = 10;
UPDATE Atleta SET dtNasc = '2000-11-11' WHERE idAtleta = 11;
UPDATE Atleta SET dtNasc = '2000-12-12' WHERE idAtleta = 12;
UPDATE Atleta SET dtNasc = '2000-01-01' WHERE idAtleta BETWEEN 1 AND 12;

SELECT * FROM Atleta;

-- Excluir o atleta com o id=5;
DELETE FROM Atleta WHERE idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação;
SELECT nome FROM Atleta WHERE modalidade NOT LIKE 'Natação';
SELECT nome FROM Atleta WHERE modalidade <> 'Natacao';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
SELECT * FROM Atleta WHERE qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
ALTER TABLE Atleta MODIFY modalidade VARCHAR(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
DESC Atleta;

-- Limpar os dados da tabela; 
TRUNCATE TABLE Atleta;

-- EX 2 --
CREATE TABLE Musica (
	idMusica INT PRIMARY KEY auto_increment,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica (titulo, artista, genero) VALUES
	('Dias de luta, dias de glória','Charlie Brown Jr.', 'Pop'),
	('Estilo Cachorro','Racionais Mc','Rap'),
	('Gods Plan','Drake', 'Rap'),
	('Mina do Condomínio','Seu Jorge', 'Pop'),
	('Thunder','Imagine Dragons','Indie'),
	('Paradise', 'Coldplay', 'Indie'),
	('Blinding Lights','The Weeknd','R&G Alternativo'),
	('Save Your Tears','The Weeknd','R&G Alternativo'),
	('Locked Out of Heaven','Bruno Mars','Pop'),
	('Sunflower','Post Malone','Rap'),
	('Closer','The Chainsmokers','Eletronica'),
	('Hear Me Now','Alok','Eletronica'),
	('Centuries','Fall Out Boy','Pop Punk'),
	('Uma Thurman','Fall Out Boy','Pop Punk'),
	('Worlds Smallest Violin','AJR','Indie');
    
-- Exibir todos os dados da tabela.
SELECT * FROM musica;

-- Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM musica;

-- Exibir apenas os dados das músicas de um determinado gênero.
SELECT * FROM musica
WHERE genero = 'rap';

-- Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM musica
WHERE artista = 'The Weeknd';

-- Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM musica
ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM musica
ORDER BY artista DESC;

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM musica
WHERE titulo LIKE 'b%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM musica
WHERE artista LIKE '%e';

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM musica
WHERE genero LIKE '_o%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM musica
WHERE titulo LIKE '%a_';

-- Elimine a tabela.
DROP TABLE musica;

-- Exibir todos os dados da tabela
SELECT * FROM Musica;

-- Adicionar o campo curtidas do tipo int na tabela;
ALTER TABLE musica ADD COLUMN curtidas INT;
DESC Musica;

-- Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE Musica SET curtidas = 1 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 2 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 3 WHERE idMusica = 3;
UPDATE Musica SET curtidas = 4 WHERE idMusica = 4;
UPDATE Musica SET curtidas = 5 WHERE idMusica = 5;
UPDATE Musica SET curtidas = 6 WHERE idMusica = 6;
UPDATE Musica SET curtidas = 7 WHERE idMusica = 7;
UPDATE Musica SET curtidas = 8 WHERE idMusica = 8;
UPDATE Musica SET curtidas = 19 WHERE idMusica = 9;
UPDATE Musica SET curtidas = 10 WHERE idMusica = 10;
UPDATE Musica SET curtidas = 11 WHERE idMusica = 11;
UPDATE Musica SET curtidas = 12 WHERE idMusica = 12;
UPDATE Musica SET curtidas = 13 WHERE idMusica = 13;
UPDATE Musica SET curtidas = 14 WHERE idMusica = 14;
UPDATE Musica SET curtidas = 15 WHERE idMusica = 15;

-- Modificar o campo artista do tamanho 40 para o tamanho 80
ALTER TABLE Musica MODIFY artista VARCHAR(80);
DESC Musica;

-- Atualizar a quantidade de curtidas da música com id=1;
UPDATE musica SET curtidas = 1000000 WHERE idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE musica SET curtidas = 200 WHERE idMusica BETWEEN 2 AND 3;

-- Atualizar o nome da música com o id=5;
UPDATE musica SET titulo = 'Bad Liar' WHERE idMusica = 5;

-- Excluir a música com o id=4;
DELETE FROM musica WHERE idMusica = 4;SELECT * FROM musica;

-- Exibir as músicas onde o gênero é diferente de funk;
SELECT * FROM musica WHERE genero <> 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
SELECT * FROM musica WHERE curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;
DESC musica;

-- Limpar os dados da tabela;
TRUNCATE TABLE musica;

-- EX 3 --
CREATE TABLE Filme(
	idFilme INT PRIMARY KEY auto_increment,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO Filme (titulo, genero, diretor) VALUES
	('Harry Potter e a Pedra Filosofal','Fantasia','David Heyman'),
	('Harry Potter e a Câmara Secreta','Fantasia','David Heyman'),
	('Piratas do Caribe: A Maldição do Pérola Negra','Ação','Gore Verbinski'),
	('Piratas do Caribe: O Baú da Morte','Ação','Gore Verbinski'),
	('Maze Runner: Correr ou Morrer','Ficção','Wes Ball'),
	('Maze Runner: Prova de Fogo','Ficção','Wes Ball'),
	('Meu Malvado Favorito','Infantil','Chris Renaud'),
	('Meu Malvado Favorito 2','Infantil','Chris Renaud'),
	('Gente Grande','Comédia','Dennis Dugan'),
	('Gente Grande 2','Comédia','Dennis Dugan'),
	('It - A Coisa','Terror','Andy Muschietti'),
	('It – Capítulo Dois','Terror','Andy Muschietti');
    
-- Exibir todos os dados da tabela.
SELECT * FROM filme;

-- Exibir apenas os títulos e os diretores dos filmes.
SELECT titulo, diretor FROM filme;

-- Exibir apenas os dados dos filmes de um determinado gênero.
SELECT * FROM filme 
WHERE genero = 'Fantasia';

-- Exibir apenas os dados dos filmes de um determinado diretor.
SELECT * FROM filme 
WHERE diretor = 'Wes Ball';

-- Exibir os dados da tabela ordenados pelo título do filme.
SELECT * FROM filme
ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
SELECT * FROM filme
ORDER BY diretor DESC;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
SELECT * FROM filme 
WHERE titulo LIKE 'g%';

-- Exibir os dados da tabela, dos filmes cujo artista termine com uma determinada letra.
SELECT * FROM filme
WHERE diretor LIKE '%i';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM filme 
WHERE genero LIKE '_i%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM filme
WHERE genero LIKE '%i_';

-- Elimine a tabela
DROP TABLE filme;

-- Exibir todos os dados da tabela.
SELECT * FROM Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE Filme ADD COLUMN protagonista VARCHAR(50);
DESC Filme;

-- Atualizar o campo protagonista de todas os filmes inseridos;
UPDATE Filme SET protagonista = "Harry Potter" WHERE idFilme = 1;
UPDATE Filme SET protagonista = "Harry Potter" WHERE idFilme = 2;
UPDATE Filme SET protagonista = "Jack Sparrow" WHERE idFilme = 3;
UPDATE Filme SET protagonista = "Jack Sparrow" WHERE idFilme = 4;
UPDATE Filme SET protagonista = "Thomas" WHERE idFilme = 5;
UPDATE Filme SET protagonista = "Thomas" WHERE idFilme = 6;
UPDATE Filme SET protagonista = "Gru" WHERE idFilme = 7;
UPDATE Filme SET protagonista = "Gru" WHERE idFilme = 8;
UPDATE Filme SET protagonista = "Lenny Feder" WHERE idFilme = 9;
UPDATE Filme SET protagonista = "Lenny Feder" WHERE idFilme = 10;
UPDATE Filme SET protagonista = "Bill Denbrough" WHERE idFilme = 11;
UPDATE Filme SET protagonista = "Bill Denbrough" WHERE idFilme = 12;

-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
ALTER TABLE Filme MODIFY diretor VARCHAR(150);
DESC filme;

-- Atualizar o diretor do filme com id=5;
UPDATE Filme SET diretor = 'Abby Sorvente' WHERE idFilme = 5;
 
-- Atualizar o diretor dos filmes com id=2 e com o id=7;
UPDATE Filme SET diretor = 'Felipy Roma' WHERE idFilme IN (2,7);

-- Atualizar o título do filme com o id=6;
UPDATE Filme SET titulo = 'MR: Prova de Fogo' WHERE idFilme = 6;

-- Excluir o filme com o id=3;
DELETE FROM Filme WHERE idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama;
SELECT titulo FROM Filme WHERE titulo NOT LIKE 'drama';
SELECT titulo FROM Filme WHERE titulo <> 'drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT titulo FROM Filme WHERE titulo LIKE 'suspense';
SELECT titulo FROM Filme WHERE titulo = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
DESC Filme;

-- Limpar os dados da tabela; 
TRUNCATE TABLE Filme;

-- EX 4 --
CREATE TABLE professor(
	idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO professor(nome, especialidade, dtNasc) VALUES
	('Rogério','Banco de dados','1995-10-05'),
    ('Jailson','Algoritmo','1990-09-19'),
    ('Adeilson','Algoritmo','1990-5-25'),
    ('Marcelo','Banco de dados','1998-09-05'),
    ('Will','Programação Web','1996-03-31'),
    ('Leonardo','Programação Web','1995-07-10'),
    ('Luan','Arq Comp','1994-07-01'),
    ('Jefferson','Arq Comp','1990-12-05'),
    ('Pedro','Tecnologia da informação','1992-04-03'),
    ('Augusto','Tecnologia da informação','1993-12-31'),
    ('Rodrigo','Socioemocional','1994-06-10'),
    ('José','Pesquisa e inovação','1992-10-09'),
    ('Tulio','Pesquisa e inovação','1998-09-10'),
    ('Felipe','Socioemocional','1996-11-05');
    
-- Exibir todos os dados da tabela.
SELECT * FROM professor;

-- Exibir apenas as especialidades dos professores.
SELECT especialidade FROM professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM professor
WHERE especialidade = 'Banco de Dados';

-- Exibir os dados da tabela ordenados pelo nome do professor.
SELECT * FROM professor
ORDER BY nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
SELECT * FROM professor
ORDER BY dtNasc DESC;

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
SELECT * FROM professor 
WHERE nome LIKE 'J%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
SELECT * FROM professor
WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM professor
WHERE nome LIKE '_o%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM professor
WHERE nome LIKE '%o_';

-- Elimine a tabela.
DROP TABLE professor;

-- Exibir todos os dados da tabela.
SELECT * FROM Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’,‘assistente’ ou ‘titular’;
ALTER TABLE professor ADD COLUMN funcao VARCHAR(50), 
	ADD CONSTRAINT chkFuncao CHECK (funcao IN('Monitor','Assistente', 'Titular'));
DESC professor;

-- Atualizar os professores inseridos e suas respectivas funções;
UPDATE professor SET funcao = 'Monitor' WHERE idProfessor = 1;
UPDATE professor SET funcao = 'Assistente' WHERE idProfessor = 2;
UPDATE professor SET funcao = 'Titular' WHERE idProfessor = 3;
UPDATE professor SET funcao = 'Monitor' WHERE idProfessor = 4;
UPDATE professor SET funcao = 'Assistente' WHERE idProfessor = 5;
UPDATE professor SET funcao = 'Titular' WHERE idProfessor = 6;
UPDATE professor SET funcao = 'Monitor' WHERE idProfessor = 7;
UPDATE professor SET funcao = 'Assistente' WHERE idProfessor = 8;
UPDATE professor SET funcao = 'Titular' WHERE idProfessor = 9;
UPDATE professor SET funcao = 'Monitor' WHERE idProfessor = 10;
UPDATE professor SET funcao = 'Assistente' WHERE idProfessor = 11;
UPDATE professor SET funcao = 'Titular' WHERE idProfessor = 12;
UPDATE professor SET funcao = 'Monitor' WHERE idProfessor = 13;
UPDATE professor SET funcao = 'Assistente' WHERE idProfessor = 14;

-- Inserir um novo professor;
INSERT INTO professor(nome, especialidade, dtNasc, funcao) VALUES
	('Felipy', 'Banco de dados', '1900-01-01', 'Monitor');
    
-- Excluir o professor onde o idProfessor é igual a 5;
DELETE FROM professor WHERE idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares;
SELECT nome FROM professor WHERE funcao = 'Titular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
SELECT especialidade, dtNasc FROM professor 
	WHERE funcao = 'Monitor';
    
-- Atualizar a data de nascimento do idProfessor igual a 3
UPDATE professor SET dtNasc = '1800-02-10' WHERE idProfessor = 3;

-- i) Limpar a tabela Professor;	
TRUNCATE TABLE professor;

-- EX 5 --
CREATE TABLE curso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(30)
);

INSERT INTO curso(nome, sigla, coordenador) VALUES
	('Análise e Desenvolvimento de Sistemas','ADS','Marcelo'),
	('Sistemas de Informação','SIS','Will'),
	('Ciência da Computação','CCO','Leonardo'),
	('Administração','ADM','Luan'),
	('Desenvolvimento de Sistemas','DS','Pedro'),
	('Recursos Humanos','RH','Jefferson');

-- a) Exibir todos os dados da tabela.
SELECT * FROM curso;

-- b) Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM curso
WHERE sigla = 'ADS';

-- d) Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM curso
ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM curso
ORDER BY coordenador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM curso 
WHERE nome LIKE 'A%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM curso
WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM curso 
WHERE nome LIKE '_i%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM curso
WHERE nome LIKE '%a_';

-- j) Elimine a tabela.
DROP TABLE curso;

-- EX 6 --
CREATE TABLE revista(
	idRevista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

INSERT INTO revista (nome, categoria) VALUES
('VEJA',''),
('ISTO É',''),
('EPOCA',''),
('France Footbal','');

-- a) Exibir todos os dados da tabela.
SELECT * FROM revista;

-- b) Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
UPDATE revista
SET categoria = 'Futebol'
WHERE idRevista = 4;

UPDATE revista
SET categoria = 'Noticias'
WHERE idRevista = 3;

UPDATE revista
SET categoria = 'Noticias'
WHERE idRevista = 2;

UPDATE revista
SET categoria = 'Geral'
WHERE idRevista = 1;

SELECT * FROM revista;

-- c) Insira mais 3 registros completos.
INSERT INTO revista (nome, categoria) VALUES
	('ESPN','Esporte'),
	('World Soccer','Futebol'),
	('Placar','Futebol'),
	("L'EQUIPE",'Futebol');

-- d) Exibir novamente os dados da tabela.
SELECT * FROM revista;

-- e) Exibir a descrição da estrutura da tabela.
DESC revista;

-- f) Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE revista MODIFY categoria VARCHAR(40);

-- g) Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC revista;

-- h) Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE revista ADD COLUMN peridiocidade VARCHAR(15);

-- i) Exibir os dados da tabela.
SELECT * FROM revista;

-- j) Excluir a coluna periodicidade da tabela.
ALTER TABLE revista DROP peridiocidade;
DESC revista;







