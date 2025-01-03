-- Création de la table user
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insertion de 10 utilisateurs fictifs
INSERT INTO user (name, lastname, birthday, email, password) VALUES
('Alice', 'Dupont', '1990-05-12', 'alice.dupont@example.com', 'password123'),
('Bob', 'Martin', '1985-09-23', 'bob.martin@example.com', 'securepass456'),
('Charlie', 'Durand', '1993-11-02', 'charlie.durand@example.com', 'mypassword789'),
('Diane', 'Moreau', '1998-03-15', 'diane.moreau@example.com', 'qwerty123'),
('Ethan', 'Rousseau', '2000-07-27', 'ethan.rousseau@example.com', 'letmein456'),
('Fiona', 'Blanc', '1995-12-08', 'fiona.blanc@example.com', '123456789'),
('George', 'Lemoine', '1988-01-17', 'george.lemoine@example.com', 'iloveyou321'),
('Hannah', 'Bertrand', '1997-04-05', 'hannah.bertrand@example.com', 'passw0rd!'),
('Ian', 'Girard', '1992-10-10', 'ian.girard@example.com', 'abc123!@#'),
('Julia', 'Chevalier', '1989-06-30', 'julia.chevalier@example.com', 'sunshine456');
