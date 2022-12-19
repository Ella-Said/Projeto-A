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
    fkTreinador1 INT,
    FOREIGN KEY (fkTreinador1)
        REFERENCES Treinador (idTreinador),
    fkTreinador2 INT,
    FOREIGN KEY (fkTreinador2)
        REFERENCES Treinador (idTreinador),
    fkPokemon1 INT,
    FOREIGN KEY (fkPokemon1)
        REFERENCES Pokemon (idPokemon),
    fkPokemon2 INT,
    FOREIGN KEY (fkPokemon2)
        REFERENCES Pokemon (idPokemon),
    -- PRIMARY KEY (fkTreinador1 , fkTreinador2 , fkPokemon1 , fkPokemon2), -- Está linha está logada a uma tabela associativa.
    momento DATETIME
) AUTO_INCREMENT = 200; 

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
 
INSERT INTO batalha (fkTreinador1, fktreinador2, fkPokemon1, fkPokemon2, momento) VALUES
(1, 2, 101, 102, '2022-06-12 17:30:00'),
(3, 4, 103, 104, '2022-06-12 18:00:00'),
(5, 6, 105, 105, '2022-06-12 18:30:00'),
(6, 1, 106, 107, null),
(5, 2, 108, 109, '2022-06-12 19:30:00'),
(4, 3, 110, 111, '2022-06-12 20:00:00'),
(3, 2, 112, 113, '2022-06-12 20:30:00'),
(2, 1, 114, 115, null);










