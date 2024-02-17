# insertar datos en una tabla

> En SQL tenemos tres maneras de insertar datos en una tabla

## Sintáxis usando **SET**

    INSERT INTO nombreTable  
        SET  
            nombreColumna = valor,  
            nombreColumna2 = valor2,  
            nombreColumna3 = valor3,  
            nombreColumna4 = valor4;  

> Ejemplo práctico:
 
    INSERT INTO personas  
        SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';  
 
    INSERT INTO personas  
        SET  
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';


## Sintáxis completa (se mencionan las columnas)

    INSERT INTO nombreTable  
        ( nombreCol2, nombreCol3, nombreCol5 )  
      VALUES  
        ( valor2, valor3, valor5 );

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );  


## Sintáxis simplificada (NO se mencionan las columnas)

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );