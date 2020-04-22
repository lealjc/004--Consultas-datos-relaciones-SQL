SELECT * FROM estadis;

SELECT * FROM cat_ur;

SELECT * FROM cat_ur WHERE id_ur < 35;

SELECT * FROM cat_ur WHERE id_ur > 35;

SELECT * FROM cat_ur WHERE nombrel LIKE "%CIUDAD%";

SELECT COUNT(*) FROM cat_ur;

SELECT * FROM estadis WHERE id_ur = 1;

SELECT * FROM estadis WHERE id_ur > 200;

SELECT COUNT(*) FROM estadis;

SELECT ano, mes, id_ur, SUM(altas) AS total_altas, SUM(bajas) AS total_bajas FROM estadis GROUP BY id_ur ORDER BY id_ur;

SELECT ano, mes, id_ur, AVG(altas) AS promedio_altas, AVG(bajas) AS promedio_bajas FROM estadis GROUP BY id_ur ORDER BY id_ur;

SELECT ano, mes, id_ur, MAX(altas) AS max_altas, MIN(altas) AS min_altas, MAX(bajas) AS max_bajas, MIN(bajas) AS min_bajas FROM estadis GROUP BY ano;

SELECT ano, mes, id_ur, MAX(altas) AS max_altas, MIN(altas) AS min_altas, MAX(bajas) AS max_bajas, MIN(bajas) AS min_bajas FROM estadis GROUP BY id_ur ORDER BY id_ur;

SELECT estadis.id_ur, cat_ur.nombrec, SUM(altas), SUM(bajas) FROM estadis INNER JOIN cat_ur ON estadis.id_ur = cat_ur.id_ur GROUP BY estadis.id_ur;	