DROP DATABASE IF EXISTS investigadores;
CREATE DATABASE investigadores;
USE investigadores;

CREATE TABLE facultad(id_facultad INT AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100)
);

CREATE TABLE investigadores(dni VARCHAR(8) PRIMARY KEY,
nombre_apellidos NVARCHAR(255),
id_facultad INT,
KEY (id_facultad),
FOREIGN KEY (id_facultad) REFERENCES facultad(id_facultad)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE equipos(id_equipos CHAR(4) PRIMARY KEY,
nombre NVARCHAR(100),
id_facultad INT,
KEY (id_facultad),
FOREIGN KEY (id_facultad) REFERENCES facultad(id_facultad)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE reserva(id_reserva INT AUTO_INCREMENT PRIMARY KEY,
equipo CHAR(4),
KEY (equipo),
FOREIGN KEY (equipo) REFERENCES equipos(id_equipos)
ON UPDATE CASCADE ON DELETE CASCADE,
dni VARCHAR(8),
KEY (dni),
FOREIGN KEY (dni) REFERENCES investigadores(dni)
ON UPDATE CASCADE ON DELETE CASCADE
);