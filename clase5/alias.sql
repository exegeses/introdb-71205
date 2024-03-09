# Aleas en SQL
/*
 los alias nos van a servir principalmente
 para renombrar una columna o una tabla
 !!! El renombrado no es permanente
 sino que es solamente para el reporte
*/
-- Se implementa un alias con la palabra **AS**

SELECT 	prdNombre AS Producto,
          prdPrecio AS Precio,
          mkNombre AS Marca,
          catNombre AS Categoria
FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria;

## !!! Advertencia !!! ##
## Podemos implementar un alias sin mencionar la palabra **AS** ##