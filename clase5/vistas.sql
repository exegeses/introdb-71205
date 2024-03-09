# Vistas en SQL

/* una vista es una consulta
   que podemos almacenar dentro de nuestra base de datos

   El objetivo es evitar escribir varias veces una misma
   consulta en el caso en que tuviéramos que
   ejecutarla varias veces en el día/semana/mes
*/

CREATE VIEW listado_precios
  AS
    SELECT  idProducto AS ID,
            prdNombre AS Producto,
            prdPrecio AS Contado,
            format( prdPrecio * 1.05, 2 ) AS 'Precio de Lista',
            mkNombre AS Marca,
            catNombre AS Categoría
        FROM productos AS p
        JOIN marcas AS m
          ON p.idMarca = m.idMarca
        JOIN categorias c
          ON c.idCategoria = p.idCategoria;

### Una vista parece una tabla independiente,
### pero en realidad no lo es

-- Listar todas las vistas dentro de una base de datos
SHOW FULL TABLES IN introdb
    WHERE Table_type = 'VIEW'