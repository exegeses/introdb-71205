# Consultas de coincidencia ( que contenga una cadena )

> Las consultas de coincidencias se utilizan para traer información dónde vamos a filtrar que contenga una cadena de caractéres
> Eso quiere decir que como filtro vamos a explicitar que contenga cierta cadena de caractéres

> Traer nombre, precio y descripción de la tabla productos
> Dónde en la columna descripción contenga la palabra 'Bluetooth'

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%Bluetooth%';

> Utilizamos la palabra reservada **LIKE** 
> y además el carácter de **%**  ( porcentaje ) 
> como una especie de comodín que podría ocupar uno, varios o hasta ningún carácter

> Comodín de un solo carácter

    SELECT prdNombre, prdPrecio, prdDescripcion
      FROM productos
      WHERE prdNombre LIKE '_40 PRO%';

> Utilizamos el símbolo **_** ( underscore o guión bajo ) 
> cómo un comodín de 1 (un) solo carácter