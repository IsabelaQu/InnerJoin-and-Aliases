--criando a tabela Cidade
CREATE TABLE Cidades ( 
  id		int PRIMARY KEY,
  populacao	int
  nome 		varchar(150) NOT NULL,
);

--criando a tabele Alunos
 CREATE TABLE Alunos (
   id 			int PRIMARY KEY,
   data_nasc	date,
   id_cidade	int,
   nome 		varchar(150) not NULL,
   FOREIGN KEY	(id_cidade)	REFERENCES Cidade(id)
  );

--inserindo na tabela cidades
insert into Cidades values (1, 'Arraial dos Tucanos', 42632);
insert into Cidades values (2, 'Springfield', 13820);
insert into Cidades values (3, 'Hill Valley', 27383);
insert into Cidades values (4, 'Coruscant', 19138);
insert into Cidades values (5,'Minas Tirith', 31394);

--inserindo dados na tabela Alunos
insert into Alunos values (1, 'Immanuel Kant', 		'1724-04-22', 4);
insert into Alunos values (2, 'Alan Turing', 		'1912-06-23', 3);
insert into Alunos values (3, 'George Boole', 		'2002-01-01', 1);
insert into Alunos values (4, 'Lynn Margulis', 		'1991-08-12', 3);
insert into Alunos values (5, 'Nicola Tesla', 		'2090-01-08', null);
insert into Alunos values (6, 'Ada Lovelace', 		'1978-05-28', 4);
insert into Alunos values (7, 'Claude Shannon', 	'1982-10-15', 3);
insert into Alunos values (8, 'Charles Darwin', 	'2010-02-06', null);
insert into Alunos values (9, 'Marie Curie', 		'2007-07-12', 3);
insert into Alunos values (10, 'Carl Sagan', 		'2000-11-20', 1);
insert into Alunos values (11, 'Tim Berners-Lee', 	'1973-12-05', 4);
insert into Alunos values (12, 'Richard Feynman', 	'1982-09-12', 1);

--seleciona tudo da tabela cidade
SELECT * FROM Cidades;

--seleciona tudo da tabela cidade
SELECT * FROM Alunos;

--seleciona as informações dos alunos e a população das cidades onde estão localizados
SELECT Alunos.id, Alunos.nome AS nome_aluno, Alunos.data_nasc, Cidades.nome AS nome_cidade, Cidades.populacao
FROM Alunos
INNER JOIN Cidades ON Alunos.id_cidade = Cidades.id;
