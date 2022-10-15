DROP DATABASE IF EXISTS LSRestaurant;
CREATE DATABASE LSRestaurant;
USE LSRestaurant;



#Creacio taules

DROP TABLE IF EXISTS Taula;
DROP TABLE IF EXISTS Reserva;
DROP TABLE IF EXISTS Plat;
DROP TABLE IF EXISTS Comanda;

CREATE TABLE Taula(
	id_taula int AUTO_INCREMENT,
    num_cadires INT,
    
    PRIMARY KEY(id_taula)
);

CREATE TABLE Reserva(
	usuari VARCHAR(255),
    password VARCHAR(255),
    n_comensals INT,
    data DATE,
    hora TIME,
    id_taula INT,
	PRIMARY KEY (usuari),
    FOREIGN KEY (id_taula) REFERENCES Taula(id_taula)
);

CREATE TABLE Plat(
	nom_plat VARCHAR(255),
	preu REAL,
	unitats_disponibles INT,
	unitats_gastades INT,
	PRIMARY KEY(nom_plat)
);


CREATE TABLE Comanda(
	id_comanda int AUTO_INCREMENT,
	nom_plat VARCHAR(255),
    usuari VARCHAR(255),
    servit boolean,
    hora Time,
    data Date,
    PRIMARY KEY(id_comanda),
    FOREIGN KEY (usuari) REFERENCES Reserva(usuari),
	FOREIGN KEY (nom_plat) REFERENCES Plat(nom_plat)
);



#Selects

USE LSRestaurant;

SELECT * FROM Reserva;

SELECT * FROM Taula;

SELECT * FROM Plat;

SELECT * FROM Comanda;



