DROP DATABASE IF EXISTS proveedores;
CREATE DATABASE proveedores;
USE proveedores;

CREATE TABLE piezas(id_pieza INT AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100)
);

CREATE TABLE proveedores(id_proveedor CHAR(4) PRIMARY KEY,
nombre NVARCHAR(100)
);

CREATE TABLE suministra(id_pieza INT,
KEY (id_pieza),
FOREIGN KEY (id_pieza) REFERENCES piezas(id_pieza)
ON UPDATE CASCADE ON DELETE CASCADE,
id_proveedor CHAR(4),
KEY(id_proveedor),
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
ON UPDATE CASCADE ON DELETE CASCADE,
precio INT
);

SHOW COLUMNS FROM piezas;
SHOW COLUMNS FROM suministra;