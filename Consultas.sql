-- 1. Listar todos los jugadores que tienen un rol específico.
SELECT * FROM Jugador WHERE rol = 'Mage';

-- 2. Mostrar las partidas que duraron más de 30 minutos en un torneo específico.
SELECT * FROM Partida WHERE torneo_id = 3 AND duracion > '00:30:00';

-- 3. Calcular el total de kills realizados por todos los jugadores en un torneo específico.
SELECT SUM(e.kills) AS total_kills
FROM Estadistica e
JOIN Partida p ON e.partida_id = p.id
WHERE p.torneo_id = 2;

-- 4. Listar los torneos que ya han finalizado.
SELECT * FROM Torneo WHERE fecha_fin < CURRENT_DATE;

-- 5. Mostrar el equipo con más partidas ganadas en un torneo específico.
SELECT ganador_id, COUNT(*) AS partidas_ganadas
FROM Partida
WHERE torneo_id = 3
GROUP BY ganador_id
ORDER BY partidas_ganadas DESC
LIMIT 1;

-- 6. Listar todos los jugadores y la cantidad de partidas en las que han participado.
SELECT j.nickname, COUNT(p.id) AS partidas_participadas
FROM Jugador j
JOIN Estadistica e ON j.id = e.jugador_id
JOIN Partida p ON e.partida_id = p.id
GROUP BY j.id;

-- 7. Mostrar las estadísticas de un equipo en todas las partidas de un torneo.
SELECT e.nombre AS equipo, SUM(est.kills) AS total_kills, SUM(est.muertes) AS total_muertes, SUM(est.asistencias) AS total_asistencias
FROM Estadistica est
JOIN Jugador j ON est.jugador_id = j.id
JOIN Partida p ON est.partida_id = p.id
JOIN Equipo e ON j.equipo_id = e.id
WHERE e.id = 1 AND p.torneo_id = 2
GROUP BY e.id;
