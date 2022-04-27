DROP DATABASE IF EXISTS grandes_almacenes;
CREATE DATABASE grandes_almacenes;
USE grandes_almacenes;

CREATE TABLE productos(id_producto INT AUTO_INCREMENT PRIMARY KEY,
nombre NVARCHAR(100),
precio INT
);

CREATE TABLE cajeros(id_cajero INT AUTO_INCREMENT PRIMARY KEY,
nombre_apellidos NVARCHAR(255)
);

CREATE TABLE maquinas_registradoras(id_maquina INT AUTO_INCREMENT PRIMARY KEY,
piso INT
);

CREATE TABLE venta(id_venta INT AUTO_INCREMENT PRIMARY KEY,
cajero INT,
KEY (cajero),
FOREIGN KEY (cajero) REFERENCES cajeros(id_cajero)
ON UPDATE CASCADE ON DELETE CASCADE,
maquina INT,
KEY (maquina),
FOREIGN KEY (maquina) REFERENCES maquinas_registradoras(id_maquina)
ON UPDATE CASCADE ON DELETE CASCADE,
producto INT,
KEY (producto),
FOREIGN KEY (producto) REFERENCES productos(id_producto)
ON UPDATE CASCADE ON DELETE CASCADE
);