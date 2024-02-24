# creación de tablas monedas
create table monedas
(
    id tinyint unsigned auto_increment primary key not null,
    aprox float not null,
    exacto decimal(10,2) not null
);

-- inserción de datos
insert into monedas
    VALUES
        ( DEFAULT, 55, 30 ),
        ( DEFAULT, 30, 73 ),
        ( DEFAULT, 73, 23.6 ),
        ( DEFAULT, 23.6, 38 ),
        ( DEFAULT, 38, 64.7 ),
        ( DEFAULT, 64.7, 55 );

-- Listar todos los registros
SELECT * FROM monedas;

-- Sumar todos los valores de la columna aprox
-- y luego sumar todos los valores de la columna exacto
SELECT SUM( aprox ), SUM( exacto )
   FROM monedas;