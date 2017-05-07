/* 1- El listado de inscriptos en cada categoría para el armado de llaves */

CREATE VIEW modalidades_individuales_por_nombre AS
    SELECT c.idModalidad, "Combate " || c.peso || " " || c.rango_de_edad || " " || mod_i.graduacion || " " || mod.sexo as Nombre
    FROM combate c
    INNER JOIN modalidadindividual mod_i ON c.idModalidad = mod_i.idModalidad
    INNER JOIN modalidad mod ON mod.idModalidad = mod_i.idModalidad

	UNION 
    
	SELECT f.idModalidad, "Formas " || f.rango_de_edad || " " || mod_i.graduacion || " " || mod.sexo as Nombre
    FROM formas f
    INNER JOIN modalidadindividual mod_i ON f.idModalidad = mod_i.idModalidad
    INNER JOIN modalidad mod ON mod.idModalidad = mod_i.idModalidad
	
	UNION
	
    SELECT s.idModalidad, "Salto " || s.rango_de_edad || " " || mod_i.graduacion || " " || mod.sexo as Nombre
    FROM salto s
    INNER JOIN modalidadindividual mod_i ON s.idModalidad = mod_i.idModalidad
    INNER JOIN modalidad mod ON mod.idModalidad = mod_i.idModalidad

	UNION
	
    SELECT mod_i.idModalidad, "Rotura de potencia " || mod_i.graduacion || " " || mod.sexo as Nombre
    FROM modalidadindividual mod_i
    INNER JOIN modalidad mod ON mod.idModalidad = mod_i.idModalidad
	WHERE tipo = "rotura de potencia"

SELECT a.nro_cert_grad, mod.nombre
FROM alumno a
INNER JOIN participa p ON a.nro_cert_grad = p.nro_cert_grad
INNER JOIN modalidades_individuales_por_nombre mod ON p.idModalidad = mod.idModalidad

UNION

SELECT e.nombre, 'Combate por equipos ' || mod.sexo as Nombre
FROM equipo e
INNER JOIN modalidad mod ON mod.idModalidad = e.idModalidad



/* 2- El país que obtuvo mayor cantidad de medallas de oro, plata y bronce. TODO: Equipos */
SELECT m.pais
FROM (
    SELECT m.pais, gano.puesto
    FROM gano
    INNER JOIN alumno a ON a.nro_cert_grad = gano.nro_cert_grad
    INNER JOIN participante p ON p.nro_cert_grad = a.nro_cert_grad
    INNER JOIN escuela e ON e.idEscuela = p.idEscuela
    INNER JOIN maestro m ON m.nro_placa = e.nro_placa
UNION ALL
    SELECT m.pais, gano_equipos.puesto
    FROM gano_equipos
    INNER JOIN equipo eq ON eq.idEquipo = gano_equipos.idEquipo
    INNER JOIN alumno a ON a.nro_cert_grad = eq.titular1
    INNER JOIN participante p ON p.nro_cert_grad = a.nro_cert_grad
    INNER JOIN escuela e ON e.idEscuela = p.idEscuela
    INNER JOIN maestro m ON m.nro_placa = e.nro_placa) as m
GROUP BY m.pais
ORDER BY COUNT(*) DESC
LIMIT 1

/* 3- Sabiendo que las medallas de oro suman 3 puntos, las de plata 2 y las de bronce 1 punto, se quiere realizar un ranking de puntaje por país y otro por escuela. */
/* por escuela */
SELECT idEscuela, sum(puntos) 
FROM
    (SELECT p.idEscuela idEscuela, SUM(CASE
                WHEN g.puesto = 1 THEN 3
                WHEN g.puesto = 2 THEN 2
                ELSE 1
            END) puntos
    FROM gano g, participante p
    WHERE p.nro_cert_grad = g.nro_cert_grad
	GROUP BY idEscuela
    UNION
    SELECT p.idEscuela idEscuela, SUM(CASE
                WHEN g.puesto = 1 THEN 3
                WHEN g.puesto = 2 THEN 2
                ELSE 1
            END) puntos
    FROM gano_equipos g, equipo eq, participante p
    WHERE g.idEquipo = eq.idEquipo
    AND eq.titular1 = p.nro_cert_grad
	GROUP BY idEscuela)
GROUP BY idEscuela
ORDER BY puntos DESC;

/* por pais */
SELECT pais, SUM(puntos) puntos
FROM
    (SELECT m.pais pais, SUM(CASE
                WHEN g.puesto = 1 THEN 3
                WHEN g.puesto = 2 THEN 2
                ELSE 1
            END) puntos
    FROM gano g, participante p, 
        escuela es, maestro m
    WHERE p.nro_cert_grad = g.nro_cert_grad
    AND p.idEscuela = es.idEscuela
    AND es.nro_placa = m.nro_placa
	GROUP BY m.pais
    UNION
    SELECT m.pais pais, SUM(CASE
                WHEN g.puesto = 1 THEN 3
                WHEN g.puesto = 2 THEN 2
                ELSE 1
            END) puntos
    FROM gano_equipos g, equipo eq, participante p, maestro m, escuela es
    WHERE g.idEquipo = eq.idEquipo
    AND eq.titular1 = p.nro_cert_grad
    AND p.idEscuela = es.idEscuela
    AND es.nro_placa = m.nro_placa
	GROUP BY m.pais)
GROUP BY pais
ORDER BY puntos DESC;


/* 4- Dado un competidor, la lista de categorías donde haya participado y el resultado obtenido. */
SELECT p.idmodalidad,  g.puesto
FROM participa p
LEFT JOIN gano g 
    ON g.nro_cert_grad = p.nro_cert_grad
    AND g.idmodalidad = p.idmodalidad
WHERE p.nro_cert_grad = '19856G';

UNION

SELECT eq.idmodalidad,  g.puesto
FROM equipo eq
LEFT JOIN gano_equipos g 
    ON g.idEquipo = eq.idEquipo
    AND g.idmodalidad = eq.idmodalidad
WHERE eq.titular1 = '19856G' OR eq.titular2 = '19856G' OR eq.titular3 = '19856G' OR eq.titular4 = '19856G' OR eq.titular5 = '19856G' OR eq.suplente1 = '19856G' OR eq.suplente2 = '19856G' OR eq.suplente3 = '19856G'; 

/* 5- El medallero por escuela. */
SELECT p.idEscuela, g.idModalidad, g.puesto
FROM gano g, participante p, alumno a
WHERE a.nro_cert_grad = g.nro_cert_grad
AND a.coach = p.nro_cert_grad

UNION

SELECT p.idEscuela, g.idModalidad, g.puesto
FROM gano_equipos g, equipo eq, participante p, alumno a
WHERE g.idEquipo = eq.idEquipo
AND eq.titular1 = a.nro_cert_grad
AND a.coach = p.nro_cert_grad

/* 6- El listado de los árbitros por país. */
SELECT nombre, pais 
FROM arbitro
ORDER BY pais 

/* 7- La lista de todos los árbitros que actuaron como árbitro central en las modalidades de combate */
SELECT a.nro_placa, a.nombre
FROM combate c, modalidad m, arbitro a
WHERE c.idModalidad = m.idModalidad
AND m.nro_placa_central = a.nro_placa

UNION

SELECT a.nro_placa, a.nombre
FROM modalidad m, arbitro a
WHERE m.participantes > 1
AND m.nro_placa_central = a.nro_placa

/* 8- La lista de equipos por país. */
SELECT m.pais, eq.idEquipo
FROM equipo eq, alumno a, participante p, escuela es, maestro m
WHERE eq.titular1 = a.nro_cert_grad
AND a.coach = p.nro_cert_grad
AND p.idEscuela = es.idEscuela
AND es.nro_placa = m.nro_placa
ORDER BY m.pais



