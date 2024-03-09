-- creación de tabla combustibles
create table combustibles
(
    idCombustible tinyint unsigned not null auto_increment primary key,
    nombre varchar(45) unique not null
);
insert into combustibles
    VALUES
        ( DEFAULT, 'gasolina' ),
        ( DEFAULT, 'diesel' ),
        ( DEFAULT, 'ecodiesel' ),
        ( DEFAULT, 'gpl' );


-- creación de tabla vehículos
create table vehiculos
(
    idVehiculo smallint unsigned auto_increment not null primary key,
    nombre varchar(45) unique not null,
    idMarca tinyint unsigned not null ,
    idCombustible tinyint unsigned not null,
    ruedas tinyint unsigned not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCombustible) references combustibles (idCombustible)
);

insert into vehiculos
    VALUES
        ( DEFAULT, 'motocicleta', 3, 1, 2 ),
        ( DEFAULT, 'auto', 4, 4, 4 ),
        ( DEFAULT, 'avion', 1, 1, 6 ),
        ( DEFAULT, 'bote', 5, 2, 0 ),
        ( DEFAULT, 'tractor', 6, 3, 4 );

-- consulta
/*
     Traer
     nombre de vehículo,
     nombre de combustible
     de las tablas vehículos y combustibles
*/
SELECT vehiculos.nombre, combustibles.nombre
FROM vehiculos, combustibles
WHERE vehiculos.idCombustible = combustibles.idCombustible;

select vehiculos.nombre, combustibles.nombre
from vehiculos
join combustibles
  on vehiculos.idCombustible = combustibles.idCombustible;

select 	v.nombre AS Vehiculo,
          c.nombre AS Combustible
from vehiculos AS v
         join combustibles AS c
              on v.idCombustible = c.idCombustible;