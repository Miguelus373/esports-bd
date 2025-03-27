INSERT INTO Videojuego (nombre) VALUES
('League of Legends'),
('Dota 2'),
('Smite');

INSERT INTO Equipo (nombre, entrenador, pais) VALUES
('Los Guerreros', 'Carlos Mendoza', 'Spain'),
('Los Titanes', 'Anna Petrov', 'Russia'),
('Los Vengadores', 'John Smith', 'USA'),
('Los Dragones', 'Li Wei', 'China'),
('Los Gladiadores', 'Sofia Rossi', 'Italy');

INSERT INTO Torneo (nombre, fecha_inicio, fecha_fin, videojuego_id) VALUES
('Liga Mundial de MOBA', '2025-04-01', '2025-06-30', 1),
('Copa Internacional de MOBA', '2025-07-01', '2025-09-30', 2),
('Campeonato Nacional de MOBA', '2025-10-01', '2025-12-31', 3);

INSERT INTO Jugador (nombre, nickname, rol, equipo_id) VALUES
('Alejandro Torres', 'ElDemonio', 'Assassin', 1),
('Maria Gonzalez', 'LaReina', 'Mage', 1),
('Vladimir Ivanov', 'VladTheImpaler', 'Tank', 2),
('Dmitry Sokolov', 'DmitryTheGreat', 'Support', 2),
('Emily Johnson', 'EmiJ', 'Marksman', 3),
('Michael Brown', 'MikeTheBeast', 'Fighter', 3),
('Chen Liu', 'DragonSlayer', 'Assassin', 4),
('Xiaomei Zhang', 'XiaoMagic', 'Mage', 4),
('Giovanni Bianchi', 'GioTheGreat', 'Tank', 5),
('Francesca Verdi', 'Franny', 'Support', 5),
('Lucas Silva', 'LucaTheHunter', 'Marksman', 1),
('Natalia Petrova', 'Natasha', 'Fighter', 2),
('Oliver White', 'Ollie', 'Assassin', 3),
('Sophia Green', 'SophieG', 'Mage', 4),
('Liam Black', 'LiamTheBrave', 'Tank', 5);

INSERT INTO Partida (fecha, duracion, torneo_id, ganador_id, perdedor_id) VALUES
('2025-04-05', '00:45:00', 1, 1, 2),
('2025-04-06', '00:50:00', 1, 3, 4),
('2025-04-07', '00:40:00', 1, 2, 5),
('2025-04-08', '00:25:00', 1, 1, 3),
('2025-04-09', '00:30:00', 1, 4, 5),
('2025-07-02', '00:48:00', 2, 2, 1),
('2025-07-03', '00:52:00', 2, 5, 3),
('2025-07-04', '00:47:00', 2, 4, 1),
('2025-07-05', '00:53:00', 2, 3, 2),
('2025-07-06', '00:49:00', 2, 1, 5),
('2025-10-02', '00:26:00', 3, 2, 4),
('2025-10-03', '00:54:00', 3, 5, 1),
('2025-10-04', '00:39:00', 3, 3, 2),
('2025-10-05', '00:50:00', 3, 4, 5),
('2025-10-06', '00:45:00', 3, 1, 3),
('2025-10-07', '00:42:00', 3, 2, 4),
('2025-10-08', '00:38:00', 3, 5, 1),
('2025-10-09', '00:31:00', 3, 3, 2),
('2025-10-10', '00:44:00', 3, 4, 5),
('2025-10-11', '00:37:00', 3, 1, 3),
('2025-10-12', '00:29:00', 3, 2, 4);

INSERT INTO Estadistica (kills, muertes, asistencias, jugador_id, partida_id) VALUES
(10, 2, 5, 1, 1),
(5, 3, 7, 2, 1),
(8, 1, 4, 3, 2),
(6, 4, 2, 4, 2),
(12, 0, 3, 5, 3),
(7, 2, 6, 6, 3),
(9, 3, 5, 7, 4),
(4, 5, 8, 8, 4),
(11, 1, 2, 9, 5),
(3, 6, 4, 10, 5),
(10, 2, 5, 11, 6),
(5, 3, 7, 12, 6),
(8, 1, 4, 13, 7),
(6, 4, 2, 14, 7),
(12, 0, 3, 15, 8),
(7, 2, 6, 1, 9),
(9, 3, 5, 2, 10),
(4, 5, 8, 3, 11),
(11, 1, 2, 4, 12),
(3, 6, 4, 5, 13),
(10, 2, 5, 6, 14);