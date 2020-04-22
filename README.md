# 004-Consultas-datos-relaciones-SQL
Básico/Introducción a Base de Datos/Consultas de datos y relaciones en SQL/Postwork

<hr>
<b>Estos son las instrucciones que utilice para el Postwork de la sesión 4.</b>
<hr>


4. Para cada tabla en tu base de datos realiza el siguiente proceso:
- Analizar contenido de la tabla

Mi análisis consistió en:

Saber el contenido de las tablas.

SELECT * FROM estadis;

Contiene los campos año, mes id_ur, id_ebdi, altas y bajas


SELECT * FROM cat_ur;

Contiene los campos id_ur, nombrel, nombrec y abrv


cat_ur es un catálogo de delegaciones en las entidades federativas que incluye nombre largo, nombre corto y abreviatura.
estadis es una tabla que contiene un id_ur para relacionarse con la tanbla cat_ur; estatabla contiene altas y bajas de un campo id_ebdi y de un año 2019 y mes di.


- Determina si te es posible obtener resultados aplicando filtros y contando al contenido de la tabla, en caso afirmativo construye tus consultas SQL y obtén tus resultados.


SELECT * FROM cat_ur WHERE id_ur < 35;

SELECT * FROM cat_ur WHERE id_ur > 35;

SELECT * FROM cat_ur WHERE nombrel LIKE "%CIUDAD%";

SELECT COUNT(*) FROM cat_ur;


SELECT * FROM estadis WHERE id_ur = 1;

SELECT * FROM estadis WHERE id_ur > 200;

SELECT COUNT(*) FROM estadis;



- Además de contar registros también puedes realizar operaciones como suma, promedio, máximo o mínimo, determina si aplicando estas operaciones o funciones puedes obtener mejores resultados o simplemente diferentes para tu tabla.

SELECT ano, mes, id_ur, SUM(altas) AS total_altas, SUM(bajas) AS total_bajas FROM estadis GROUP BY id_ur ORDER BY id_ur;

SELECT ano, mes, id_ur, AVG(altas) AS promedio_altas, AVG(bajas) AS promedio_bajas FROM estadis GROUP BY id_ur ORDER BY id_ur;

SELECT ano, mes, id_ur, MAX(altas) AS max_altas, MIN(altas) AS min_altas, MAX(bajas) AS max_bajas, MIN(bajas) AS min_bajas FROM estadis GROUP BY ano;

SELECT ano, mes, id_ur, MAX(altas) AS max_altas, MIN(altas) AS min_altas, MAX(bajas) AS max_bajas, MIN(bajas) AS min_bajas FROM estadis GROUP BY id_ur ORDER BY id_ur;



- Si la tabla tiene un campo que haga referencia a otra tabla, entonces puedes pensar con obtener resultados con la información de ambas tablas, así que puedes usar la operación JOIN para relacionarlas.


SELECT estadis.id_ur, cat_ur.nombrec, SUM(altas), SUM(bajas) FROM estadis INNER JOIN cat_ur ON estadis.id_ur = cat_ur.id_ur GROUP BY estadis.id_ur;



- Si has realizado dos o más consultas en SQL para esta tabla, posiblemente sea una buena idea copiar y guardar tus consultas en un archivo de texto con extensión .sql para que automatices la ejecución de tus scripts.


consultas.sql	
