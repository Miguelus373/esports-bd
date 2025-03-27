CREATE TABLE Equipo (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    entrenador VARCHAR(100),
    pais VARCHAR(50)
);

CREATE TABLE Videojuego (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
	genero VARCHAR(100),
	año_lanzamiento INT
);

CREATE TABLE Torneo (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    videojuego_id INT REFERENCES Videojuego(id) ON DELETE CASCADE
);

CREATE TABLE Jugador (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    rol VARCHAR(100) NOT NULL,
    equipo_id INT REFERENCES Equipo(id) ON DELETE CASCADE
);

CREATE TABLE Partida (
    id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    duracion TIME NOT NULL,
    torneo_id INT REFERENCES Torneo(id) ON DELETE CASCADE,
    ganador_id INT REFERENCES Equipo(id) ON DELETE CASCADE,
    perdedor_id INT REFERENCES Equipo(id) ON DELETE CASCADE
);

CREATE TABLE Estadistica (
    id SERIAL PRIMARY KEY,
    kills INT NOT NULL,
    muertes INT NOT NULL,
    asistencias INT NOT NULL,
    jugador_id INT REFERENCES Jugador(id) ON DELETE CASCADE,
    partida_id INT REFERENCES Partida(id) ON DELETE CASCADE
);

CREATE TABLE Participacion (
    id SERIAL PRIMARY KEY,
    equipo_id INT REFERENCES Equipo(id) ON DELETE CASCADE,
    torneo_id INT REFERENCES Torneo(id) ON DELETE CASCADE
);
