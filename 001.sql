CREATE TABLE usuario (
    id_usuario INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

INSERT INTO usuario VALUES (
    1,
    'ALLAN GUSTAVO DAGOSTIN',
    'allangustavo@gmail.com'
);
INSERT INTO usuario VALUES (
    2,
    'ADRIELLY BRITO DA SILVA',
    'adriellybrito@gmail.com'
);
INSERT INTO usuario VALUES (
    3,
    'GUILHERME DOS SANTOS',
    'guilhermesantos@gmail.com'
);
INSERT INTO usuario VALUES (
    4,
    'PEDRO TOMAZ',
    'pedrotomaz@gmail.com'
);

CREATE TABLE viagens (
    id_viagem INTEGER PRIMARY KEY NOT NULL,
    destino VARCHAR(50) NOT NULL,
    data_partida VARCHAR(10) NOT NULL,
    data_retorno VARCHAR(10) NOT NULL,
    id_usuario INTEGER,
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
);

INSERT INTO viagens VALUES (
    1,
    'PARIS',
    '15/06/2023',
    '26/06/2023',
    1
);
INSERT INTO viagens VALUES (
    2,
    'LONDRES',
    '01/07/2023',
    '10/07/2023',
    2
);
INSERT INTO viagens VALUES (
    3,
    'ROMA',
    '12/08/2023',
    '20/08/2023',
    3
);
INSERT INTO viagens VALUES (
    4,
    'NEW YORK',
    '05/09/2023',
    '12/09/2023',
    4
);
INSERT INTO viagens VALUES (
    5,
    'BARCELONA',
    '20/10/2023',
    '28/10/2023',
    1
);

SELECT * FROM usuario;
SELECT * FROM viagens