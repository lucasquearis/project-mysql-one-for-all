DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preço DOUBLE NOT NULL
) ENGINE=innoDB;

CREATE TABLE usuarios(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES planos(id)
) engine=innoDB;

CREATE TABLE artistas(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL
) ENGINE=innoDB;

CREATE TABLE albuns(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY(artista_id) REFERENCES artistas(id)
) ENGINE=innoDB;

CREATE TABLE musicas(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY(album_id) REFERENCES albuns(id)
) ENGINE=innoDB;

CREATE TABLE usuarios_artistas(
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
) ENGINE=innoDB;

CREATE TABLE historico_ouvidas(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (musica_id) REFERENCES musicas(id)
) ENGINE=innoDB;

INSERT INTO planos(nome, preço) VALUES('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuarios(idade, nome, plano_id) VALUES
(23, 'Thati', 1),
(35, 'Cintia', 2),
(20, 'Bill', 3),
(45, 'Roger', 1);

INSERT INTO artistas(nome) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns(nome, artista_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musicas(album_id, nome) VALUES
(1, 'Soul For Us'),
(1, 'Reflections Of Magic'),
(1, 'Dance With Her Own'),
(2, 'Troubles Of My Inner Fire'),
(2, 'Time Fireworks'),
(3, 'Magic Circus'),
(3, 'Honey, So Do I'),
(3, 'Sweetie, Lets Go Wild'),
(3, 'She Knows'),
(4, 'Fantasy For Me'),
(4, 'Celebration Of More'),
(4, 'Rock His Everything'),
(4, 'Home Forever'),
(4, 'Diamond Power'),
(4, 'Honey, Let''s Be Silly'),
(5, 'Thang Of Thunder'),
(5, 'Words Of Her Life'),
(5, 'Without My Streets');

INSERT INTO usuarios_artistas(usuario_id, artista_id) VALUES
(1, 1),
(1,3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(3, 4);

INSERT INTO historico_ouvidas(usuario_id, musica_id) VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
