-- más de un Primary Key

/* el siguiente código no funciona */
create table facturas
(
    letra char(1) primary key not null,
    numero mediumint unsigned auto_increment primary key not null,
    clienteID mediumint unsigned not null,
    articuloID mediumint unsigned not null,
    fecha date not null,
    monto decimal(10,2) unsigned not null
);

/* Este código si funciona */
create table facturas
(
    letra char(1) not null,
    numero mediumint unsigned not null,
    clienteID mediumint unsigned not null,
    articuloID mediumint unsigned not null,
    fecha date not null,
    monto decimal(10,2) unsigned not null,
    primary key ( letra, numero )
);

/* Intentemos agregar el auto incremental en la columna número */
alter table facturas
    MODIFY numero mediumint unsigned auto_increment not null;
/* Esto no funciona porque
   sólo puede haber una única columna auto_increment
   que es la que debe ser clave primaria */