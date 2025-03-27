-- Reporte de Jugadores con Mayor Número de Kills: Muestra el nombre del jugador, su equipo, y el total de kills en un torneo específico.
SELECT j.nombre AS jugador,
       e.nombre AS equipo,
       SUM(est.kills) AS total_kills
FROM Estadistica est
JOIN Jugador j ON est.jugador_id = j.id
JOIN Equipo e ON j.equipo_id = e.id
JOIN Partida p ON est.partida_id = p.id
WHERE p.torneo_id = 1
GROUP BY j.id, e.id
ORDER BY total_kills DESC;

-- Reporte de Equipos con Mayor Número de Victorias: Muestra el nombre del equipo, la cantidad de partidas ganadas y el porcentaje de victorias.
SELECT e.nombre AS equipo,
       COUNT(CASE WHEN p.ganador_id = e.id THEN 1 END) AS partidas_ganadas,
       COUNT(CASE WHEN p.perdedor_id = e.id THEN 1 END) AS partidas_perdidas,
       (COUNT(CASE WHEN p.ganador_id = e.id THEN 1 END) * 100.0 / 
        NULLIF(COUNT(*), 0)) AS porcentaje_victorias
FROM Partida p
JOIN Equipo e ON p.ganador_id = e.id OR p.perdedor_id = e.id
GROUP BY e.id
ORDER BY partidas_ganadas DESC;