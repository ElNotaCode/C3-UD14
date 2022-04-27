DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE despachos(id_despacho INT AUTO_INCREMENT PRIMARY KEY,
capacidad INT DEFAULT 1
);

CREATE TABLE directores(dni VARCHAR(8) PRIMARY KEY,
nombre_apellidos NVARCHAR(255),
despacho INT,
KEY(despacho),
FOREIGN KEY (despacho) REFERENCES despachos(id_despacho)
ON UPDATE CASCADE ON DELETE CASCADE,
dni_jefe VARCHARACTER(8),
KEY (dni_jefe),
FOREIGN KEY (dni_jefe) REFERENCES directores(dni)
ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW COLUMNS FROM despachos;
SHOW COLUMNS FROM directores;