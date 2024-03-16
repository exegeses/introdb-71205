create table departamentos
(
    idDepartamento tinyint unsigned auto_increment primary key not null,
    departamento varchar(45) unique not null
);

insert into departamentos
  values
      ( default, 'Administración' ),
      ( default, 'Compras' ),
      ( default, 'Ventas' ),
      ( default, 'Atención la público' ),
      ( default, 'Gerencia general' ),
      ( default, 'Marketing' );
