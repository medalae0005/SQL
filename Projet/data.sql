-- CREATE DATABASE projects_management;
-- USE projects_managements;

CREATE TABLE employee (
    id_emp INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    role VARCHAR(50)
);

CREATE TABLE project (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(200) NOT NULL,
    date_deb DATE,
    date_fin DATE,
    statut VARCHAR(50),
    id_chef_projet INT,
    FOREIGN KEY (id_chef_projet) REFERENCES employe(id_emp)
);

CREATE TABLE tache (
    id_tache INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    date_limite DATE,
    etat VARCHAR(50),
    priorite VARCHAR(20),
    id_employe INT,
    id_projet INT,
    FOREIGN KEY (id_employe) REFERENCES employe(id_emp),
    FOREIGN KEY (id_projet) REFERENCES projet(id_projet)
);