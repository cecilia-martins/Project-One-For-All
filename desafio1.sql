DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
CREATE TABLE SpotifyClone.user(
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100),
    age INT,
    signature_date DATE
) engine = InnoDB;

CREATE TABLE SpotifyClone.plano(
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    plano_type VARCHAR(30),
    price DECIMAL(5,2),
) engine = InnoDB;

INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');