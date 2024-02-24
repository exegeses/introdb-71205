# creación de tabla regiones
create table regiones
(
    idRegion tinyint unsigned auto_increment primary key not null,
    nombre varchar(30) unique not null
);

-- inserción de datos en tabla regiones
insert into regiones
    values
        ( DEFAULT, 'América del Sur' ),
        ( DEFAULT, 'América Central' ),
        ( DEFAULT, 'Caribe y México' ),
        ( DEFAULT, 'América del Norte' ),
        ( DEFAULT, 'Europa Occidental'),
        ( DEFAULT, 'Europa del Este'),
        ( DEFAULT, 'Asia'),
        ( DEFAULT, 'Oceanía');
