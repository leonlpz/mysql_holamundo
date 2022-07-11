create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('puerco', 'feliz'); 
-- Esta linea no sera ejecutada

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 

INSERT INTO animales (tipo, estado) VALUES ('puerco', 'feliz'); 
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz'); 
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'sad'); 

SELECT * FROM animales; 
SELECT * FROM animales WHERE id = 1;


UPDATE animales SET estado = 'feliz' where id = 4;

SELECT * FROM animales;

DELETE from animales where estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without 
-- a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences 
-- -> SQL Editor and reconnect.

DELETE from animales where id = 1;
SELECT * FROM animales;

UPDATE animales set estado = 'triste' where tipo = 'dragon';
-- esta tambien arroja error 1175
UPDATE animales set estado = 'triste' where id = 3;

SELECT * FROM animales;

