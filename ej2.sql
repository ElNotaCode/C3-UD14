DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

/* DROP TABLE IF EXISTS [nombreTabla]; */

CREATE TABLE libro(claveLibro INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(60),
idioma VARCHAR(15),
formato VARCHAR(15),
claveEditorial smallint
);

CREATE TABLE tema(claveTema INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(40)
);

CREATE TABLE autor(claveAutor INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(60)
);

CREATE TABLE editorial(claveEditorial SMALLINT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(60),
direccion VARCHAR(60),
telefono VARCHAR(15)
);

CREATE TABLE ejemplar(claveEjemplar INT AUTO_INCREMENT PRIMARY KEY,
numeroOrden SMALLINT,
edicion SMALLINT,
ubicacion VARCHAR(15),
categoria CHAR,
claveLibro INT NOT NULL,
KEY(claveLibro),
FOREIGN KEY (claveLibro) REFERENCES libro(claveLibro)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE socio(claveSocio INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHARACTER(60),
direccion VARCHAR(60),
telefono VARCHAR(15),
categoria CHAR
);

CREATE TABLE prestamo(numeroOrden INT AUTO_INCREMENT PRIMARY KEY,
claveSocio INT NOT NULL,
KEY (claveSocio),
FOREIGN KEY (claveSocio) REFERENCES socio(claveSocio)
ON UPDATE CASCADE ON DELETE CASCADE,
claveEjemplar INT NOT NULL,
KEY(claveEjemplar),
FOREIGN KEY (claveEjemplar) REFERENCES ejemplar(claveEjemplar)
ON UPDATE CASCADE ON DELETE CASCADE,
fechaPrestamo DATE,
fechaDevolucion DATE,
notas BLOB
);

CREATE TABLE trataSobre(claveTrataSobre INT AUTO_INCREMENT PRIMARY KEY,
claveLibro INT NOT NULL,
KEY (claveLibro),
FOREIGN KEY (claveLibro) REFERENCES libro(claveLibro)
ON UPDATE CASCADE ON DELETE CASCADE,
claveTema INT NOT NULL,
KEY (claveTema),
FOREIGN KEY (claveTema) REFERENCES tema(claveTema)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE escritoPor(claveEscritoPor INT AUTO_INCREMENT PRIMARY KEY,
claveLibro INT NOT NULL,
KEY (claveLibro),
FOREIGN KEY (claveLibro) REFERENCES libro(claveLibro)
ON UPDATE CASCADE ON DELETE CASCADE
);

SELECT * FROM information_schema.columns
WHERE table_schema = 'biblioteca'
order by table_name,ordinal_position