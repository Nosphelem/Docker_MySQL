-- CREATING TABLES --

CREATE TABLE _role
(
    id_role INT,
    role_ VARCHAR(100),
    id_film INT,
    id_artiste INT,
    PRIMARY KEY (id_role)
);

CREATE TABLE _film
(
    id_film INT,
    annee INT,
    titre VARCHAR(100),
    id_real INT,
    PRIMARY KEY (id_film)
);

CREATE TABLE _artiste
(
    id_artiste INT,
    prenom VARCHAR(100),
    nom VARCHAR(100),
    PRIMARY KEY (id_artiste)
);



-- FILLING TABLES WITH DATA --

-- fill _role
INSERT INTO _role
VALUES (1, 'Vicent VEGA', 17, 11);
INSERT INTO _role
VALUES (2, 'Butch COOLIDGE', 17, 27);
INSERT INTO _role
VALUES (3, 'Jimmy DIMMICK', 17, 37);

-- fill _artiste
INSERT INTO _artiste
VALUES (11, 'John', 'TRAVOLTA');
INSERT INTO _artiste
VALUES (27, 'Bruce', 'WILLIS');
INSERT INTO _artiste
VALUES (37, 'Quentin', 'TARANTINO');
INSERT INTO _artiste
VALUES (167, 'Robert', 'DE NIRO');
INSERT INTO _artiste
VALUES (168, 'Pam', 'GRIER');

-- fill _film
INSERT INTO _film
VALUES (17, 1994, 'Pulp Fiction', 37);
INSERT INTO _film
VALUES (57, 1997, 'Jackie Brown', 37);



-- ADDING THE FOREIGN KEYS AFTER THE CREATION OF THE TABLES AND THE DATA INPUT --

ALTER TABLE _role ADD FOREIGN KEY (id_film) REFERENCES _film(id_film);
ALTER TABLE _role ADD FOREIGN KEY (id_artiste) REFERENCES _artiste(id_artiste);