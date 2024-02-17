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

