# Modificación de datos de una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
        SET  
            nombreColumna = valor,   
            nombreColumna2 = valor2,  
            nombreColumna3 = valor3  
        WHERE colID = valorID;


> Ejemplo práctico:

    UPDATE personas  
        SET  
            apellido = 'Gonzáles'  
        WHERE id = 2;

    UPDATE personas  
        SET  
            dni = 32912456,  
            alta = '2007-11-03'
        WHERE id = 4;

> Modificar el idRegion del destino con id 5 
> y del destino con id 6
> asignarles el idRegion igual a 7

    UPDATE destinos  
      SET  
            idRegion = 7  
        WHERE idDestino IN( 5,6 ); 

