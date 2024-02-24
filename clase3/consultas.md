# Consultas en SQL

## Consultas a SERVER

    -- listar bases de datos 
    SHOW DATABASES;

    -- Listar las tablas dentro de una base de datos
    SHOW TABLES;

> La palabra reservada más importante o 
> al menos más utilizada 
> es la palabra **SELECT**

    -- Mostrar la base de datos activa
    SELECT DATABASE();


## Consultas a tablas

> Para realizar consultas a una tabla de una base de datos utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra reservada **FROM**

    SELECT * FROM nombreTabla;   

    SELECT * FROM regiones;  

    SELECT * FROM destinos;  

> En estos ejemplos traemos todos los datos 
> de todas las columnas de la tabla mencionada


> Si queremos traer los datos de **algunas** columnas de una tabla
> debemos mencionar los nombres de las columnas separadas por comas

    SELECT nombreCol, nombreCol2  
        FROM nombreTabla; 

    SELECT aeropuerto, precio  
        FROM destinos;  

### Orden de los resultados de una consulta

> Para ordenar los resultados de una consulta
> utilizamos la palabra **ORDER BY** 

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY aeropuerto; 

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY precio; 

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;   

### Filtrado de resultados

> Filtrar resultados de una consulta significa 
> traer solamente los registros que cumplan con una condición dada
> Para implementar un filtro utilizamos 
> la palabra reservada **WHERE** seguida de una condición

    SELECT nombreCol, nombreCol2  
        FROM nombreTabla  
        WHERE condicion;  

> Traer todos los destinos con un precio hasta 8000

    SELECT aeropuerto, precio    
      FROM destinos  
      WHERE precio <= 8000;

> Traer todos los destinos con un precio entre 6600 y 8000  

    SELECT aeropuerto, precio     
       FROM destinos   
       WHERE precio BETWEEN 6600 AND 8000;

    SELECT aeropuerto, precio    
      FROM destinos  
      WHERE precio >= 6600  
      AND precio <= 8000; 

> Traer todos los destinos de la región 5

    SELECT aeropuerto, precio      
      FROM destinos    
      WHERE idRegion = 5;

> Traer todos los destinos de la región 3 y de la región 5  

    SELECT aeropuerto, precio    
       FROM destinos  
       WHERE idRegion = 3
       OR idRegion = 5;

    SELECT aeropuerto, precio    
       FROM destinos  
       WHERE idRegion IN( 3, 5 );

