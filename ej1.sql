DROP DATABASE IF EXISTS estacion;
CREATE DATABASE estacion;
USE estacion;

CREATE TABLE estacion(id_estacion INT AUTO_INCREMENT PRIMARY KEY,
latitud DECIMAL,
longitud DECIMAL,
altitud INT DEFAULT 130 /* se guardaría en metros */
);

CREATE TABLE muestra(id_muestra INT AUTO_INCREMENT PRIMARY KEY,
fecha DATE,
temp_minima INT,
temp_maxima INT,
precipitaciones INT, /* sería el porcentaje */
humedad_minima INT, /* porcentaje */
vel_viento_min INT, /* km/h */
vel_viento_max INT,
id_estacion INT NOT NULL,
KEY (id_estacion),
FOREIGN KEY (id_estacion) REFERENCES estacion(id_estacion)
ON DELETE CASCADE ON UPDATE CASCADE
);

SHOW COLUMNS FROM estacion;
SHOW COLUMNS FROM muestra;