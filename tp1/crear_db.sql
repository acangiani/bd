/* Script para la creación de la base de datos */
/*
Notas
apt-get install sqlitebrowser
https://sqlite.org/lang_createtable.html

sqlite3 tp1.db < crear_db.sql

*/
/* Maestro */
CREATE TABLE maestro (
    nro_placa INT PRIMARY KEY NOT NULL,
    nombre CHAR(255) NOT NULL,
    graduacion CHAR(255) NOT NULL CHECK (graduacion IN ('1er_dan, 2do_dan', '3er_dan', '4to_dan', '5to_dan', '6to_dan')),
    pais CHAR(255) NOT NULL);
    

/* Escuela */
CREATE TABLE escuela (
    idEscuela INT NOT NULL PRIMARY KEY,
    nombre CHAR(255) NOT NULL,
    nro_placa INT UNIQUE,
    FOREIGN KEY(nro_placa) REFERENCES maestro(nro_placa));

/* Participante */
CREATE TABLE participante (
    /* un ejemplo de la vida real de person id: http://www.taekwondodata.com/farzan-ashourzadeh-fallah.akf6.html */
    nro_cert_grad CHAR(10) NOT NULL PRIMARY KEY,  
    idEscuela INT NOT NULL,
    nombre CHAR(255) NOT NULL,
    /* nombre de archivo */
    foto CHAR(255) NOT NULL,
    /* si requiere orden debera ser int */
    graduacion CHAR(255) NOT NULL CHECK (graduacion IN ('1er_dan, 2do_dan', '3er_dan', '4to_dan', '5to_dan', '6to_dan')),
    FOREIGN KEY(idEscuela) REFERENCES escuela(idEscuela));


/* Alumno */
CREATE TABLE alumno (
    nro_cert_grad CHAR(10) NOT NULL UNIQUE,  
    fecha_de_nacimiento DATE NOT NULL,
    dni INT NOT NULL,
    /* Asumimos que los alumnos se inscriben con genero masculino o femenino determinando la modalidad donde podran participar. */
    sexo CHAR(255) NOT NULL CHECK (sexo IN ('masculino', 'femenino')),
    peso INT NOT NULL,
    coach CHAR(10) NOT NULL,
    FOREIGN KEY(nro_cert_grad) REFERENCES participante(nro_cert_grad));

/* Ring */
CREATE TABLE ring (
    idring INT PRIMARY KEY NOT NULL);

/* Árbitro */
CREATE TABLE arbitro (
    nro_placa INT PRIMARY KEY NOT NULL,
    nombre CHAR(255) NOT NULL,
    graduacion CHAR(255) NOT NULL CHECK (graduacion IN ('1er_dan, 2do_dan', '3er_dan', '4to_dan', '5to_dan', '6to_dan')),
    pais CHAR(255) NOT NULL);
    
/* Modalidad */
CREATE TABLE modalidad (
    idmodalidad INT PRIMARY KEY NOT NULL,
    sexo CHAR(255) NOT NULL CHECK (sexo IN ('masculino', 'femenino')),
    /* PARA Q ES ESTE CAMPO ? */
    participantes INT,
    idring INT,
    nro_placa_presidente INT,
    nro_placa_central INT,
    FOREIGN KEY(idring) REFERENCES ring(idring),
    FOREIGN KEY(nro_placa_presidente) REFERENCES arbitro(nro_placa),
    FOREIGN KEY(nro_placa_central) REFERENCES arbitro(nro_placa));

/* Es\_juez */
CREATE TABLE es_juez (
    nro_placa INT NOT NULL,
    idmodalidad INT NOT NULL,
    FOREIGN KEY(nro_placa) REFERENCES arbitro(nro_placa),
    FOREIGN KEY(idmodalidad) REFERENCES modalidad(idmodalidad));


/* Es\_suplente */
CREATE TABLE es_suplente (
    nro_placa INT NOT NULL,
    idmodalidad INT NOT NULL,
    FOREIGN KEY(nro_placa) REFERENCES arbitro(nro_placa),
    FOREIGN KEY(idmodalidad) REFERENCES modalidad(idmodalidad)); 


/* ModalidadIndividual */
CREATE TABLE modalidadindividual (
    idmodalidad INT UNIQUE NOT NULL,
    graduacion CHAR(255) NOT NULL CHECK (graduacion IN ('1er_dan, 2do_dan', '3er_dan', '4to_dan', '5to_dan', '6to_dan')),
    tipo CHAR(255) NOT NULL CHECK (tipo IN ('combate', 'formas', 'salto', 'rotura de potencia')),
    FOREIGN KEY(idmodalidad) REFERENCES modalidad(idmodalidad));

/* Combate */
CREATE TABLE combate (
    idmodalidad INT UNIQUE NOT NULL,
    /* https://en.wikipedia.org/wiki/Taekwondo_weight_classes */
    peso CHAR(255) NOT NULL CHECK (peso IN ('heavyweight', 'welterweight', 'featherweight', 'flyweight')),
    rango_de_edad CHAR(255) NOT NULL CHECK (rango_de_edad IN ('juveniles', 'adultos')),
    FOREIGN KEY(idmodalidad) REFERENCES modalidadindividual(idmodalidad));

/* Formas */
CREATE TABLE formas (
    idmodalidad INT UNIQUE NOT NULL,
    rango_de_edad CHAR(255) NOT NULL CHECK (rango_de_edad IN ('juveniles', 'adultos')),
    FOREIGN KEY(idmodalidad) REFERENCES modalidadindividual(idmodalidad));

/* Salto */
CREATE TABLE salto (
    idmodalidad INT UNIQUE NOT NULL,
    rango_de_edad CHAR(255) NOT NULL CHECK (rango_de_edad IN ('juveniles', 'adultos')),
    FOREIGN KEY(idmodalidad) REFERENCES modalidadindividual(idmodalidad));

/* Equipo */
CREATE TABLE equipo (
    idEquipo INT PRIMARY KEY NOT NULL,
    nombre CHAR(255) NOT NULL,
    titular1 CHAR(10) NOT NULL,
    titular2 CHAR(10) NOT NULL,
    titular3 CHAR(10) NOT NULL,
    titular4 CHAR(10) NOT NULL,
    titular5 CHAR(10) NOT NULL,
    suplente1 CHAR(10) NOT NULL,
    suplente2 CHAR(10) NOT NULL,
    suplente3 CHAR(10) NOT NULL,
    idmodalidad INT NOT NULL,
    FOREIGN KEY(titular1) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(titular2) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(titular3) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(titular4) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(titular5) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(suplente1) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(suplente2) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(suplente3) REFERENCES alumno(nro_cert_grad),
    FOREIGN KEY(idmodalidad) REFERENCES modalidadindividual(idmodalidad));

/* Participa */
CREATE TABLE participa (
    idmodalidad INT NOT NULL,
    nro_cert_grad INT NOT NULL,
    FOREIGN KEY(idmodalidad) REFERENCES modalidadindividual(idmodalidad),
    FOREIGN KEY(nro_cert_grad) REFERENCES alumno(nro_cert_grad));

/* Ganó */
CREATE TABLE gano (
    idmodalidad INT NOT NULL,
    nro_cert_grad INT NOT NULL,
    puesto INT NOT NULL CHECK (puesto IN (1, 2, 3)),
    FOREIGN KEY(idmodalidad) REFERENCES modalidadindividual(idmodalidad),
    FOREIGN KEY(nro_cert_grad) REFERENCES alumno(nro_cert_grad));

/* Ganó equipos */
CREATE TABLE gano_equipos (
    idmodalidad INT NOT NULL,
    idEquipo INT NOT NULL,
    puesto INT NOT NULL CHECK (puesto IN (1, 2, 3)),
    FOREIGN KEY(idmodalidad) REFERENCES modalidad(idmodalidad),
    FOREIGN KEY(idEquipo) REFERENCES equipo(idEquipo));
