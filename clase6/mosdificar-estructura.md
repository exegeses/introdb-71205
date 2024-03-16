# modificación de la estructura de una tabla

## cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreActual nombreNuevo tipo características;

    ALTER TABLE personas 
        CHANGE dni documento int unsigned not null;

## cambiar tipo de dato de una columna

    ALTER TABLE nombreTabla  
        MODIFY nombreColumna tipo características;

    ALTER TABLE personas 
        MODIFY apellido varchar(50) not null;

## agregar columna hay final de la tabla

    ALTER TABLE nombreTabla  
        ADD nombreColumna tipo características;

    ALTER TABLE personas 
        ADD test varchar(30) not null;

## agregar columna después de una columna existente

    ALTER TABLE nombretabla  
        ADD nombreColumna tipo, características  
        AFTER nombreColumnaExistente;

    ALTER TABLE personas 
        ADD sueldo mediumint unsigned not null  
        AFTER dni;


## eliminar una columna

    ALTER TABLE nombreTabla  
        DROP nombreColumna; 

    ALTER TABLE personas 
        DROP test;