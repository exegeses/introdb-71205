# sentencia **HAVING** en SQL

    SELECT departamento, sum(sueldo)  
      FROM personas as p  
      JOIN departamentos as d  
      ON p.idDepartamento = d.idDepartamento  
      GROUP BY p.idDepartamento  
      HAVING sum(sueldo) >= 50000;

> Cuando estamos utilizando aggregates
> Las funciones SUM(), MAX(), MIN(), AVG(), COUNT()
> vamos a utilizar GOUP BY para traer los resultados agrupados por alguna columna 

> Si además queremos agregar una condición no podremos utilizar la cláusula **WHERE**
> En estos casos ese filtro se puede implementar 
> con la cláusula **HAVING**

