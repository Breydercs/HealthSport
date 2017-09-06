CREATE DATABASE dbo_HealthSport
USE dbo_HealthSport

CREATE TABLE tbl_deportes(
codigo_deporte INT PRIMARY KEY,
nombre_deporte VARCHAR(50) NOT NULL)

CREATE TABLE tbl_modalidades(
codigo_modalidad INT PRIMARY KEY,
modalidad VARCHAR(50) NOT NULL)

CREATE TABLE tbl_administradores(
codigo_administrador INT PRIMARY KEY,
nombre_administrador VARCHAR(50) NOT NULL,
apellido_administrador VARCHAR(50) NOT NULL,
usuario VARCHAR(50) NOT NULL,
clave VARCHAR(50) NOT NULL,
documento_administrador VARCHAR(50) NOT NULL,
celular_administrador VARCHAR(50) NOT NULL,
correo_administrador VARCHAR(50) NOT NULL)

CREATE TABLE tbl_goleadores(
codigo_goleador INT PRIMARY KEY,
nombre_goleador VARCHAR(50) NOT NULL,
partidos_jugados INT NOT NULL,
goles INT NOT NULL)

CREATE TABLE tbl_torneos(
codigo_torneo INT IDENTITY(1,1) PRIMARY KEY,
codigo_deporte INT,
codigo_modalidad INT,
codigo_administrador INT,
codigo_goleador INT,
FOREIGN KEY(codigo_deporte) REFERENCES tbl_deportes (codigo_deporte),
FOREIGN KEY(codigo_modalidad) REFERENCES tbl_modalidades (codigo_modalidad),
FOREIGN KEY(codigo_administrador) REFERENCES tbl_administradores (codigo_administrador),
FOREIGN KEY(codigo_goleador) REFERENCES tbl_goleadores (codigo_goleador))

CREATE TABLE tbl_equipos(
codigo_equipo INT PRIMARY KEY,
nombre_equipo VARCHAR(50) NOT NULL,
imagen_equipo VARCHAR(255) NOT NULL,
codigo_torneo INT, FOREIGN KEY(codigo_torneo) REFERENCES tbl_torneos (codigo_torneo))

CREATE TABLE tbl_posiciones(
codigo_posicion INT PRIMARY KEY,
partidos_jugados INT NOT NULL,
partidos_ganados INT NOT NULL,
partidos_empatados INT NOT NULL,
partidos_paerdidos INT NOT NULL,
goles_a_favor INT NOT NULL,
goles_en_contra INT NOT NULL,
diferencia INT NOT NULL) 

CREATE TABLE tbl_jugadores(
codigo_jugador INT PRIMARY KEY,
nombre_jugador VARCHAR(50) NOT NULL,
apellidos_jugador VARCHAR(50) NOT NULL,
documento_jugador VARCHAR(50) NOT NULL,
edad_jugador VARCHAR(50) NOT NULL,
celular_jugador VARCHAR(50) NOT NULL,
correo_jugador VARCHAR(50) NOT NULL)

CREATE TABLE equipos_jugadores(
codigo_jugador INT,
codigo_equipo INT,
FOREIGN KEY(codigo_jugador) REFERENCES tbl_jugadores (codigo_jugador),
FOREIGN KEY(codigo_equipo) REFERENCES tbl_equipos (codigo_equipo))

CREATE TABLE tbl_sanciones(
codigo_sancion INT PRIMARY KEY,
sancion VARCHAR(50) NOT NULL)
 
CREATE TABLE sanciones_jugadores(
codigo_jugador INT,
codigo_sancion INT,
FOREIGN KEY(codigo_jugador) REFERENCES tbl_jugadores (codigo_jugador),
FOREIGN KEY(codigo_sancion) REFERENCES tbl_sanciones (codigo_sancion))

CREATE TABLE tbl_escenarios(
codigo_escenario INT PRIMARY KEY,
escenario VARCHAR(50) NOT NULL,
localizacion VARCHAR(50) NOT NULL,
disponibilidad VARCHAR(50) NOT NULL,
horario VARCHAR(50) NOT NULL)

CREATE TABLE tbl_resultados(
codigo_resultado INT PRIMARY KEY,
equipo_local VARCHAR(50) NOT NULL,
equipo_visitante VARCHAR(50) NOT NULL,
partido_empatado BIT NULL,
goles_equipo_local INT NOT NULL,
goles_equipo_visitante INT NOT NULL,
goles_general INT NOT NULL)

CREATE TABLE tbl_programaciones(
codigo_programacion INT IDENTITY(1,1) PRIMARY KEY,
fecha DATE NOT NULL,
lugar VARCHAR(50) NOT NULL,
hora DATETIME NOT NULL,
aplazamiento BIT NULL,
codigo_resultado INT,
FOREIGN KEY(codigo_resultado) REFERENCES tbl_resultados (codigo_resultado))

CREATE TABLE tbl_partidos(
codigo_partido INT PRIMARY KEY,
codigo_escenario INT,
codigo_programacion INT,
FOREIGN KEY(codigo_escenario) REFERENCES tbl_escenarios (codigo_escenario),
FOREIGN KEY(codigo_programacion) REFERENCES tbl_programaciones (codigo_programacion))

CREATE TABLE tbl_arbitros(
codigo_arbitro INT PRIMARY KEY,
nombre_arbitro VARCHAR(50) NOT NULL,
nombre_apellidos VARCHAR(50) NOT NULL,
especializacion VARCHAR(50) NOT NULL,
documento_arbitro VARCHAR(50) NOT NULL,
celular_arbitro VARCHAR(50) NOT NULL,
correo_arbitro VARCHAR(50) NOT NULL)

CREATE TABLE partidos_arbitros(
codigo_partido INT,
codigo_arbitro INT,
FOREIGN KEY(codigo_partido) REFERENCES tbl_partidos (codigo_partido),
FOREIGN KEY(codigo_arbitro) REFERENCES tbl_arbitros (codigo_arbitro))



/* PROCEDURE tbl_administradores */

CREATE PROCEDURE insert_administradores(
@cod_adm INT,
@nom_adm VARCHAR (50),
@ape_adm VARCHAR (50),
@usu VARCHAR (50),
@cla VARCHAR (50),
@doc_adm VARCHAR (50),
@cel_adm VARCHAR (50),
@cor_adm VARCHAR (50))
AS
BEGIN
INSERT INTO tbl_administradores VALUES (@cod_adm,@nom_adm,@ape_adm,@usu,@cla,@doc_adm,@cel_adm,@cor_adm)
END

select * from tbl_administradores

$nombre = $_POST['name'];

CREATE PROCEDURE consultar_administradores(
@cod_adm INT)
AS
BEGIN
SELECT * FROM tbl_administradores WHERE codigo_administrador = @cod_adm
END
