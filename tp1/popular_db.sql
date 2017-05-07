INSERT INTO ring (idring) VALUES (1);
INSERT INTO ring (idring) VALUES (2);
INSERT INTO ring (idring) VALUES (3);
INSERT INTO ring (idring) VALUES (4);
INSERT INTO ring (idring) VALUES (5);

INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10001', 'ABDOLLAHEI, Vahid', '6to_dan', 'MEX');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10002', 'DOSSANTOS, Tino', '6to_dan', 'CAN');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10003', 'DOTSON, Kim', '6to_dan', 'USA');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10004', 'FELICISSIMO, Viviane', '6to_dan', 'BRL');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10005', 'TUNG, Ya-Ling', '6to_dan', 'TWN');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10006', 'KIM, So-Young', '6to_dan', 'KOR');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10007', 'CHRISTENSEN, Anne-Mette', '6to_dan', 'FIN');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10008', 'ESTEVES, Carlos', '6to_dan', 'ARG');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10009', 'GABRIEL, Mathias', '6to_dan', 'ITA');
INSERT INTO arbitro (nro_placa, nombre, graduacion, pais) VALUES ('ARB10010', 'GOUVEIA, Arlindo', '6to_dan', 'VEN');
  
  
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (1, 'masculino', 8, 1, 'ARB10001', 'ARB10002');
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (2, 'femenino', 8, 2, 'ARB10003', 'ARB10004');
 
/* Combate - masc y fem - juveniles y adultos */
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (3, 'masculino', 1, 3, 'ARB10005', 'ARB10006');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (3, '5to_dan', 'combate');
INSERT INTO combate (idmodalidad, peso, rango_de_edad) VALUES (3, 'heavyweight', 'juveniles');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (4, 'femenino', 1, 4, 'ARB10009', 'ARB10010');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (4, '5to_dan', 'combate');
INSERT INTO combate (idmodalidad, peso, rango_de_edad) VALUES (4, 'heavyweight', 'juveniles');
 
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (5, 'masculino', 1, 4, 'ARB10001', 'ARB10003');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (5, '5to_dan', 'combate');
INSERT INTO combate (idmodalidad, peso, rango_de_edad) VALUES (5, 'welterweight', 'adultos');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (6, 'femenino', 1, 4, 'ARB10009', 'ARB10010');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (6, '5to_dan', 'combate');
INSERT INTO combate (idmodalidad, peso, rango_de_edad) VALUES (6, 'welterweight', 'adultos');

/* Formas - masc y fem - juveniles y adultos */
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (7, 'masculino', 1, 1, 'ARB10005', 'ARB10006');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (7, '5to_dan', 'formas');
INSERT INTO formas (idmodalidad, rango_de_edad) VALUES (7, 'juveniles');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (8, 'femenino', 1, 2, 'ARB10009', 'ARB10010');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (8, '5to_dan', 'formas');
INSERT INTO formas (idmodalidad, rango_de_edad) VALUES (8, 'juveniles');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (9, 'masculino', 1, 1, 'ARB10001', 'ARB10003');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (9, '5to_dan', 'formas');
INSERT INTO formas (idmodalidad, rango_de_edad) VALUES (9, 'adultos');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (10, 'femenino', 1, 2, 'ARB10009', 'ARB10010');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (10, '5to_dan', 'formas');
INSERT INTO formas (idmodalidad, rango_de_edad) VALUES (10, 'adultos');  

/* Salto - masc y fem - juveniles y adultos */
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (11, 'masculino', 1, 3, 'ARB10008', 'ARB10007');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (11, '5to_dan', 'salto');
INSERT INTO salto (idmodalidad, rango_de_edad) VALUES (11, 'juveniles');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (12, 'femenino', 1, 4, 'ARB10008', 'ARB10009');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (12, '5to_dan', 'salto');
INSERT INTO salto (idmodalidad, rango_de_edad) VALUES (12, 'juveniles');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (13, 'masculino', 1, 3, 'ARB10001', 'ARB10010');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (13, '5to_dan', 'salto');
INSERT INTO salto (idmodalidad, rango_de_edad) VALUES (13, 'adultos');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (14, 'femenino', 1, 4, 'ARB10002', 'ARB10003');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (14, '5to_dan', 'salto');
INSERT INTO salto (idmodalidad, rango_de_edad) VALUES (14, 'adultos');  

/* Rotura de potencia - masc y fem - juveniles y adultos */
INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (15, 'masculino', 1, 3, 'ARB10008', 'ARB10007');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (15, '5to_dan', 'rotura de potencia');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (16, 'femenino', 1, 4, 'ARB10008', 'ARB10009');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (16, '5to_dan', 'rotura de potencia');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (17, 'masculino', 1, 3, 'ARB10001', 'ARB10010');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (17, '5to_dan', 'rotura de potencia');

INSERT INTO modalidad (idmodalidad, sexo, participantes, idring, nro_placa_presidente, nro_placa_central) VALUES (18, 'femenino', 1, 4, 'ARB10002', 'ARB10003');
INSERT INTO modalidadindividual (idmodalidad, graduacion, tipo) VALUES (18, '5to_dan', 'rotura de potencia');



/*           *********** Escuela el Dragon de Paternal ************           */

/* Una escuela de ARG, maestro y varios alumnos. Todos 5to_dan. */
INSERT INTO `maestro`(`nro_placa`,`nombre`,`graduacion`,`pais`) VALUES (7000, 'Nam Sung Choi','6to_dan','ARG');
INSERT INTO `escuela`(`idEscuela`,`nombre`,`nro_placa`) VALUES (1, 'Dragon de Paternal' ,7000);

INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('19856G', 1 , 'GUZMAN, Lucas', 'foto1.jpg', '5to_dan');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('19586G', 1 , 'Peperina, Matias', 'foto123.jpg', '6to_dan');

INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('19856G', '1990-04-12' , 23444555, 'masculino', 65, '19586G');

INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('65S', 1 , 'ACCIAJO, Natalia', 'foto2.jpg', '5to_dan');

INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('65S', '1990-05-12' , 22444555, 'femenino', 55, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('99M', 1 , 'AGUERDO, Mariana', 'foto3.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('99M', '1993-02-20' , 22434355, 'femenino', 56, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('1111T', 1 , 'CARTOSSA, Pablo', 'foto4.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('1111T', '1976-03-12' , 26434355, 'masculino', 64, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('4749E', 1 , 'MOLINA, Carlos', 'foto5.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('4749E', '1983-06-12' , 27434455, 'masculino', 70, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('5437K', 1 , 'PECINA, Karina', 'foto6.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('5437K', '1992-10-12' , 30434423, 'femenino', 52, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('5331X', 1 , 'PALMADES, Alejandro ', 'foto7.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('5331X', '1975-07-10' , 26342345, 'masculino', 64, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('6076B', 1 , 'RUBINO, Matias', 'foto8.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('6076B', '1980-02-12' , 26814453, 'masculino', 69, '19586G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('6002D', 1 , 'SALADINO, Marina', 'foto9.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('6002D', '1992-10-12' , 30434423, 'femenino', 52, '19586G');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (3, '19856G');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (7, '19856G');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (11, '19856G');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (3, '1111T');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (7, '1111T');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (11, '1111T');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (3, '5331X');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (7, '5331X');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (11, '5331X');


INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (4, '65S');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (8, '65S');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (12, '65S');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (4, '5437K');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (8, '5437K');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (12, '5437K');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (4, '6002D');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (8, '6002D');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (12, '6002D');


INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('19856G', 3, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('19856G', 7, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('19856G', 11, 1);

INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('1111T', 3, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('1111T', 7, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('1111T', 11, 2);

INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('5331X', 3, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('5331X', 7, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('5331X', 11, 3);


INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('65S', 4, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('65S', 8, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('65S', 12, 1);

INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('5437K', 4, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('5437K', 8, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('5437K', 12, 2);

INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('6002D', 4, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('6002D', 8, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('6002D', 12, 3);

INSERT INTO equipo (idEquipo, nombre, titular1, titular2, titular3, titular4, titular5, suplente1, suplente2, suplente3, idmodalidad ) VALUES (0, 'Paternal Team' , '19856G', '65S', '99M', '1111T', '4749E', '5437K', '5331X', '6076B', 1);

INSERT INTO gano_equipos (idmodalidad, idEquipo, puesto) VALUES (1, 0, 1);



/*           *********** Escuela  Extreme Fighters Roma  ************           */

INSERT INTO `maestro`(`nro_placa`,`nombre`,`graduacion`,`pais`) VALUES (7001, 'Aurelio Boccea','6to_dan','ITA');
INSERT INTO `escuela`(`idEscuela`,`nombre`,`nro_placa`) VALUES (2, 'Extreme Fighters' ,7001);

INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('19787G', 2 , 'Romulo, Remo', 'foto1234.jpg', '6to_dan');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('19877G', 2 , 'ACHILLE, Caruso', 'foto1.jpg', '5to_dan');

INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('19877G', '1990-04-12' , 23414955, 'masculino', 65, '19787G');

INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('77S', 2 , 'AGARBATI, Sabrina', 'foto2.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('77S', '1990-05-12' , 22414955, 'femenino', 55, '19787G');

INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('76M', 2 , 'BARDELLI, Sara', 'foto3.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('76M', '1993-02-20' , 22414955, 'femenino', 56, '19787G');

INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('1176T', 2 , 'BAGLIVO, Luigi', 'foto4.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('1176T', '1976-03-12' , 26414955, 'masculino', 64, '19787G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('4769E', 2 , 'BILIA, Massimo', 'foto5.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('4769E', '1983-06-12' , 27414955, 'masculino', 70, '19787G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('5767K', 2 , 'CALVANO, Sonia', 'foto6.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('5767K', '1992-10-12' , 30414923, 'femenino', 52, '19787G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('7631X', 2 , 'BUONOCORE, Gennaro', 'foto7.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('7631X', '1975-07-10' , 26314945, 'masculino', 64, '19787G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('7676B', 2 , 'RUBINO, Matias', 'foto8.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('7676B', '1980-02-12' , 26814953, 'masculino', 69, '19787G');
INSERT INTO `participante`(`nro_cert_grad`,`idEscuela`,`nombre`,`foto`,`graduacion`) VALUES ('6076D', 2 , 'CONTE, Monica', 'foto9.jpg', '5to_dan');
INSERT INTO `alumno`(`nro_cert_grad`,`fecha_de_nacimiento`,`dni`,`sexo`,`peso`, `coach`) VALUES ('6076D', '1992-10-12' , 30414923, 'femenino', 52, '19787G');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (3, '19877G');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (7, '19877G');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (11, '19877G');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (3, '4769E');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (7, '4769E');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (11, '4769E');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (3, '7631X');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (7, '7631X');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (11, '7631X');


INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (4, '76M');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (8, '76M');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (12, '76M');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (4, '5767K');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (8, '5767K');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (12, '5767K');

INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (4, '6076D');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (8, '6076D');
INSERT INTO participa (idmodalidad, nro_cert_grad) VALUES (12, '6076D');


INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('4769E', 5, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('4769E', 9, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('4769E', 13, 1);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('4769E', 17, 1);

INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('7631X', 5, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('7631X', 9, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('7631X', 13, 2);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('4769E', 17, 2);

INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('19877G', 5, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('19877G', 9, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('19877G', 13, 3);
INSERT INTO gano (nro_cert_grad, idmodalidad, puesto) VALUES ('4769E', 17, 3);


INSERT INTO equipo (idEquipo, nombre, titular1, titular2, titular3, titular4, titular5, suplente1, suplente2, suplente3, idmodalidad ) VALUES (1, 'Extreme Team' , '19877G', '1176T', '4769E', '7631X', '7676B', '6076D', '5767K', '76M', 1);

INSERT INTO gano_equipos (idmodalidad, idEquipo, puesto) VALUES (1, 1, 2);
