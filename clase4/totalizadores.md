# agrupamiento de datos

> Cuándo usamos funciones totalizadoras como por ejemplo
> SUM(), AVG(), COUNT(), MAX(), MIN()
> Y además queremos traer otra columna vamos a necesitar agrupar los datos

    SELECT idRegion, count(*)   
      from destinos  
      GROUP BY idRegion;


    SELECT idRegion, SUM(precio)   
      FROM destinos  
      GROUP BY idRegion;

