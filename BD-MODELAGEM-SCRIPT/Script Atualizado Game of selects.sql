CREATE DATABASE Grupo_7;
USE Grupo_7;

CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    nomeEquipe VARCHAR(45)
)  AUTO_INCREMENT = 10;

CREATE TABLE Treinador (
    idTreinador INT PRIMARY KEY AUTO_INCREMENT,
    nomeTreinador VARCHAR(45),
    fkEquipe INT,
    FOREIGN KEY (fkEquipe)
        REFERENCES Equipe (idEquipe)
);

CREATE TABLE Pokemon (
    idPokemon INT PRIMARY KEY AUTO_INCREMENT,
    nomePokemon VARCHAR(45),
    tipoPokemon VARCHAR(45),
    poderPokemon INT,
    fkTreinador INT,
    FOREIGN KEY (fkTreinador)
        REFERENCES Treinador (idTreinador)
)  AUTO_INCREMENT = 100;

CREATE TABLE Batalha (
    idBatalha INT PRIMARY KEY AUTO_INCREMENT,
    momento DATETIME
) AUTO_INCREMENT = 200; 

create table Ganhador (
idGanhador int primary key auto_increment, 
FkTreinador int , foreign key (fkTreinador) references Treinador (idTreinador),
FkBatalha int, foreign key (fkBatalha) references Batalha (idBatalha));

create table Perdedor (
idPerdedor int primary key auto_increment, 
FkTreinadoor int , foreign key (fkTreinadoor) references Treinador (idTreinador),
FkBatalha int, foreign key (fkBatalha) references Batalha (idBatalha));



INSERT INTO equipe (nomeequipe) VALUES
('Equipe Ash'),
('Equipe Rocket');

INSERT INTO treinador (nomeTreinador, fkEquipe) VALUES
('Ash', 10),
('Misty', 10),
('Brock', 10),
('Jessie', 11),
('James', 11),
('Giovanni', 11);

INSERT INTO pokemon (nomePokemon, tipoPokemon, poderPokemon, fktreinador) VALUES
('Pikachu', 'Elétrico', 90, 1),
('Charizard', 'Fogo e Voador', 120, 1),
('Lapras', 'Água e Gelo', 110, 1),
('Starmie', 'Água e psiquico', 90, 2),
('Psyduck', 'Água e psiquico', 60, 2),
('Togepi', 'Normal', 40, 2),
('Golem', 'Pedra', 120, 3),
('Onix', 'Pedra', 110, 3),
('Geodude', 'Pedra', 60, 3),
('Arbok', 'Venenoso', 90, 4),
('Wobbuffet', 'Psiquico', 110, 4),
('Seviper', 'Venenoso', 90, 4),
('Meowth', 'Normal', 60, 5),
('Weezing', 'Venenoso', 80, 5),
('Victreebel', 'Planta e Venenoso', 90, 5),
('Kangaskhan', 'Normal', 120, 6),
('Dugtrio', 'Solo', 90, 6),
('Rhyhorn', 'Pedra', 80, 6);

 INSERT INTO pokemon (nomePokemon, tipoPokemon, poderPokemon, fktreinador) VALUES
 ('Ninetiles', 'Fogo', 70, null),
 ('Jigglypuff', 'Normal e Fada', 20, null),
 ('Zubat', 'Poison', 20, null),
 ('Poliwrath', 'Água', 80, null);
 INSERT INTO Batalha (momento) values
 ('2021-10-04 14:30:00'),
 ('2021-09-20 13:20:00'),
 ('2021-07-25 12:15:00'),
 ('2021-08-29 16:50:00'),
 ('2022-02-21 11:20:00'),
 ('2021-06-24 10:10:00'),
 ('2022-03-25 17:20:00'),
 ('2022-04-23 12:20:00');
 
INSERT INTO Ganhador (fkTreinador, fkBatalha) VALUES
(5, 200),
(1, 201),
(3, 202),
(4, 203),
(6, 204),
(1, 205),
(4, 206),
(3, 207);
INSERT INTO Perdedor (FkTreinadoor, fkbatalha) VALUES 
(2, 200),
(4, 201),
(5, 202),
(6, 203),
(2, 204),
(5, 205),
(6, 206),
(5, 207);

SELECT * FROM GANHADOR;
SELECT * FROM PERDEDOR;
SELECT * FROM EQUIPE;
SELECT * FROM EQUIPE JOIN TREINADOR ON FKEQUIPE  = IDEQUIPE;
-- Exiba os dados das batalhas, quais foram os treinadores vencedores e perdedores apelidando a coluna fkTreinador de ambas as tabelas
-- e dos pokemons dos treinadores vencedores, mas sem exibir a coluna idPerdedor e idGanhador = C
SELECT BATALHA.*, GANHADOR.FKTREINADOR 'Treinador Vencedor', FKTREINADOOR 'Treinador perdedor', Pokemon.*FROM BATALHA 
JOIN GANHADOR ON GANHADOR.FKBATALHA = IDBATALHA JOIN TREINADOR as v  ON FKTREINADOR = v.IDTREINADOR
JOIN POKEMON ON POKEMON.FKTREINADOR = v.IDTREINADOR
JOIN PERDEDOR ON PERDEDOR.FKBATALHA = IDBATALHA JOIN TREINADOR as p on FKTREINADOOR = p.IDTREINADOR ;

SELECT * FROM EQUIPE JOIN TREINADOR ON FKEQUIPE = IDEQUIPE 
JOIN POKEMON ON POKEMON.FKTREINADOR = IDTREINADOR
JOIN BATALHA 
JOIN GANHADOR ON GANHADOR.FKTREINADOR = IDTREINADOR AND GANHADOR.FKBATALHA = IDBATALHA
JOIN PERDEDOR ON PERDEDOR.FKTREINADOR = IDTREINADOR AND GANHADOR.FKBATALHA = IDBATALHA ;

