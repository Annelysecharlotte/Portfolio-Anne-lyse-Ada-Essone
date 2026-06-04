-- Base de donnees My GoodLife - exemple pour portfolio
CREATE DATABASE IF NOT EXISTS mygoodlife;
USE mygoodlife;

CREATE TABLE utilisateur (
  id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100),
  email VARCHAR(150) UNIQUE
);

CREATE TABLE aliment (
  id_aliment INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100),
  calories INT
);

CREATE TABLE repas (
  id_repas INT AUTO_INCREMENT PRIMARY KEY,
  id_utilisateur INT,
  date_repas DATE,
  type_repas VARCHAR(50),
  FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);
