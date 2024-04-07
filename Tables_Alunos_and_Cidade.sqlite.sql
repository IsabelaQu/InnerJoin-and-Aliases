-- TABLE
CREATE TABLE Alunos (
   id 			int PRIMARY KEY,
   nome 		varchar(60) not NULL,
   data_nasc	date,
   id_cidade	int,
   FOREIGN KEY	(id_cidade)	REFERENCES Cidade(id)
  );
CREATE TABLE Cidades ( 
  id		int PRIMARY KEY,
  nome 		varchar(50) NOT NULL,
  populacao	int 
);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
