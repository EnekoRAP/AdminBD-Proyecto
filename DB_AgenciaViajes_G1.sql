--------------------------------------------------------------------------------------------------------------------------------------
////////Creaci�n de Usuario////////
--------------------------------------------------------------------------------------------------------------------------------------

-- Crear un usuario
CREATE USER Admin01 IDENTIFIED BY Admin01;
GRANT CONNECT,RESOURCE,DBA TO Admin01;

-- Otorgar privilegios 
GRANT CREATE SESSION TO Admin01;
GRANT CREATE TABLE TO Admin01;
GRANT CREATE ANY TABLE TO Admin01;
GRANT SELECT ANY TABLE TO Admin01;
GRANT INSERT ANY TABLE TO Admin01;
GRANT UPDATE ANY TABLE TO Admin01;
GRANT DELETE ANY TABLE TO Admin01;
GRANT DROP ANY TABLE TO Admin01;
GRANT ALTER ANY TABLE TO Admin01;
GRANT EXECUTE ANY PROCEDURE TO Admin01;
GRANT CREATE ANY PROCEDURE TO Admin01;
GRANT DROP ANY PROCEDURE TO Admin01;
GRANT ALTER ANY PROCEDURE TO Admin01;

--------------------------------------------------------------------------------------------------------------------------------------
//////// Creaci�n de TableSpace ////////
--------------------------------------------------------------------------------------------------------------------------------------

-- Creaci�n de tablespace
CREATE TABLESPACE TableSpaceProyecto
DATAFILE 'C:\Oracle\proyecto\TableSpaceProyecto.dbf' 
SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED;
  
-- Aignar tablespace por defecto
ALTER USER Admin01 DEFAULT TABLESPACE TableSpaceProyecto;

--------------------------------------------------------------------------------------------------------------------------------------
//////// Creaci�n de Tablas ////////
--------------------------------------------------------------------------------------------------------------------------------------

-- Tabla: Clientes
CREATE TABLE TBL_Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15),
    Direccion VARCHAR(100)
);

-- Tabla: Empleados
CREATE TABLE TBL_Empleados (
    ID_Empleado INT PRIMARY KEY ,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Cargo VARCHAR(50),
    Telefono VARCHAR(15),
    Email VARCHAR(100)
);

-- Tabla: Hoteles
CREATE TABLE TBL_Hoteles (
    ID_Hotel INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Ubicacion VARCHAR(100),
    Categoria VARCHAR(20),
    Precio_Noche DECIMAL(10,2)
);

-- Tabla: Vuelos
CREATE TABLE TBL_Vuelos (
    ID_Vuelo INT PRIMARY KEY,
    Aerolinea VARCHAR(50),
    Origen VARCHAR(50),
    Destino VARCHAR(50),
    Fecha_Salida DATE,
    Fecha_Llegada DATE,
    Precio DECIMAL(10,2)
);

-- Tabla: Tours
CREATE TABLE TBL_Tours (
    ID_Tour INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Descripcion CLOB,
    Duracion INT,
    Precio DECIMAL(10,2)
);

-- Tabla: Reservas
CREATE TABLE TBL_Reservas (
    ID_Reserva INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Vuelo INT,
    ID_Hotel INT,
    FOREIGN KEY (ID_Cliente) REFERENCES TBL_Clientes(ID_Cliente),
    FOREIGN KEY (ID_Vuelo) REFERENCES TBL_Vuelos(ID_Vuelo),
    FOREIGN KEY (ID_Hotel) REFERENCES TBL_Hoteles(ID_Hotel)
);

-- Tabla: Pagos
CREATE TABLE TBL_Pagos (
    ID_Pago INT PRIMARY KEY,
    Monto DECIMAL(10,2) NOT NULL,
    Fecha_Pago DATE NOT NULL,
    Metodo_Pago VARCHAR(20),
    ID_Reserva INT,
    FOREIGN KEY (ID_Reserva) REFERENCES TBL_Reservas(ID_Reserva)
);

-- Tabla: Reservas_Tours
CREATE TABLE TBL_Reservas_Tours (
    ID_Reserva_Tour INT PRIMARY KEY ,
    ID_Reserva INT,
    ID_Tour INT,
    FOREIGN KEY (ID_Reserva) REFERENCES TBL_Reservas(ID_Reserva),
    FOREIGN KEY (ID_Tour) REFERENCES TBL_Tours(ID_Tour)
);

--------------------------------------------------------------------------------------------------------------------------------------
//////// Inserts de las Tablas ////////
--------------------------------------------------------------------------------------------------------------------------------------

-- Inserts de la tabla: Clientes
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (1, 'Juan', 'P�rez', 'juan.perez@example.com', '123456789', 'Calle 1, Ciudad A');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (2, 'Maria', 'Gonzalez', 'maria.gonzalez@example.com', '987654321', 'Calle 2, Ciudad B');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (3, 'Carlos', 'Lopez', 'carlos.lopez@example.com', '111222333', 'Calle 3, Ciudad C');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (4, 'Ana', 'Martinez', 'ana.martinez@example.com', '444555666', 'Calle 4, Ciudad D');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (5, 'Pedro', 'Ramirez', 'pedro.ramirez@example.com', '777888999', 'Calle 5, Ciudad E');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (6, 'Laura', 'Torres', 'laura.torres@example.com', '101010101', 'Calle 6, Ciudad F');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (7, 'Luis', 'Diaz', 'luis.diaz@example.com', '202020202', 'Calle 7, Ciudad G');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (8, 'Sofia', 'Morales', 'sofia.morales@example.com', '303030303', 'Calle 8, Ciudad H');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (9, 'Jorge', 'Vargas', 'jorge.vargas@example.com', '404040404', 'Calle 9, Ciudad I');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (10, 'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '505050505', 'Calle 10, Ciudad J');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (11, 'Diego', 'Herrera', 'diego.herrera@example.com', '606060606', 'Calle 11, Ciudad K');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (12, 'Camila', 'Rojas', 'camila.rojas@example.com', '707070707', 'Calle 12, Ciudad L');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (13, 'Fernando', 'Mendoza', 'fernando.mendoza@example.com', '808080808', 'Calle 13, Ciudad M');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (14, 'Valeria', 'Navarro', 'valeria.navarro@example.com', '909090909', 'Calle 14, Ciudad N');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (15, 'Oscar', 'Cruz', 'oscar.cruz@example.com', '111333555', 'Calle 15, Ciudad O');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (16, 'Carla', 'Jimenez', 'carla.jimenez@example.com', '222444666', 'Calle 16, Ciudad P');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (17, 'Martin', 'Flores', 'martin.flores@example.com', '333555777', 'Calle 17, Ciudad Q');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (18, 'Paula', 'Sanchez', 'paula.sanchez@example.com', '444666888', 'Calle 18, Ciudad R');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (19, 'Hugo', 'Pena', 'hugo.pena@example.com', '555777999', 'Calle 19, Ciudad S');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) 
VALUES (20, 'Lucia', 'Aguilar', 'lucia.aguilar@example.com', '666888000', 'Calle 20, Ciudad T');
INSERT INTO TBL_Clientes VALUES (21, 'Sebastian', 'Rios', 'sebastian.rios@example.com', '700700700', 'Calle 21, Ciudad U');
INSERT INTO TBL_Clientes VALUES (22, 'Andrea', 'Ortiz', 'andrea.ortiz@example.com', '800800800', 'Calle 22, Ciudad V');
INSERT INTO TBL_Clientes VALUES (23, 'Eduardo', 'Reyes', 'eduardo.reyes@example.com', '900900900', 'Calle 23, Ciudad W');
INSERT INTO TBL_Clientes VALUES (24, 'Nadia', 'Carrillo', 'nadia.carrillo@example.com', '123123123', 'Calle 24, Ciudad X');
INSERT INTO TBL_Clientes VALUES (25, 'Victor', 'Lara', 'victor.lara@example.com', '234234234', 'Calle 25, Ciudad Y');
INSERT INTO TBL_Clientes VALUES (26, 'Monica', 'Fuentes', 'monica.fuentes@example.com', '345345345', 'Calle 26, Ciudad Z');
INSERT INTO TBL_Clientes VALUES (27, 'Ricardo', 'Vega', 'ricardo.vega@example.com', '456456456', 'Calle 27, Ciudad AA');
INSERT INTO TBL_Clientes VALUES (28, 'Elena', 'Nunez', 'elena.nunez@example.com', '567567567', 'Calle 28, Ciudad BB');
INSERT INTO TBL_Clientes VALUES (29, 'Adrian', 'Guerrero', 'adrian.guerrero@example.com', '678678678', 'Calle 29, Ciudad CC');
INSERT INTO TBL_Clientes VALUES (30, 'Patricia', 'Maldonado', 'patricia.maldonado@example.com', '789789789', 'Calle 30, Ciudad DD');
INSERT INTO TBL_Clientes VALUES (31, 'Felipe', 'Castro', 'felipe.castro@example.com', '890890890', 'Calle 31, Ciudad EE');
INSERT INTO TBL_Clientes VALUES (32, 'Daniela', 'Silva', 'daniela.silva@example.com', '101101101', 'Calle 32, Ciudad FF');
INSERT INTO TBL_Clientes VALUES (33, 'Hector', 'Cabrera', 'hector.cabrera@example.com', '202202202', 'Calle 33, Ciudad GG');
INSERT INTO TBL_Clientes VALUES (34, 'Clara', 'Rivera', 'clara.rivera@example.com', '303303303', 'Calle 34, Ciudad HH');
INSERT INTO TBL_Clientes VALUES (35, 'Marcos', 'Salinas', 'marcos.salinas@example.com', '404404404', 'Calle 35, Ciudad II');
INSERT INTO TBL_Clientes VALUES (36, 'Alicia', 'Montes', 'alicia.montes@example.com', '505505505', 'Calle 36, Ciudad JJ');
INSERT INTO TBL_Clientes VALUES (37, 'Tom�s', 'Ib��ez', 'tomas.ibanez@example.com', '606606606', 'Calle 37, Ciudad KK');
INSERT INTO TBL_Clientes VALUES (38, 'Vanesa', 'Ruiz', 'vanesa.ruiz@example.com', '707707707', 'Calle 38, Ciudad LL');
INSERT INTO TBL_Clientes VALUES (39, 'Julian', 'Ponce', 'julian.ponce@example.com', '808808808', 'Calle 39, Ciudad MM');
INSERT INTO TBL_Clientes VALUES (40, 'Beatriz', 'Hidalgo', 'beatriz.hidalgo@example.com', '909909909', 'Calle 40, Ciudad NN');
INSERT INTO TBL_Clientes VALUES (41, 'Rodrigo', 'Acosta', 'rodrigo.acosta@example.com', '111111111', 'Calle 41, Ciudad OO');
INSERT INTO TBL_Clientes VALUES (42, 'Natalia', 'Esquivel', 'natalia.esquivel@example.com', '222222222', 'Calle 42, Ciudad PP');
INSERT INTO TBL_Clientes VALUES (43, 'Samuel', 'Beltran', 'samuel.beltran@example.com', '333333333', 'Calle 43, Ciudad QQ');
INSERT INTO TBL_Clientes VALUES (44, 'Adriana', 'Le�n', 'adriana.leon@example.com', '444444444', 'Calle 44, Ciudad RR');
INSERT INTO TBL_Clientes VALUES (45, 'Javier', 'Mora', 'javier.mora@example.com', '555555555', 'Calle 45, Ciudad SS');
INSERT INTO TBL_Clientes VALUES (46, 'Liliana', 'Soto', 'liliana.soto@example.com', '666666666', 'Calle 46, Ciudad TT');
INSERT INTO TBL_Clientes VALUES (47, 'Rafael', 'Camacho', 'rafael.camacho@example.com', '777777777', 'Calle 47, Ciudad UU');
INSERT INTO TBL_Clientes VALUES (48, 'Claudia', 'Meza', 'claudia.meza@example.com', '888888888', 'Calle 48, Ciudad VV');
INSERT INTO TBL_Clientes VALUES (49, 'Pablo', 'Ramos', 'pablo.ramos@example.com', '999999999', 'Calle 49, Ciudad WW');
INSERT INTO TBL_Clientes VALUES (50, 'Luciana', 'Nieves', 'luciana.nieves@example.com', '121212121', 'Calle 50, Ciudad XX');
INSERT INTO TBL_Clientes VALUES (51, 'Gabriel', 'Suarez', 'gabriel.suarez@example.com', '232323232', 'Calle 51, Ciudad YY');
INSERT INTO TBL_Clientes VALUES (52, 'Monica', 'Cortes', 'monica.cortes@example.com', '343434343', 'Calle 52, Ciudad ZZ');
INSERT INTO TBL_Clientes VALUES (53, 'Ernesto', 'L�pez', 'ernesto.lopez@example.com', '454545454', 'Calle 53, Ciudad AAA');
INSERT INTO TBL_Clientes VALUES (54, 'Elisa', 'Zamora', 'elisa.zamora@example.com', '565656565', 'Calle 54, Ciudad BBB');
INSERT INTO TBL_Clientes VALUES (55, 'Ivan', 'Palacios', 'ivan.palacios@example.com', '676767676', 'Calle 55, Ciudad CCC');
INSERT INTO TBL_Clientes VALUES (56, 'Patricia', 'Cervantes', 'patricia.cervantes@example.com', '787878787', 'Calle 56, Ciudad DDD');
INSERT INTO TBL_Clientes VALUES (57, 'Mariano', 'Solano', 'mariano.solano@example.com', '898989898', 'Calle 57, Ciudad EEE');
INSERT INTO TBL_Clientes VALUES (58, 'Renata', 'Arce', 'renata.arce@example.com', '909090909', 'Calle 58, Ciudad FFF');
INSERT INTO TBL_Clientes VALUES (59, 'Victor', 'Garza', 'victor.garza@example.com', '101101101', 'Calle 59, Ciudad GGG');
INSERT INTO TBL_Clientes VALUES (60, 'Lorena', 'Vera', 'lorena.vera@example.com', '202202202', 'Calle 60, Ciudad HHH');
INSERT INTO TBL_Clientes VALUES (61, 'Francisco', 'Juarez', 'francisco.juarez@example.com', '303303303', 'Calle 61, Ciudad III');
INSERT INTO TBL_Clientes VALUES (62, 'Ariana', 'Montoya', 'ariana.montoya@example.com', '404404404', 'Calle 62, Ciudad JJJ');
INSERT INTO TBL_Clientes VALUES (63, 'Hector', 'Barrios', 'hector.barrios@example.com', '505505505', 'Calle 63, Ciudad KKK');
INSERT INTO TBL_Clientes VALUES (64, 'Marina', 'Lemus', 'marina.lemus@example.com', '606606606', 'Calle 64, Ciudad LLL');
INSERT INTO TBL_Clientes VALUES (65, 'Agustin', 'Vargas', 'agustin.vargas@example.com', '707707707', 'Calle 65, Ciudad MMM');
INSERT INTO TBL_Clientes VALUES (66, 'Silvia', 'Montalvo', 'silvia.montalvo@example.com', '808808808', 'Calle 66, Ciudad NNN');
INSERT INTO TBL_Clientes VALUES (67, 'Julio', 'Arrieta', 'julio.arrieta@example.com', '909909909', 'Calle 67, Ciudad OOO');
INSERT INTO TBL_Clientes VALUES (68, 'Nataly', 'Pineda', 'nataly.pineda@example.com', '121121121', 'Calle 68, Ciudad PPP');
INSERT INTO TBL_Clientes VALUES (69, 'Emilio', 'Mu�oz', 'emilio.munoz@example.com', '232232232', 'Calle 69, Ciudad QQQ');
INSERT INTO TBL_Clientes VALUES (70, 'Clara', 'Reyna', 'clara.reyna@example.com', '343343343', 'Calle 70, Ciudad RRR');
INSERT INTO TBL_Clientes VALUES (71, 'Antonio', 'Carrasco', 'antonio.carrasco@example.com', '454454454', 'Calle 71, Ciudad SSS');
INSERT INTO TBL_Clientes VALUES (72, 'Diana', 'Ortega', 'diana.ortega@example.com', '565565565', 'Calle 72, Ciudad TTT');
INSERT INTO TBL_Clientes VALUES (73, 'Ricardo', 'Santos', 'ricardo.santos@example.com', '676676676', 'Calle 73, Ciudad UUU');
INSERT INTO TBL_Clientes VALUES (74, 'Paula', 'Mejia', 'paula.mejia@example.com', '787787787', 'Calle 74, Ciudad VVV');
INSERT INTO TBL_Clientes VALUES (75, 'Luis', 'Moya', 'luis.moya@example.com', '898898898', 'Calle 75, Ciudad WWW');
INSERT INTO TBL_Clientes VALUES (76, 'Sara', 'Lara', 'sara.lara@example.com', '909909909', 'Calle 76, Ciudad XXX');
INSERT INTO TBL_Clientes VALUES (77, 'Joaquin', 'Pacheco', 'joaquin.pacheco@example.com', '101010101', 'Calle 77, Ciudad YYY');
INSERT INTO TBL_Clientes VALUES (78, 'Olivia', 'Serrano', 'olivia.serrano@example.com', '202202202', 'Calle 78, Ciudad ZZZ');
INSERT INTO TBL_Clientes VALUES (79, 'Mario', 'Dominguez', 'mario.dominguez@example.com', '303303303', 'Calle 79, Ciudad AAAA');
INSERT INTO TBL_Clientes VALUES (80, 'Andrea', 'Velasco', 'andrea.velasco@example.com', '404404404', 'Calle 80, Ciudad BBBB');
INSERT INTO TBL_Clientes VALUES (81, 'Diego', 'Paredes', 'diego.paredes@example.com', '111222333', 'Calle 81, Ciudad AAA');
INSERT INTO TBL_Clientes VALUES (82, 'Ana', 'Villalobos', 'ana.villalobos@example.com', '222333444', 'Calle 82, Ciudad BBB');
INSERT INTO TBL_Clientes VALUES (83, 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', '333444555', 'Calle 83, Ciudad CCC');
INSERT INTO TBL_Clientes VALUES (84, 'Lucia', 'Salinas', 'lucia.salinas@example.com', '444555666', 'Calle 84, Ciudad DDD');
INSERT INTO TBL_Clientes VALUES (85, 'Fernando', 'Romero', 'fernando.romero@example.com', '555666777', 'Calle 85, Ciudad EEE');
INSERT INTO TBL_Clientes VALUES (86, 'Beatriz', 'Rojas', 'beatriz.rojas@example.com', '666777888', 'Calle 86, Ciudad FFF');
INSERT INTO TBL_Clientes VALUES (87, 'Manuel', 'Castillo', 'manuel.castillo@example.com', '777888999', 'Calle 87, Ciudad GGG');
INSERT INTO TBL_Clientes VALUES (88, 'Elena', 'Navarrete', 'elena.navarrete@example.com', '888999000', 'Calle 88, Ciudad HHH');
INSERT INTO TBL_Clientes VALUES (89, 'Roberto', 'Fuentes', 'roberto.fuentes@example.com', '999000111', 'Calle 89, Ciudad III');
INSERT INTO TBL_Clientes VALUES (90, 'Isabel', 'Martinez', 'isabel.martinez@example.com', '000111222', 'Calle 90, Ciudad JJJ');
INSERT INTO TBL_Clientes VALUES (91, 'Oscar', 'Jimenez', 'oscar.jimenez@example.com', '111222333', 'Calle 91, Ciudad KKK');
INSERT INTO TBL_Clientes VALUES (92, 'Valeria', 'Herrera', 'valeria.herrera@example.com', '222333444', 'Calle 92, Ciudad LLL');
INSERT INTO TBL_Clientes VALUES (93, 'Hugo', 'Ramirez', 'hugo.ramirez@example.com', '333444555', 'Calle 93, Ciudad MMM');
INSERT INTO TBL_Clientes VALUES (94, 'Camila', 'Vega', 'camila.vega@example.com', '444555666', 'Calle 94, Ciudad NNN');
INSERT INTO TBL_Clientes VALUES (95, 'Alejandro', 'Perez', 'alejandro.perez@example.com', '555666777', 'Calle 95, Ciudad OOO');
INSERT INTO TBL_Clientes VALUES (96, 'Laura', 'Ortiz', 'laura.ortiz@example.com', '666777888', 'Calle 96, Ciudad PPP');
INSERT INTO TBL_Clientes VALUES (97, 'Eduardo', 'Ruiz', 'eduardo.ruiz@example.com', '777888999', 'Calle 97, Ciudad QQQ');
INSERT INTO TBL_Clientes VALUES (98, 'Rosa', 'Gomez', 'rosa.gomez@example.com', '888999000', 'Calle 98, Ciudad RRR');
INSERT INTO TBL_Clientes VALUES (99, 'Martin', 'Nava', 'martin.nava@example.com', '999000111', 'Calle 99, Ciudad SSS');
INSERT INTO TBL_Clientes VALUES (100, 'Paola', 'Lopez', 'paola.lopez@example.com', '000111222', 'Calle 100, Ciudad TTT');
INSERT INTO TBL_Clientes VALUES (101, 'Julian', 'Pinto', 'julian.pinto@example.com', '111222333', 'Calle 101, Ciudad UUU');
INSERT INTO TBL_Clientes VALUES (102, 'Carmen', 'Aguilar', 'carmen.aguilar@example.com', '222333444', 'Calle 102, Ciudad VVV');
INSERT INTO TBL_Clientes VALUES (103, 'Raul', 'Sanchez', 'raul.sanchez@example.com', '333444555', 'Calle 103, Ciudad WWW');
INSERT INTO TBL_Clientes VALUES (104, 'Diana', 'Reyes', 'diana.reyes@example.com', '444555666', 'Calle 104, Ciudad XXX');
INSERT INTO TBL_Clientes VALUES (105, 'Sebastian', 'Alvarez', 'sebastian.alvarez@example.com', '555666777', 'Calle 105, Ciudad YYY');
INSERT INTO TBL_Clientes VALUES (106, 'Sofia', 'Dominguez', 'sofia.dominguez@example.com', '666777888', 'Calle 106, Ciudad ZZZ');
INSERT INTO TBL_Clientes VALUES (107, 'Jorge', 'Lara', 'jorge.lara@example.com', '777888999', 'Calle 107, Ciudad AAAA');
INSERT INTO TBL_Clientes VALUES (108, 'Carolina', 'Torres', 'carolina.torres@example.com', '888999000', 'Calle 108, Ciudad BBBB');
INSERT INTO TBL_Clientes VALUES (109, 'Alberto', 'Campos', 'alberto.campos@example.com', '999000111', 'Calle 109, Ciudad CCCC');
INSERT INTO TBL_Clientes VALUES (110, 'Mariana', 'Cabrera', 'mariana.cabrera@example.com', '000111222', 'Calle 110, Ciudad DDDD');
INSERT INTO TBL_Clientes VALUES (111, 'Antonio', 'Soto', 'antonio.soto@example.com', '111222333', 'Calle 111, Ciudad EEEE');
INSERT INTO TBL_Clientes VALUES (112, 'Andrea', 'Castro', 'andrea.castro@example.com', '222333444', 'Calle 112, Ciudad FFFF');
INSERT INTO TBL_Clientes VALUES (113, 'Victor', 'Morales', 'victor.morales@example.com', '333444555', 'Calle 113, Ciudad GGGG');
INSERT INTO TBL_Clientes VALUES (114, 'Esther', 'Lopez', 'esther.lopez@example.com', '444555666', 'Calle 114, Ciudad HHHH');
INSERT INTO TBL_Clientes VALUES (115, 'Luis', 'Hernandez', 'luis.hernandez@example.com', '555666777', 'Calle 115, Ciudad IIII');
INSERT INTO TBL_Clientes VALUES (116, 'Sara', 'Jimenez', 'sara.jimenez@example.com', '666777888', 'Calle 116, Ciudad JJJJ');
INSERT INTO TBL_Clientes VALUES (117, 'Gerardo', 'Vargas', 'gerardo.vargas@example.com', '777888999', 'Calle 117, Ciudad KKKK');
INSERT INTO TBL_Clientes VALUES (118, 'Luciana', 'Fernandez', 'luciana.fernandez@example.com', '888999000', 'Calle 118, Ciudad LLLL');
INSERT INTO TBL_Clientes VALUES (119, 'Ricardo', 'Perez', 'ricardo.perez@example.com', '999000111', 'Calle 119, Ciudad MMMM');
INSERT INTO TBL_Clientes VALUES (120, 'Fabiola', 'Ramos', 'fabiola.ramos@example.com', '000111222', 'Calle 120, Ciudad NNNN');
INSERT INTO TBL_Clientes VALUES (121, 'Adrian', 'Silva', 'adrian.silva@example.com', '111222333', 'Calle 121, Ciudad AAAA');
INSERT INTO TBL_Clientes VALUES (122, 'Nadia', 'Ortiz', 'nadia.ortiz@example.com', '222333444', 'Calle 122, Ciudad BBBB');
INSERT INTO TBL_Clientes VALUES (123, 'Rodrigo', 'Gomez', 'rodrigo.gomez@example.com', '333444555', 'Calle 123, Ciudad CCCC');
INSERT INTO TBL_Clientes VALUES (124, 'Patricia', 'Mendez', 'patricia.mendez@example.com', '444555666', 'Calle 124, Ciudad DDDD');
INSERT INTO TBL_Clientes VALUES (125, 'Victor', 'Torres', 'victor.torres@example.com', '555666777', 'Calle 125, Ciudad EEEE');
INSERT INTO TBL_Clientes VALUES (126, 'Andrea', 'Perez', 'andrea.perez@example.com', '666777888', 'Calle 126, Ciudad FFFF');
INSERT INTO TBL_Clientes VALUES (127, 'Marcos', 'Rojas', 'marcos.rojas@example.com', '777888999', 'Calle 127, Ciudad GGGG');
INSERT INTO TBL_Clientes VALUES (128, 'Elisa', 'Navarro', 'elisa.navarro@example.com', '888999000', 'Calle 128, Ciudad HHHH');
INSERT INTO TBL_Clientes VALUES (129, 'Hector', 'Vega', 'hector.vega@example.com', '999000111', 'Calle 129, Ciudad IIII');
INSERT INTO TBL_Clientes VALUES (130, 'Alejandra', 'Cruz', 'alejandra.cruz@example.com', '000111222', 'Calle 130, Ciudad JJJJ');
INSERT INTO TBL_Clientes VALUES (131, 'Mario', 'Salazar', 'mario.salazar@example.com', '111222333', 'Calle 131, Ciudad KKKK');
INSERT INTO TBL_Clientes VALUES (132, 'Gabriela', 'Ramirez', 'gabriela.ramirez@example.com', '222333444', 'Calle 132, Ciudad LLLL');
INSERT INTO TBL_Clientes VALUES (133, 'Javier', 'Reyes', 'javier.reyes@example.com', '333444555', 'Calle 133, Ciudad MMMM');
INSERT INTO TBL_Clientes VALUES (134, 'Paula', 'Dominguez', 'paula.dominguez@example.com', '444555666', 'Calle 134, Ciudad NNNN');
INSERT INTO TBL_Clientes VALUES (135, 'Felipe', 'Martinez', 'felipe.martinez@example.com', '555666777', 'Calle 135, Ciudad OOOO');
INSERT INTO TBL_Clientes VALUES (136, 'Diana', 'Aguilar', 'diana.aguilar@example.com', '666777888', 'Calle 136, Ciudad PPPP');
INSERT INTO TBL_Clientes VALUES (137, 'Juan', 'Lopez', 'juan.lopez@example.com', '777888999', 'Calle 137, Ciudad QQQQ');
INSERT INTO TBL_Clientes VALUES (138, 'Claudia', 'Jimenez', 'claudia.jimenez@example.com', '888999000', 'Calle 138, Ciudad RRRR');
INSERT INTO TBL_Clientes VALUES (139, 'Ricardo', 'Hernandez', 'ricardo.hernandez@example.com', '999000111', 'Calle 139, Ciudad SSSS');
INSERT INTO TBL_Clientes VALUES (140, 'Monica', 'Sanchez', 'monica.sanchez@example.com', '000111222', 'Calle 140, Ciudad TTTT');
INSERT INTO TBL_Clientes VALUES (141, 'Sergio', 'Campos', 'sergio.campos@example.com', '111222333', 'Calle 141, Ciudad UUUU');
INSERT INTO TBL_Clientes VALUES (142, 'Rocio', 'Vargas', 'rocio.vargas@example.com', '222333444', 'Calle 142, Ciudad VVVV');
INSERT INTO TBL_Clientes VALUES (143, 'Alfonso', 'Paredes', 'alfonso.paredes@example.com', '333444555', 'Calle 143, Ciudad WWWW');
INSERT INTO TBL_Clientes VALUES (144, 'Carla', 'Rojas', 'carla.rojas@example.com', '444555666', 'Calle 144, Ciudad XXXX');
INSERT INTO TBL_Clientes VALUES (145, 'Diego', 'Garcia', 'diego.garcia@example.com', '555666777', 'Calle 145, Ciudad YYYY');
INSERT INTO TBL_Clientes VALUES (146, 'Natalia', 'Salinas', 'natalia.salinas@example.com', '666777888', 'Calle 146, Ciudad ZZZZ');
INSERT INTO TBL_Clientes VALUES (147, 'Francisco', 'Perez', 'francisco.perez@example.com', '777888999', 'Calle 147, Ciudad AAAA');
INSERT INTO TBL_Clientes VALUES (148, 'Lorena', 'Nava', 'lorena.nava@example.com', '888999000', 'Calle 148, Ciudad BBBB');
INSERT INTO TBL_Clientes VALUES (149, 'Ernesto', 'Mora', 'ernesto.mora@example.com', '999000111', 'Calle 149, Ciudad CCCC');
INSERT INTO TBL_Clientes VALUES (150, 'Valentina', 'Ruiz', 'valentina.ruiz@example.com', '000111222', 'Calle 150, Ciudad DDDD');
INSERT INTO TBL_Clientes VALUES (151, 'Pedro', 'Lopez', 'pedro.lopez@example.com', '111222333', 'Calle 151, Ciudad EEEE');
INSERT INTO TBL_Clientes VALUES (152, 'Marina', 'Fuentes', 'marina.fuentes@example.com', '222333444', 'Calle 152, Ciudad FFFF');
INSERT INTO TBL_Clientes VALUES (153, 'Ignacio', 'Gomez', 'ignacio.gomez@example.com', '333444555', 'Calle 153, Ciudad GGGG');
INSERT INTO TBL_Clientes VALUES (154, 'Liliana', 'Torres', 'liliana.torres@example.com', '444555666', 'Calle 154, Ciudad HHHH');
INSERT INTO TBL_Clientes VALUES (155, 'Armando', 'Rojas', 'armando.rojas@example.com', '555666777', 'Calle 155, Ciudad IIII');
INSERT INTO TBL_Clientes VALUES (156, 'Isabela', 'Ramirez', 'isabela.ramirez@example.com', '666777888', 'Calle 156, Ciudad JJJJ');
INSERT INTO TBL_Clientes VALUES (157, 'Joaquin', 'Salazar', 'joaquin.salazar@example.com', '777888999', 'Calle 157, Ciudad KKKK');
INSERT INTO TBL_Clientes VALUES (158, 'Gloria', 'Reyes', 'gloria.reyes@example.com', '888999000', 'Calle 158, Ciudad LLLL');
INSERT INTO TBL_Clientes VALUES (159, 'Miguel', 'Dominguez', 'miguel.dominguez@example.com', '999000111', 'Calle 159, Ciudad MMMM');
INSERT INTO TBL_Clientes VALUES (160, 'Silvia', 'Pinto', 'silvia.pinto@example.com', '000111222', 'Calle 160, Ciudad NNNN');
INSERT INTO TBL_Clientes VALUES (161, 'Raul', 'Fernandez', 'raul.fernandez@example.com', '111222333', 'Calle 161, Ciudad AAAA');
INSERT INTO TBL_Clientes VALUES (162, 'Sofia', 'Lopez', 'sofia.lopez@example.com', '222333444', 'Calle 162, Ciudad BBBB');
INSERT INTO TBL_Clientes VALUES (163, 'Luis', 'Hernandez', 'luis.hernandez@example.com', '333444555', 'Calle 163, Ciudad CCCC');
INSERT INTO TBL_Clientes VALUES (164, 'Camila', 'Vega', 'camila.vega@example.com', '444555666', 'Calle 164, Ciudad DDDD');
INSERT INTO TBL_Clientes VALUES (165, 'Julian', 'Cruz', 'julian.cruz@example.com', '555666777', 'Calle 165, Ciudad EEEE');
INSERT INTO TBL_Clientes VALUES (166, 'Ana', 'Ramirez', 'ana.ramirez@example.com', '666777888', 'Calle 166, Ciudad FFFF');
INSERT INTO TBL_Clientes VALUES (167, 'Pablo', 'Martinez', 'pablo.martinez@example.com', '777888999', 'Calle 167, Ciudad GGGG');
INSERT INTO TBL_Clientes VALUES (168, 'Valeria', 'Rojas', 'valeria.rojas@example.com', '888999000', 'Calle 168, Ciudad HHHH');
INSERT INTO TBL_Clientes VALUES (169, 'Oscar', 'Navarro', 'oscar.navarro@example.com', '999000111', 'Calle 169, Ciudad IIII');
INSERT INTO TBL_Clientes VALUES (170, 'Carolina', 'Aguilar', 'carolina.aguilar@example.com', '000111222', 'Calle 170, Ciudad JJJJ');
INSERT INTO TBL_Clientes VALUES (171, 'Esteban', 'Perez', 'esteban.perez@example.com', '111222333', 'Calle 171, Ciudad KKKK');
INSERT INTO TBL_Clientes VALUES (172, 'Laura', 'Mendez', 'laura.mendez@example.com', '222333444', 'Calle 172, Ciudad LLLL');
INSERT INTO TBL_Clientes VALUES (173, 'Martin', 'Torres', 'martin.torres@example.com', '333444555', 'Calle 173, Ciudad MMMM');
INSERT INTO TBL_Clientes VALUES (174, 'Elena', 'Dominguez', 'elena.dominguez@example.com', '444555666', 'Calle 174, Ciudad NNNN');
INSERT INTO TBL_Clientes VALUES (175, 'Ruben', 'Reyes', 'ruben.reyes@example.com', '555666777', 'Calle 175, Ciudad OOOO');
INSERT INTO TBL_Clientes VALUES (176, 'Lucia', 'Vargas', 'lucia.vargas@example.com', '666777888', 'Calle 176, Ciudad PPPP');
INSERT INTO TBL_Clientes VALUES (177, 'Hugo', 'Garcia', 'hugo.garcia@example.com', '777888999', 'Calle 177, Ciudad QQQQ');
INSERT INTO TBL_Clientes VALUES (178, 'Cecilia', 'Ruiz', 'cecilia.ruiz@example.com', '888999000', 'Calle 178, Ciudad RRRR');
INSERT INTO TBL_Clientes VALUES (179, 'Diego', 'Salinas', 'diego.salinas@example.com', '999000111', 'Calle 179, Ciudad SSSS');
INSERT INTO TBL_Clientes VALUES (180, 'Paula', 'Nava', 'paula.nava@example.com', '000111222', 'Calle 180, Ciudad TTTT');
INSERT INTO TBL_Clientes VALUES (181, 'Fernando', 'Lopez', 'fernando.lopez@example.com', '111222333', 'Calle 181, Ciudad UUUU');
INSERT INTO TBL_Clientes VALUES (182, 'Natalia', 'Paredes', 'natalia.paredes@example.com', '222333444', 'Calle 182, Ciudad VVVV');
INSERT INTO TBL_Clientes VALUES (183, 'Jorge', 'Campos', 'jorge.campos@example.com', '333444555', 'Calle 183, Ciudad WWWW');
INSERT INTO TBL_Clientes VALUES (184, 'Mariana', 'Silva', 'mariana.silva@example.com', '444555666', 'Calle 184, Ciudad XXXX');
INSERT INTO TBL_Clientes VALUES (185, 'Roberto', 'Garcia', 'roberto.garcia@example.com', '555666777', 'Calle 185, Ciudad YYYY');
INSERT INTO TBL_Clientes VALUES (186, 'Isabel', 'Mora', 'isabel.mora@example.com', '666777888', 'Calle 186, Ciudad ZZZZ');
INSERT INTO TBL_Clientes VALUES (187, 'Antonio', 'Cruz', 'antonio.cruz@example.com', '777888999', 'Calle 187, Ciudad AAAA');
INSERT INTO TBL_Clientes VALUES (188, 'Claudia', 'Navarro', 'claudia.navarro@example.com', '888999000', 'Calle 188, Ciudad BBBB');
INSERT INTO TBL_Clientes VALUES (189, 'Rafael', 'Gomez', 'rafael.gomez@example.com', '999000111', 'Calle 189, Ciudad CCCC');
INSERT INTO TBL_Clientes VALUES (190, 'Eva', 'Hernandez', 'eva.hernandez@example.com', '000111222', 'Calle 190, Ciudad DDDD');
INSERT INTO TBL_Clientes VALUES (191, 'Sebastian', 'Reyes', 'sebastian.reyes@example.com', '111222333', 'Calle 191, Ciudad EEEE');
INSERT INTO TBL_Clientes VALUES (192, 'Luisa', 'Martinez', 'luisa.martinez@example.com', '222333444', 'Calle 192, Ciudad FFFF');
INSERT INTO TBL_Clientes VALUES (193, 'Alberto', 'Vega', 'alberto.vega@example.com', '333444555', 'Calle 193, Ciudad GGGG');
INSERT INTO TBL_Clientes VALUES (194, 'Rosa', 'Aguilar', 'rosa.aguilar@example.com', '444555666', 'Calle 194, Ciudad HHHH');
INSERT INTO TBL_Clientes VALUES (195, 'Mario', 'Dominguez', 'mario.dominguez@example.com', '555666777', 'Calle 195, Ciudad IIII');
INSERT INTO TBL_Clientes VALUES (196, 'Samantha', 'Mendez', 'samantha.mendez@example.com', '666777888', 'Calle 196, Ciudad JJJJ');
INSERT INTO TBL_Clientes VALUES (197, 'Andres', 'Pinto', 'andres.pinto@example.com', '777888999', 'Calle 197, Ciudad KKKK');
INSERT INTO TBL_Clientes VALUES (198, 'Carla', 'Salazar', 'carla.salazar@example.com', '888999000', 'Calle 198, Ciudad LLLL');
INSERT INTO TBL_Clientes VALUES (199, 'Gerardo', 'Ruiz', 'gerardo.ruiz@example.com', '999000111', 'Calle 199, Ciudad MMMM');
INSERT INTO TBL_Clientes VALUES (200, 'Veronica', 'Jimenez', 'veronica.jimenez@example.com', '000111222', 'Calle 200, Ciudad NNNN');

-- Operaciones CRUD para la tabla: Clientes
SELECT * FROM TBL_Clientes;

UPDATE TBL_Clientes
SET Nombre = 'Mario', Apellido = 'Rojas', Email = 'maroja.email@example.com', Telefono = '8899900011', Direccion = 'Barreal de Heredia'
WHERE ID_Cliente = 1;

--Insert de la tabla: Empleados
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Ramirez', 'Piloto', '555-1234', 'carlos.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ana', 'Gomez', 'Azafata', '555-5678', 'ana.gomez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luis', 'Martinez', 'Desarrollador de Sistemas', '555-9876', 'luis.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Maria', 'Lopez', 'Recepcionista', '555-1357', 'maria.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Pedro', 'Hernandez', 'Mec�nico de Aviaci�n', '555-2468', 'pedro.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Laura', 'Perez', 'Directora de Marketing', '555-3579', 'laura.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Javier', 'Diaz', 'Piloto', '555-4680', 'javier.diaz@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sofia', 'Garcia', 'Azafata', '555-5791', 'sofia.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Victor', 'Sanchez', 'Ingeniero de Aviones', '555-6802', 'victor.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Elena', 'Torres', 'Jefa de Atenci�n al Cliente', '555-7913', 'elena.torres@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ricardo', 'Jimenez', 'Cocinero de Aerol�nea', '555-8024', 'ricardo.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Patricia', 'Ruiz', 'Dise�adora de Uniformes', '555-9135', 'patricia.ruiz@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Rafael', 'Moreno', 'Jefe de Mantenimiento', '555-0246', 'rafael.moreno@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mariana', 'Vega', 'Gerente de Proyectos', '555-1358', 'mariana.vega@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Fernando', 'Romero', 'T�cnico de Aviones', '555-2469', 'fernando.romero@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Isabel', 'Castillo', 'Analista de Rutas', '555-3570', 'isabel.castillo@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luis', 'Fernandez', 'Asistente de Aeropuerto', '555-4681', 'luis.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Angela', 'Mendez', 'Coordinadora de Vuelo', '555-5792', 'angela.mendez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Oscar', 'Silva', 'Piloto', '555-6803', 'oscar.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Cristina', 'Rios', 'Azafata', '555-7914', 'cristina.rios@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sergio', 'Paredes', 'Controlador de Tr�fico A�reo', '555-8025', 'sergio.paredes@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Marta', 'Alvarez', 'Gerente de Finanzas', '555-9136', 'marta.alvarez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Gonzalez', 'Asistente de Vuelo', '555-0247', 'carlos.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Daniela', 'Serrano', 'Piloto', '555-1359', 'daniela.serrano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Alberto', 'Rojas', 'Ingeniero de Aviones', '555-2460', 'alberto.rojas@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jorge', 'Salazar', 'Jefe de Seguridad Aeroportuaria', '555-3571', 'jorge.salazar@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Susana', 'Campos', 'Gerente de Operaciones', '555-4682', 'susana.campos@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Francisco', 'Zuniga', 'Piloto', '555-5793', 'francisco.zuniga@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Vanessa', 'Pinto', 'Azafata', '555-6804', 'vanessa.pinto@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Martin', 'Castro', 'Coordinador de Log�stica', '555-7915', 'martin.castro@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Claudia', 'Guerrero', 'Gestor de Clientes', '555-8026', 'claudia.guerrero@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Joaqu�n', 'Cordero', 'Piloto', '555-9137', 'joaquin.cordero@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Eduardo', 'Mu�oz', 'Director de Operaciones', '555-0248', 'eduardo.munoz@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Raquel', 'Blanco', 'Azafata', '555-1350', 'raquel.blanco@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Raul', 'Luna', 'Piloto', '555-2461', 'raul.luna@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Paula', 'Ruiz', 'T�cnico de Mantenimiento', '555-3572', 'paula.ruiz@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Miguel', 'Vazquez', 'Coordinador de Vuelo', '555-4683', 'miguel.vazquez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Julia', 'Martinez', 'Jefa de Atenci�n al Cliente', '555-5794', 'julia.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Gustavo', 'Herrera', 'Piloto', '555-6805', 'gustavo.herrera@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Nuria', 'L�pez', 'Azafata', '555-7916', 'nuria.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Iv�n', 'Martinez', 'Piloto', '555-1239', 'ivan.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sandra', 'Vega', 'Azafata', '555-1240', 'sandra.vega@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Rodriguez', 'T�cnico de Mantenimiento', '555-1241', 'carlos.rodriguez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mart�n', 'Fernandez', 'Desarrollador de Sistemas', '555-1242', 'martin.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Alicia', 'Ramirez', 'Azafata', '555-1243', 'alicia.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Julio', 'Alonso', 'Piloto', '555-1244', 'julio.alonso@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Marta', 'Gonzalez', 'Coordinadora de Vuelo', '555-1245', 'marta.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'P�rez', 'Piloto', '555-1246', 'carlos.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Isabel', 'D�az', 'Azafata', '555-1247', 'isabel.diaz@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ricardo', 'Gonzalez', 'Mec�nico de Aviaci�n', '555-1248', 'ricardo.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Paula', 'Silva', 'Azafata', '555-1249', 'paula.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sergio', 'Lopez', 'Piloto', '555-1250', 'sergio.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Elena', 'Herrera', 'Jefa de Seguridad Aeroportuaria', '555-1251', 'elena.herrera@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jorge', 'Moreno', 'Azafata', '555-1252', 'jorge.moreno@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ana', 'Fernandez', 'Coordinadora de Vuelo', '555-1253', 'ana.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('David', 'S�nchez', 'Piloto', '555-1254', 'david.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Claudia', 'Garc�a', 'Azafata', '555-1255', 'claudia.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Cristina', 'Rios', 'Ingeniero de Aviaci�n', '555-1256', 'cristina.rios@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Andr�s', 'Lozano', 'Piloto', '555-1257', 'andres.lozano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Rafael', 'Morales', 'Azafata', '555-1258', 'rafael.morales@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Lucas', 'Gonzalez', 'Jefe de Mantenimiento', '555-1259', 'lucas.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Lorena', 'Serrano', 'Piloto', '555-1260', 'lorena.serrano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ra�l', 'Alvarez', 'Azafata', '555-1261', 'raul.alvarez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Daniel', 'Mart�nez', 'Jefe de Aeropuerto', '555-1262', 'daniel.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mar�a', 'Santos', 'Piloto', '555-1263', 'maria.santos@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'Lopez', 'Azafata', '555-1264', 'antonio.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ver�nica', 'Ram�rez', 'Ingeniero de Aviaci�n', '555-1265', 'veronica.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Hern�ndez', 'Piloto', '555-1266', 'carlos.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Laura', 'Mart�nez', 'Azafata', '555-1267', 'laura.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('David', 'Garc�a', 'Piloto', '555-1268', 'david.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Felipe', 'S�nchez', 'Coordinador de Aeropuerto', '555-1269', 'felipe.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carmen', 'P�rez', 'Azafata', '555-1270', 'carmen.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ricardo', 'Morales', 'Piloto', '555-1271', 'ricardo.morales@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ana', 'Gonz�lez', 'Azafata', '555-1272', 'ana.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'Ram�rez', 'Piloto', '555-1273', 'jose.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Laura', 'Salazar', 'Azafata', '555-1274', 'laura.salazar@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Esteban', 'Garc�a', 'Mec�nico de Aviaci�n', '555-1275', 'esteban.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mar�a', 'Blanco', 'T�cnico de Aviones', '555-1276', 'maria.blanco@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Soto', 'Azafata', '555-1277', 'carlos.soto@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'Lopez', 'Piloto', '555-1278', 'jose.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Claudia', 'Jim�nez', 'Azafata', '555-1279', 'claudia.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ricardo', 'P�rez', 'Ingeniero de Aviaci�n', '555-1280', 'ricardo.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Marta', 'Hern�ndez', 'Azafata', '555-1281', 'marta.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Rodr�guez', 'Piloto', '555-1282', 'carlos.rodriguez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Beatriz', 'Alvarez', 'Azafata', '555-1283', 'beatriz.alvarez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Pedro', 'S�nchez', 'Coordinador de Vuelo', '555-1284', 'pedro.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Juan', 'Gonz�lez', 'Piloto', '555-1285', 'juan.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Lorena', 'Mart�nez', 'Azafata', '555-1286', 'lorena.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sergio', 'Hern�ndez', 'Piloto', '555-1287', 'sergio.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Patricia', 'L�pez', 'Azafata', '555-1288', 'patricia.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Alberto', 'Jim�nez', 'Jefe de Mantenimiento', '555-1289', 'alberto.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Francisco', 'P�rez', 'Piloto', '555-1290', 'francisco.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Isabel', 'Garc�a', 'Azafata', '555-1291', 'isabel.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Juan', 'Santos', 'Piloto', '555-1292', 'juan.santos@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Raquel', 'Fern�ndez', 'Azafata', '555-1293', 'raquel.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('David', 'Lopez', 'Piloto', '555-1294', 'david.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Laura', 'Gonz�lez', 'Azafata', '555-1295', 'laura.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'Ram�rez', 'Piloto', '555-1296', 'antonio.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Victoria', 'P�rez', 'Azafata', '555-1297', 'victoria.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Fernando', 'V�zquez', 'Piloto', '555-1298', 'fernando.vazquez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mar�a', 'Serrano', 'Azafata', '555-1299', 'maria.serrano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Silva', 'Piloto', '555-1300', 'carlos.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Raquel', 'Lopez', 'Azafata', '555-1301', 'raquel.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Felipe', 'Mart�nez', 'Piloto', '555-1302', 'felipe.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Eva', 'Gonz�lez', 'Azafata', '555-1303', 'eva.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Daniel', 'Hern�ndez', 'Piloto', '555-1304', 'daniel.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Cristina', 'Ram�rez', 'Azafata', '555-1305', 'cristina.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'Mart�nez', 'Piloto', '555-1306', 'jose.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luis', 'P�rez', 'Azafata', '555-1307', 'luis.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'Serrano', 'Piloto', '555-1308', 'antonio.serrano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Juan', 'V�zquez', 'Azafata', '555-1309', 'juan.vazquez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mar�a', 'S�nchez', 'Piloto', '555-1310', 'maria.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Adri�n', 'Alvarez', 'Azafata', '555-1311', 'adrian.alvarez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ana', 'Lopez', 'Piloto', '555-1312', 'ana.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Rosa', 'Garc�a', 'Azafata', '555-1313', 'rosa.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Vicente', 'Fern�ndez', 'Piloto', '555-1314', 'vicente.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Mendoza', 'Piloto', '555-1315', 'carlos.mendoza@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Gabriela', 'Cordero', 'Azafata', '555-1316', 'gabriela.cordero@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luis', 'Torres', 'Piloto', '555-1317', 'luis.torres@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sandra', 'Hern�ndez', 'Azafata', '555-1318', 'sandra.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ra�l', 'S�nchez', 'Piloto', '555-1319', 'raul.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Paola', 'Gonz�lez', 'Azafata', '555-1320', 'paola.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Esteban', 'L�pez', 'Piloto', '555-1321', 'esteban.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mar�a', 'Salazar', 'Azafata', '555-1322', 'maria.salazar@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Rodr�guez', 'Piloto', '555-1323', 'carlos.rodriguez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Silvia', 'Jim�nez', 'Azafata', '555-1324', 'silvia.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Javier', 'Fern�ndez', 'Piloto', '555-1325', 'javier.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Pablo', 'Morales', 'Azafata', '555-1326', 'pablo.morales@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Patricia', 'Serrano', 'Piloto', '555-1327', 'patricia.serrano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Rafael', 'Garc�a', 'Azafata', '555-1328', 'rafael.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Isabel', 'Mart�nez', 'Piloto', '555-1329', 'isabel.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'Cordero', 'Azafata', '555-1330', 'jose.cordero@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Eduardo', 'Alvarado', 'Piloto', '555-1331', 'eduardo.alvarado@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Lidia', 'P�rez', 'Azafata', '555-1332', 'lidia.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Manuel', 'V�zquez', 'Piloto', '555-1333', 'manuel.vazquez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Marta', 'Ram�rez', 'Azafata', '555-1334', 'marta.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Julio', 'Hern�ndez', 'Piloto', '555-1335', 'julio.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carmen', 'Jim�nez', 'Azafata', '555-1336', 'carmen.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Andr�s', 'Morales', 'Piloto', '555-1337', 'andres.morales@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sonia', 'Silva', 'Azafata', '555-1338', 'sonia.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Pedro', 'Gonz�lez', 'Piloto', '555-1339', 'pedro.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luc�a', 'Lozano', 'Azafata', '555-1340', 'lucia.lozano@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Joaqu�n', 'P�rez', 'Piloto', '555-1341', 'joaquin.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ra�l', 'Garc�a', 'Azafata', '555-1342', 'raul.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Patricia', 'Jim�nez', 'Piloto', '555-1343', 'patricia.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ricardo', 'Rodr�guez', 'Azafata', '555-1344', 'ricardo.rodriguez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Iv�n', 'Torres', 'Piloto', '555-1345', 'ivan.torres@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Alma', 'Fern�ndez', 'Azafata', '555-1346', 'alma.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'Ram�rez', 'Piloto', '555-1347', 'jose.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Monica', 'S�nchez', 'Azafata', '555-1348', 'monica.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'Silva', 'Piloto', '555-1349', 'antonio.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luis', 'Lopez', 'Azafata', '555-1350', 'luis.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Isabel', 'Mart�nez', 'Piloto', '555-1351', 'isabel.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('David', 'L�pez', 'Piloto', '555-1352', 'david.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ana', 'C�rdoba', 'Azafata', '555-1353', 'ana.cordoba@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Eduardo', 'Mart�nez', 'Piloto', '555-1354', 'eduardo.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Raquel', 'Fern�ndez', 'Azafata', '555-1355', 'raquel.fernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Joaqu�n', 'Gonz�lez', 'Piloto', '555-1356', 'joaquin.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luc�a', 'Mart�nez', 'Azafata', '555-1357', 'lucia.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'S�nchez', 'Piloto', '555-1358', 'carlos.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('M�nica', 'Ram�rez', 'Azafata', '555-1359', 'monica.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'G�mez', 'Piloto', '555-1360', 'jose.gomez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ver�nica', 'Hern�ndez', 'Azafata', '555-1361', 'veronica.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Andr�s', 'P�rez', 'Piloto', '555-1362', 'andres.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Berta', 'L�pez', 'Azafata', '555-1363', 'berta.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Jos�', 'Jim�nez', 'Piloto', '555-1364', 'jose.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Margarita', 'Garc�a', 'Azafata', '555-1365', 'margarita.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ricardo', 'S�nchez', 'Piloto', '555-1366', 'ricardo.sanchez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Claudia', 'Alonso', 'Azafata', '555-1367', 'claudia.alonso@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'Ram�rez', 'Piloto', '555-1368', 'antonio.ramirez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Patricia', 'G�mez', 'Azafata', '555-1369', 'patricia.gomez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Juan', 'Cordero', 'Piloto', '555-1370', 'juan.cordero@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Teresa', 'Silva', 'Azafata', '555-1371', 'teresa.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Fernando', 'V�zquez', 'Piloto', '555-1372', 'fernando.vazquez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Liliana', 'Gonz�lez', 'Azafata', '555-1373', 'liliana.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Alberto', 'Mart�nez', 'Piloto', '555-1374', 'alberto.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('In�s', 'P�rez', 'Azafata', '555-1375', 'ines.perez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Fernando', 'L�pez', 'Piloto', '555-1376', 'fernando.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Isabel', 'Jim�nez', 'Azafata', '555-1377', 'isabel.jimenez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Mart�n', 'Hern�ndez', 'Piloto', '555-1378', 'martin.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ver�nica', 'Rodr�guez', 'Azafata', '555-1379', 'veronica.rodriguez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('David', 'V�zquez', 'Piloto', '555-1380', 'david.vazquez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Sonia', 'L�pez', 'Azafata', '555-1381', 'sonia.lopez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carlos', 'Gonz�lez', 'Piloto', '555-1382', 'carlos.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Lina', 'Hern�ndez', 'Azafata', '555-1383', 'lina.hernandez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Javier', 'Morales', 'Piloto', '555-1384', 'javier.morales@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Raquel', 'Alvarado', 'Azafata', '555-1385', 'raquel.alvarado@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Ram�n', 'Salazar', 'Piloto', '555-1386', 'ramon.salazar@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Pilar', 'Garc�a', 'Azafata', '555-1387', 'pilar.garcia@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'Mart�nez', 'Piloto', '555-1388', 'antonio.martinez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Carmen', 'Rodr�guez', 'Azafata', '555-1389', 'carmen.rodriguez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Luis', 'Gonz�lez', 'Piloto', '555-1390', 'luis.gonzalez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Eva', 'Silva', 'Azafata', '555-1391', 'eva.silva@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Antonio', 'G�mez', 'Piloto', '555-1392', 'antonio.gomez@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Berta', 'Alvarado', 'Azafata', '555-1393', 'berta.alvarado@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Adri�n', 'Torres', 'Piloto', '555-1394', 'adrian.torres@aerolinea.com');
INSERT INTO TBL_Empleados (Nombre, Apellido, Cargo, Telefono, Email) VALUES ('Natalia', 'Morales', 'Azafata', '555-1395', 'natalia.morales@aerolinea.com');

-- Operaciones CRUD para la tabla Empleados
SELECT * FROM TBL_Empleados;

SELECT * FROM TBL_Empleados
WHERE Cargo = 'Piloto';

UPDATE TBL_Empleados
SET Telefono = '555-9999'
WHERE Nombre = 'Carlos' AND Apellido = 'Ramirez';

DELETE FROM TBL_Empleados
WHERE Nombre = 'Ana' AND Apellido = 'Gomez';

-- Inserts de la tabla: Hoteles
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Hotel Mar Azul', 'Playa del Carmen, M�xico', '5 Estrellas', 200.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Hotel Para�so', 'Canc�n, M�xico', '4 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Grand Resort', 'Bavaro, Rep�blica Dominicana', '5 Estrellas', 300.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Hotel Sol y Mar', 'Puerto Vallarta, M�xico', '3 Estrellas', 120.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palace Suites', 'Miami, USA', '4 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunshine Hotel', 'Cartagena, Colombia', '3 Estrellas', 100.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Palm Hotel', 'Punta Cana, Rep�blica Dominicana', '5 Estrellas', 350.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Hotel Mirage', 'Las Vegas, USA', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('The Grand', 'Orlando, USA', '5 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean Breeze', 'Cozumel, M�xico', '4 Estrellas', 170.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Mountain View', 'Asheville, USA', '3 Estrellas', 90.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Seaside Resort', 'Boca Chica, Rep�blica Dominicana', '5 Estrellas', 320.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Hotel', 'Acapulco, M�xico', '3 Estrellas', 110.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Sands', 'Varadero, Cuba', '4 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Luxury Suites', 'Buenos Aires, Argentina', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Suites', 'Tulum, M�xico', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Hotel Blue Bay', 'Cartagena, Colombia', '3 Estrellas', 95.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Mayan Palace', 'Riviera Maya, M�xico', '5 Estrellas', 370.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Resort', 'Roat�n, Honduras', '4 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palm Beach Resort', 'Barbados', '5 Estrellas', 280.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Paradise', 'Puerto Rico', '4 Estrellas', 190.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Inn', 'Tulum, M�xico', '3 Estrellas', 85.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Crystal Palace', 'Miami, USA', '5 Estrellas', 320.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Villa Serena', 'Boca Chica, Rep�blica Dominicana', '4 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Laguna Resort', 'Cozumel, M�xico', '5 Estrellas', 310.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Grand Ocean View', 'Varadero, Cuba', '4 Estrellas', 190.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Sky Resort', 'Puerto Vallarta, M�xico', '3 Estrellas', 120.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oceanfront Hotel', 'Bavaro, Rep�blica Dominicana', '5 Estrellas', 330.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Mountain Escape', 'Asheville, USA', '4 Estrellas', 200.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Bay Hotel', 'Canc�n, M�xico', '5 Estrellas', 260.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Breeze', 'Tulum, M�xico', '4 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Serenity Hotel', 'Cartagena, Colombia', '3 Estrellas', 95.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Vista Mar', 'Puerto Rico', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachcomber Resort', 'Las Vegas, USA', '5 Estrellas', 320.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Skyline Inn', 'Punta Cana, Rep�blica Dominicana', '3 Estrellas', 110.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Paradise', 'Boca Chica, Rep�blica Dominicana', '5 Estrellas', 350.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Grand Riviera', 'Riviera Maya, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Resort', 'Cozumel, M�xico', '3 Estrellas', 130.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Marina Suites', 'Puerto Vallarta, M�xico', '5 Estrellas', 310.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Azure Bay', 'Playa del Carmen, M�xico', '5 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Cove', 'Canc�n, M�xico', '4 Estrellas', 200.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Reef Hotel', 'Punta Cana, Rep�blica Dominicana', '5 Estrellas', 330.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Riviera Beach Resort', 'Puerto Vallarta, M�xico', '4 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oasis Retreat', 'Barbados', '3 Estrellas', 120.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Beach', 'Varadero, Cuba', '5 Estrellas', 340.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Pacific Suites', 'Los �ngeles, USA', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Lagoon Resort', 'Tulum, M�xico', '3 Estrellas', 110.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Escape', 'Cartagena, Colombia', '4 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachside Haven', 'Cozumel, M�xico', '5 Estrellas', 330.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Crystal Waters', 'Bavaro, Rep�blica Dominicana', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Mango Bay Resort', 'Roat�n, Honduras', '5 Estrellas', 300.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coco Beach Hotel', 'Miami, USA', '3 Estrellas', 120.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Shores', 'Canc�n, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palm Bay Hotel', 'Riviera Maya, M�xico', '3 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Elite Suites', 'Las Vegas, USA', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Casa Blanca', 'Tulum, M�xico', '4 Estrellas', 170.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunrise Resort', 'Puerto Rico', '3 Estrellas', 140.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Horizon Inn', 'Asheville, USA', '4 Estrellas', 190.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sea Breeze Suites', 'Varadero, Cuba', '5 Estrellas', 360.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Oasis', 'Barbados', '3 Estrellas', 130.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Grand Lagoon', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Majestic Towers', 'Puerto Vallarta, M�xico', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Luxe Beach Resort', 'Cozumel, M�xico', '4 Estrellas', 190.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunshine Bay', 'Cartagena, Colombia', '5 Estrellas', 350.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Beachfront', 'Las Vegas, USA', '3 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Pacific Coast Inn', 'Miami, USA', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Cabo View', 'Baja California, M�xico', '5 Estrellas', 390.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Skyline Resort', 'Cozumel, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean Breeze Suites', 'Varadero, Cuba', '3 Estrellas', 130.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Vista Marina', 'Boca Chica, Rep�blica Dominicana', '4 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Lagoon', 'Tulum, M�xico', '5 Estrellas', 320.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Vista', 'Puerto Rico', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Emerald Bay Hotel', 'Las Vegas, USA', '3 Estrellas', 120.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Lagoon Paradise', 'Canc�n, M�xico', '5 Estrellas', 350.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palms Resort', 'Bavaro, Rep�blica Dominicana', '4 Estrellas', 200.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Vista Caribe', 'Boca Chica, Rep�blica Dominicana', '5 Estrellas', 330.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Crystal Palace', 'Bavaro, Rep�blica Dominicana', '3 Estrellas', 140.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Seaside Hotel', 'Canc�n, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palm Springs Resort', 'Tulum, M�xico', '5 Estrellas', 360.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Marina Bay Resort', 'Puerto Vallarta, M�xico', '4 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Laguna Azul', 'Riviera Maya, M�xico', '5 Estrellas', 370.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Paradise Beach', 'Las Vegas, USA', '3 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Oasis', 'Barbados', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Silver Sands Resort', 'Varadero, Cuba', '5 Estrellas', 340.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Island Breeze', 'Bavaro, Rep�blica Dominicana', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean View Suites', 'Cozumel, M�xico', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palm Bay Beach Resort', 'Miami, USA', '3 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Crystal Beachfront', 'Puerto Rico', '5 Estrellas', 390.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Vista del Mar', 'Cabo San Lucas, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Coast Resort', 'Cozumel, M�xico', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Dreams Bay', 'Cartagena, Colombia', '3 Estrellas', 140.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Waters Inn', 'Las Vegas, USA', '4 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunshine Cove', 'Boca Chica, Rep�blica Dominicana', '5 Estrellas', 360.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Reef Resort', 'Tulum, M�xico', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Lagoon Villas', 'Puerto Vallarta, M�xico', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oasis Paradise', 'Canc�n, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Caribbean Breeze Hotel', 'Varadero, Cuba', '3 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Majestic Palm Resort', 'Barbados', '5 Estrellas', 370.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sea Cliff Hotel', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Laguna Grande', 'Puerto Rico', '3 Estrellas', 140.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Sun Resort', 'Las Vegas, USA', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Point', 'Canc�n, M�xico', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Sunset', 'Bavaro, Rep�blica Dominicana', '3 Estrellas', 170.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Beach Suites', 'Cartagena, Colombia', '5 Estrellas', 350.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oceanview Resort', 'Cozumel, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunshine Bay Resort', 'Punta Cana, Rep�blica Dominicana', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Coast Villas', 'Miami, USA', '3 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oasis Grande', 'Boca Chica, Rep�blica Dominicana', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Bliss', 'Riviera Maya, M�xico', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Skyline Resort', 'Canc�n, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Vista Mar', 'Tulum, M�xico', '5 Estrellas', 350.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Bay Resort', 'Las Vegas, USA', '3 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical View Hotel', 'Bavaro, Rep�blica Dominicana', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean Breeze Resort', 'Puerto Rico', '5 Estrellas', 370.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palms Bay Resort', 'Varadero, Cuba', '3 Estrellas', 140.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Lagoon', 'Cabo San Lucas, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('El Dorado Beach Resort', 'Puerto Vallarta, M�xico', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Mountain View Lodge', 'Sedona, USA', '4 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sea Breeze Inn', 'Barbados', '3 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Sun Resort', 'Canc�n, M�xico', '5 Estrellas', 410.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coastal Retreat', 'Riviera Maya, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Breeze Bay Hotel', 'Varadero, Cuba', '3 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Lagoon Resort', 'Cozumel, M�xico', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('The Island Retreat', 'Las Vegas, USA', '4 Estrellas', 240.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Starfish Bay', 'Tulum, M�xico', '5 Estrellas', 390.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Beach Club', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Paradise Resort', 'Cabo San Lucas, M�xico', '3 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Seaside Haven', 'Cartagena, Colombia', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean Breeze Inn', 'Boca Chica, Rep�blica Dominicana', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Villas', 'Varadero, Cuba', '5 Estrellas', 360.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunshine Beach Resort', 'Riviera Maya, M�xico', '3 Estrellas', 170.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Crystal Lagoon Resort', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Springs Hotel', 'Canc�n, M�xico', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Sands Hotel', 'Miami, USA', '3 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Lagoon Beach Resort', 'Cozumel, M�xico', '4 Estrellas', 240.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Cove Resort', 'Barbados', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Bay Villas', 'Tulum, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Majestic Sun Hotel', 'Cabo San Lucas, M�xico', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Waters Inn', 'Las Vegas, USA', '3 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Caribbean Sky Resort', 'Puerto Rico', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunrise Oasis', 'Boca Chica, Rep�blica Dominicana', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Luxury Bay Resort', 'Cartagena, Colombia', '5 Estrellas', 390.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Vista Bonita Resort', 'Puerto Vallarta, M�xico', '3 Estrellas', 150.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Heights Resort', 'Bavaro, Rep�blica Dominicana', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Laguna Azul Beach', 'Riviera Maya, M�xico', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Majestic Lagoon Resort', 'Canc�n, M�xico', '4 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Star Bay Resort', 'Cozumel, M�xico', '5 Estrellas', 390.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean View Hotel', 'Las Vegas, USA', '3 Estrellas', 170.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Sands Beach Resort', 'Varadero, Cuba', '4 Estrellas', 240.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Breeze Point Resort', 'Tulum, M�xico', '5 Estrellas', 380.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oceanic View Resort', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Ridge Resort', 'Puerto Vallarta, M�xico', '3 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Marina Beach Resort', 'Canc�n, M�xico', '5 Estrellas', 450.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Coast Hotel', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Gardens Inn', 'Cartagena, Colombia', '3 Estrellas', 190.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunshine View Resort', 'Boca Chica, Rep�blica Dominicana', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Reef Hotel', 'Barbados', '4 Estrellas', 240.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Lagoon Breeze Resort', 'Las Vegas, USA', '3 Estrellas', 160.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Seaside Escape Resort', 'Cozumel, M�xico', '5 Estrellas', 430.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Coral Beach Resort', 'Riviera Maya, M�xico', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Crystal Waters Resort', 'Tulum, M�xico', '5 Estrellas', 410.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Villas', 'Canc�n, M�xico', '3 Estrellas', 200.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunrise Bay Resort', 'Miami, USA', '4 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Oasis Hotel', 'Puerto Vallarta, M�xico', '5 Estrellas', 450.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean Breeze Villas', 'Varadero, Cuba', '4 Estrellas', 220.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Palm Shores Resort', 'Punta Cana, Rep�blica Dominicana', '5 Estrellas', 420.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Seaview Palace Hotel', 'Cabo San Lucas, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Lagoon Paradise Resort', 'Punta Cana, Rep�blica Dominicana', '3 Estrellas', 190.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Sands Beach Hotel', 'Barbados', '5 Estrellas', 400.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Blue Horizon Resort', 'Tulum, M�xico', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coastal View Inn', 'Varadero, Cuba', '3 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('The Waterfront Resort', 'Riviera Maya, M�xico', '5 Estrellas', 460.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Bay Hotel', 'Cabo San Lucas, M�xico', '4 Estrellas', 250.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Luxury Ocean View Resort', 'Las Vegas, USA', '5 Estrellas', 430.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Caribbean Blue Resort', 'Cartagena, Colombia', '3 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Golden Reef Inn', 'Punta Cana, Rep�blica Dominicana', '4 Estrellas', 240.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Oceanfront Villas', 'Cozumel, M�xico', '5 Estrellas', 450.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachfront Horizon Resort', 'Miami, USA', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Coral Bay Hotel', 'Canc�n, M�xico', '3 Estrellas', 180.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Lagoon Palace Resort', 'Las Vegas, USA', '5 Estrellas', 470.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunrise Lagoon Resort', 'Boca Chica, Rep�blica Dominicana', '4 Estrellas', 230.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Royal Coastal Resort', 'Cabo San Lucas, M�xico', '5 Estrellas', 440.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Beachside Escape Resort', 'Punta Cana, Rep�blica Dominicana', '3 Estrellas', 210.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Sunset Paradise Resort', 'Cartagena, Colombia', '5 Estrellas', 450.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Tropical Bay Hotel', 'Varadero, Cuba', '4 Estrellas', 240.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Ocean Breeze Resort', 'Tulum, M�xico', '3 Estrellas', 200.00);
INSERT INTO TBL_Hoteles (Nombre, Ubicacion, Categoria, Precio_Noche) VALUES ('Caribbean Ocean Resort', 'Puerto Vallarta, M�xico', '5 Estrellas', 480.00);

-- Operaciones CRUD para la tabla Hoteles 
SELECT * FROM TBL_Hoteles;

SELECT * FROM TBL_Hoteles
WHERE Categoria = '5 Estrellas';

SELECT * FROM TBL_Hoteles
WHERE Precio_Noche > 200;

UPDATE TBL_Hoteles
SET Precio_Noche = 250.00
WHERE Nombre = 'Hotel Mar Azul';

DELETE FROM TBL_Hoteles
WHERE Nombre = 'Hotel Sol y Mar';

-- Inserts de la Tabla: Vuelos
INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Delta Airlines', 'New York', 'Los Angeles', TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2024-12-20', 'YYYY-MM-DD'), 350.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('American Airlines', 'Miami', 'Chicago', TO_DATE('2024-12-21', 'YYYY-MM-DD'), TO_DATE('2024-12-21', 'YYYY-MM-DD'), 200.75);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('United Airlines', 'Houston', 'Denver', TO_DATE('2024-12-22', 'YYYY-MM-DD'), TO_DATE('2024-12-22', 'YYYY-MM-DD'), 180.30);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Southwest Airlines', 'San Francisco', 'Seattle', TO_DATE('2024-12-23', 'YYYY-MM-DD'), TO_DATE('2024-12-23', 'YYYY-MM-DD'), 120.90);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('JetBlue', 'Boston', 'Orlando', TO_DATE('2024-12-24', 'YYYY-MM-DD'), TO_DATE('2024-12-24', 'YYYY-MM-DD'), 250.60);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Alaska Airlines', 'Portland', 'Anchorage', TO_DATE('2024-12-25', 'YYYY-MM-DD'), TO_DATE('2024-12-25', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Spirit Airlines', 'Dallas', 'Atlanta', TO_DATE('2024-12-26', 'YYYY-MM-DD'), TO_DATE('2024-12-26', 'YYYY-MM-DD'), 99.99);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Frontier Airlines', 'Phoenix', 'Las Vegas', TO_DATE('2024-12-27', 'YYYY-MM-DD'), TO_DATE('2024-12-27', 'YYYY-MM-DD'), 80.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Hawaiian Airlines', 'Honolulu', 'Maui', TO_DATE('2024-12-28', 'YYYY-MM-DD'), TO_DATE('2024-12-28', 'YYYY-MM-DD'), 150.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Allegiant Air', 'Tampa', 'Nashville', TO_DATE('2024-12-29', 'YYYY-MM-DD'), TO_DATE('2024-12-29', 'YYYY-MM-DD'), 120.75);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Volaris', 'Ciudad de M�xico', 'Canc�n', TO_DATE('2024-12-30', 'YYYY-MM-DD'), TO_DATE('2024-12-30', 'YYYY-MM-DD'), 180.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('AeroM�xico', 'Guadalajara', 'Tijuana', TO_DATE('2024-12-31', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'), 210.99);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Interjet', 'Monterrey', 'Hermosillo', TO_DATE('2024-12-19', 'YYYY-MM-DD'), TO_DATE('2024-12-19', 'YYYY-MM-DD'), 130.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Delta Airlines', 'Atlanta', 'Miami', TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2024-12-20', 'YYYY-MM-DD'), 170.25);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('United Airlines', 'San Diego', 'San Jose', TO_DATE('2024-12-18', 'YYYY-MM-DD'), TO_DATE('2024-12-18', 'YYYY-MM-DD'), 160.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('LATAM Airlines', 'Lima', 'Bogot�', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 300.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Copa Airlines', 'Panam�', 'San Jos�', TO_DATE('2025-01-02', 'YYYY-MM-DD'), TO_DATE('2025-01-02', 'YYYY-MM-DD'), 220.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Iberia', 'Madrid', 'Barcelona', TO_DATE('2025-01-03', 'YYYY-MM-DD'), TO_DATE('2025-01-03', 'YYYY-MM-DD'), 150.75);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Air France', 'Par�s', 'Roma', TO_DATE('2025-01-04', 'YYYY-MM-DD'), TO_DATE('2025-01-04', 'YYYY-MM-DD'), 260.40);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Lufthansa', 'Berl�n', 'Munich', TO_DATE('2025-01-05', 'YYYY-MM-DD'), TO_DATE('2025-01-05', 'YYYY-MM-DD'), 180.10);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('British Airways', 'Londres', 'Dubl�n', TO_DATE('2025-01-06', 'YYYY-MM-DD'), TO_DATE('2025-01-06', 'YYYY-MM-DD'), 170.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Emirates', 'Dub�i', 'Singapur', TO_DATE('2025-01-07', 'YYYY-MM-DD'), TO_DATE('2025-01-07', 'YYYY-MM-DD'), 750.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) 
VALUES ('Qatar Airways', 'Doha', 'Bangkok', TO_DATE('2025-01-08', 'YYYY-MM-DD'), TO_DATE('2025-01-08', 'YYYY-MM-DD'), 680.75);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Avianca', 'Bogot�', 'Medell�n', TO_DATE('2025-01-09', 'YYYY-MM-DD'), TO_DATE('2025-01-09', 'YYYY-MM-DD'), 100.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LATAM Airlines', 'Santiago', 'Lima', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Copa Airlines', 'Ciudad de Panam�', 'Canc�n', TO_DATE('2025-01-11', 'YYYY-MM-DD'), TO_DATE('2025-01-11', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Delta Airlines', 'New York', 'Miami', TO_DATE('2025-01-12', 'YYYY-MM-DD'), TO_DATE('2025-01-12', 'YYYY-MM-DD'), 150.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('American Airlines', 'Chicago', 'Dallas', TO_DATE('2025-01-13', 'YYYY-MM-DD'), TO_DATE('2025-01-13', 'YYYY-MM-DD'), 120.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('United Airlines', 'Los Angeles', 'Seattle', TO_DATE('2025-01-14', 'YYYY-MM-DD'), TO_DATE('2025-01-14', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Alaska Airlines', 'Anchorage', 'Fairbanks', TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-01-15', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('JetBlue', 'Boston', 'Newark', TO_DATE('2025-01-16', 'YYYY-MM-DD'), TO_DATE('2025-01-16', 'YYYY-MM-DD'), 100.50);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Volaris', 'Guadalajara', 'Ciudad de M�xico', TO_DATE('2025-01-17', 'YYYY-MM-DD'), TO_DATE('2025-01-17', 'YYYY-MM-DD'), 110.75);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('AeroM�xico', 'Monterrey', 'Canc�n', TO_DATE('2025-01-18', 'YYYY-MM-DD'), TO_DATE('2025-01-18', 'YYYY-MM-DD'), 250.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Southwest Airlines', 'San Diego', 'Las Vegas', TO_DATE('2025-01-19', 'YYYY-MM-DD'), TO_DATE('2025-01-19', 'YYYY-MM-DD'), 90.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Spirit Airlines', 'Dallas', 'Orlando', TO_DATE('2025-01-20', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'), 80.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Frontier Airlines', 'Atlanta', 'Tampa', TO_DATE('2025-01-21', 'YYYY-MM-DD'), TO_DATE('2025-01-21', 'YYYY-MM-DD'), 70.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Hawaiian Airlines', 'Honolulu', 'Kona', TO_DATE('2025-01-22', 'YYYY-MM-DD'), TO_DATE('2025-01-22', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Allegiant Air', 'Tampa', 'Charlotte', TO_DATE('2025-01-23', 'YYYY-MM-DD'), TO_DATE('2025-01-23', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Emirates', 'Dub�i', 'Melbourne', TO_DATE('2025-01-24', 'YYYY-MM-DD'), TO_DATE('2025-01-24', 'YYYY-MM-DD'), 900.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qatar Airways', 'Doha', 'Manila', TO_DATE('2025-01-25', 'YYYY-MM-DD'), TO_DATE('2025-01-25', 'YYYY-MM-DD'), 850.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Iberia', 'Madrid', 'Lisboa', TO_DATE('2025-01-26', 'YYYY-MM-DD'), TO_DATE('2025-01-26', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air France', 'Par�s', 'Amsterdam', TO_DATE('2025-01-27', 'YYYY-MM-DD'), TO_DATE('2025-01-27', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Lufthansa', 'Frankfurt', 'Vienna', TO_DATE('2025-01-28', 'YYYY-MM-DD'), TO_DATE('2025-01-28', 'YYYY-MM-DD'), 220.00);


INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('British Airways', 'Londres', 'Nueva York', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), 750.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Canada', 'Toronto', 'Vancouver', TO_DATE('2025-02-02', 'YYYY-MM-DD'), TO_DATE('2025-02-02', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('KLM', 'Amsterdam', 'Tokio', TO_DATE('2025-02-03', 'YYYY-MM-DD'), TO_DATE('2025-02-04', 'YYYY-MM-DD'), 980.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Asia', 'Bangkok', 'Singapur', TO_DATE('2025-02-04', 'YYYY-MM-DD'), TO_DATE('2025-02-04', 'YYYY-MM-DD'), 120.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qantas', 'S�dney', 'Auckland', TO_DATE('2025-02-05', 'YYYY-MM-DD'), TO_DATE('2025-02-05', 'YYYY-MM-DD'), 310.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Lufthansa', 'Berl�n', 'Estocolmo', TO_DATE('2025-02-06', 'YYYY-MM-DD'), TO_DATE('2025-02-06', 'YYYY-MM-DD'), 240.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('AeroM�xico', 'Ciudad de M�xico', 'Tijuana', TO_DATE('2025-02-07', 'YYYY-MM-DD'), TO_DATE('2025-02-07', 'YYYY-MM-DD'), 230.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Volaris', 'Ciudad de M�xico', 'M�rida', TO_DATE('2025-02-08', 'YYYY-MM-DD'), TO_DATE('2025-02-08', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Delta Airlines', 'Los �ngeles', 'Atlanta', TO_DATE('2025-02-09', 'YYYY-MM-DD'), TO_DATE('2025-02-09', 'YYYY-MM-DD'), 320.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Southwest Airlines', 'Houston', 'Phoenix', TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-02-10', 'YYYY-MM-DD'), 170.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('United Airlines', 'Denver', 'Salt Lake City', TO_DATE('2025-02-11', 'YYYY-MM-DD'), TO_DATE('2025-02-11', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Alaska Airlines', 'Portland', 'Las Vegas', TO_DATE('2025-02-12', 'YYYY-MM-DD'), TO_DATE('2025-02-12', 'YYYY-MM-DD'), 190.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Spirit Airlines', 'Miami', 'Charlotte', TO_DATE('2025-02-13', 'YYYY-MM-DD'), TO_DATE('2025-02-13', 'YYYY-MM-DD'), 110.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Avianca', 'Medell�n', 'Quito', TO_DATE('2025-02-14', 'YYYY-MM-DD'), TO_DATE('2025-02-14', 'YYYY-MM-DD'), 210.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LATAM Airlines', 'Buenos Aires', 'Santiago', TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Copa Airlines', 'Panam�', 'Lima', TO_DATE('2025-02-16', 'YYYY-MM-DD'), TO_DATE('2025-02-16', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('JetBlue', 'Nueva York', 'Orlando', TO_DATE('2025-02-17', 'YYYY-MM-DD'), TO_DATE('2025-02-17', 'YYYY-MM-DD'), 140.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('British Airways', 'Londres', 'Barcelona', TO_DATE('2025-02-18', 'YYYY-MM-DD'), TO_DATE('2025-02-18', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air France', 'Par�s', 'Roma', TO_DATE('2025-02-19', 'YYYY-MM-DD'), TO_DATE('2025-02-19', 'YYYY-MM-DD'), 280.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('KLM', 'Amsterdam', 'Madrid', TO_DATE('2025-02-20', 'YYYY-MM-DD'), TO_DATE('2025-02-20', 'YYYY-MM-DD'), 310.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qatar Airways', 'Doha', 'Dub�i', TO_DATE('2025-02-21', 'YYYY-MM-DD'), TO_DATE('2025-02-21', 'YYYY-MM-DD'), 410.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qantas', 'Melbourne', 'Brisbane', TO_DATE('2025-02-22', 'YYYY-MM-DD'), TO_DATE('2025-02-22', 'YYYY-MM-DD'), 240.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Emirates', 'Dub�i', 'Ciudad del Cabo', TO_DATE('2025-02-23', 'YYYY-MM-DD'), TO_DATE('2025-02-23', 'YYYY-MM-DD'), 780.00);


INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('American Airlines', 'Dallas', 'San Francisco', TO_DATE('2025-02-24', 'YYYY-MM-DD'), TO_DATE('2025-02-24', 'YYYY-MM-DD'), 390.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LATAM Airlines', 'Lima', 'Bogot�', TO_DATE('2025-02-25', 'YYYY-MM-DD'), TO_DATE('2025-02-25', 'YYYY-MM-DD'), 320.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Volaris', 'Tijuana', 'Monterrey', TO_DATE('2025-02-26', 'YYYY-MM-DD'), TO_DATE('2025-02-26', 'YYYY-MM-DD'), 270.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Hawaiian Airlines', 'Honolulu', 'Maui', TO_DATE('2025-02-27', 'YYYY-MM-DD'), TO_DATE('2025-02-27', 'YYYY-MM-DD'), 190.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Turkish Airlines', 'Estambul', 'Atenas', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), 250.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('KLM', 'Amsterdam', 'Copenhague', TO_DATE('2025-02-02', 'YYYY-MM-DD'), TO_DATE('2025-02-02', 'YYYY-MM-DD'), 220.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Aeroflot', 'Mosc�', 'San Petersburgo', TO_DATE('2025-02-03', 'YYYY-MM-DD'), TO_DATE('2025-02-03', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('British Airways', 'Londres', 'Edimburgo', TO_DATE('2025-02-04', 'YYYY-MM-DD'), TO_DATE('2025-02-04', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Swiss Air', 'Z�rich', 'Ginebra', TO_DATE('2025-02-05', 'YYYY-MM-DD'), TO_DATE('2025-02-05', 'YYYY-MM-DD'), 170.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Scandinavian Airlines', 'Estocolmo', 'Oslo', TO_DATE('2025-02-06', 'YYYY-MM-DD'), TO_DATE('2025-02-06', 'YYYY-MM-DD'), 160.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air India', 'Nueva Delhi', 'Bombay', TO_DATE('2025-02-07', 'YYYY-MM-DD'), TO_DATE('2025-02-07', 'YYYY-MM-DD'), 100.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Japan Airlines', 'Tokio', 'Osaka', TO_DATE('2025-02-08', 'YYYY-MM-DD'), TO_DATE('2025-02-08', 'YYYY-MM-DD'), 120.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Cathay Pacific', 'Hong Kong', 'Singapur', TO_DATE('2025-02-09', 'YYYY-MM-DD'), TO_DATE('2025-02-09', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('China Southern', 'Pek�n', 'Shangh�i', TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-02-10', 'YYYY-MM-DD'), 220.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qantas', 'S�dney', 'Brisbane', TO_DATE('2025-02-11', 'YYYY-MM-DD'), TO_DATE('2025-02-11', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air New Zealand', 'Auckland', 'Wellington', TO_DATE('2025-02-12', 'YYYY-MM-DD'), TO_DATE('2025-02-12', 'YYYY-MM-DD'), 130.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Thai Airways', 'Bangkok', 'Phuket', TO_DATE('2025-02-13', 'YYYY-MM-DD'), TO_DATE('2025-02-13', 'YYYY-MM-DD'), 110.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Singapore Airlines', 'Singapur', 'Kuala Lumpur', TO_DATE('2025-02-14', 'YYYY-MM-DD'), TO_DATE('2025-02-14', 'YYYY-MM-DD'), 90.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Virgin Atlantic', 'Londres', 'Nueva York', TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), 450.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Etihad Airways', 'Abu Dhabi', 'El Cairo', TO_DATE('2025-02-16', 'YYYY-MM-DD'), TO_DATE('2025-02-16', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Ethiopian Airlines', 'Addis Ababa', 'Nairobi', TO_DATE('2025-02-17', 'YYYY-MM-DD'), TO_DATE('2025-02-17', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('South African Airways', 'Johannesburgo', 'Ciudad del Cabo', TO_DATE('2025-02-18', 'YYYY-MM-DD'), TO_DATE('2025-02-18', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Gol Linhas A�reas', 'R�o de Janeiro', 'S�o Paulo', TO_DATE('2025-02-19', 'YYYY-MM-DD'), TO_DATE('2025-02-19', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Azul Airlines', 'Belo Horizonte', 'Brasilia', TO_DATE('2025-02-20', 'YYYY-MM-DD'), TO_DATE('2025-02-20', 'YYYY-MM-DD'), 120.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Canada', 'Toronto', 'Vancouver', TO_DATE('2025-02-21', 'YYYY-MM-DD'), TO_DATE('2025-02-21', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('WestJet', 'Calgary', 'Edmonton', TO_DATE('2025-02-22', 'YYYY-MM-DD'), TO_DATE('2025-02-22', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Alitalia', 'Roma', 'Mil�n', TO_DATE('2025-02-23', 'YYYY-MM-DD'), TO_DATE('2025-02-23', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Austrian Airlines', 'Viena', 'Praga', TO_DATE('2025-02-24', 'YYYY-MM-DD'), TO_DATE('2025-02-24', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Tap Air Portugal', 'Lisboa', 'Madrid', TO_DATE('2025-02-25', 'YYYY-MM-DD'), TO_DATE('2025-02-25', 'YYYY-MM-DD'), 220.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Europa', 'Barcelona', 'Valencia', TO_DATE('2025-02-26', 'YYYY-MM-DD'), TO_DATE('2025-02-26', 'YYYY-MM-DD'), 90.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Vueling', 'Sevilla', 'Bilbao', TO_DATE('2025-02-27', 'YYYY-MM-DD'), TO_DATE('2025-02-27', 'YYYY-MM-DD'), 110.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Ryanair', 'Dubl�n', 'Londres', TO_DATE('2025-02-28', 'YYYY-MM-DD'), TO_DATE('2025-02-28', 'YYYY-MM-DD'), 70.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('EasyJet', 'Londres', 'Berl�n', TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD'), 100.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Norwegian Air', 'Oslo', 'Reykjavik', TO_DATE('2025-03-02', 'YYYY-MM-DD'), TO_DATE('2025-03-02', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Finnair', 'Helsinki', 'Estocolmo', TO_DATE('2025-03-03', 'YYYY-MM-DD'), TO_DATE('2025-03-03', 'YYYY-MM-DD'), 130.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LOT Polish Airlines', 'Varsovia', 'Bucarest', TO_DATE('2025-03-04', 'YYYY-MM-DD'), TO_DATE('2025-03-04', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Brussels Airlines', 'Bruselas', '�msterdam', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-03-05', 'YYYY-MM-DD'), 140.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Aerom�xico', 'Ciudad de M�xico', 'Los �ngeles', TO_DATE('2025-03-06', 'YYYY-MM-DD'), TO_DATE('2025-03-06', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LATAM Airlines', 'Bogot�', 'Santiago', TO_DATE('2025-03-07', 'YYYY-MM-DD'), TO_DATE('2025-03-07', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Iberia', 'Madrid', 'Barcelona', TO_DATE('2025-03-08', 'YYYY-MM-DD'), TO_DATE('2025-03-08', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Canada', 'Montreal', 'Toronto', TO_DATE('2025-03-09', 'YYYY-MM-DD'), TO_DATE('2025-03-09', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Delta Airlines', 'Atlanta', 'Chicago', TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'), 210.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('United Airlines', 'San Francisco', 'Denver', TO_DATE('2025-03-11', 'YYYY-MM-DD'), TO_DATE('2025-03-11', 'YYYY-MM-DD'), 230.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('American Airlines', 'Dallas', 'Las Vegas', TO_DATE('2025-03-12', 'YYYY-MM-DD'), TO_DATE('2025-03-12', 'YYYY-MM-DD'), 190.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('JetBlue', 'Orlando', 'New York', TO_DATE('2025-03-13', 'YYYY-MM-DD'), TO_DATE('2025-03-13', 'YYYY-MM-DD'), 170.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Spirit Airlines', 'Fort Lauderdale', 'San Juan', TO_DATE('2025-03-14', 'YYYY-MM-DD'), TO_DATE('2025-03-14', 'YYYY-MM-DD'), 120.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Volaris', 'Tijuana', 'Ciudad de M�xico', TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-03-15', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Copa Airlines', 'Ciudad de Panam�', 'Bogot�', TO_DATE('2025-03-16', 'YYYY-MM-DD'), TO_DATE('2025-03-16', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qantas', 'Melbourne', 'Auckland', TO_DATE('2025-03-17', 'YYYY-MM-DD'), TO_DATE('2025-03-17', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air France', 'Par�s', 'Roma', TO_DATE('2025-03-18', 'YYYY-MM-DD'), TO_DATE('2025-03-18', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Lufthansa', 'M�nich', 'Viena', TO_DATE('2025-03-19', 'YYYY-MM-DD'), TO_DATE('2025-03-19', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Swiss Air', 'Ginebra', 'Z�rich', TO_DATE('2025-03-20', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Turkish Airlines', 'Estambul', 'Dub�i', TO_DATE('2025-03-21', 'YYYY-MM-DD'), TO_DATE('2025-03-21', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qatar Airways', 'Doha', 'Londres', TO_DATE('2025-03-22', 'YYYY-MM-DD'), TO_DATE('2025-03-22', 'YYYY-MM-DD'), 450.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Etihad Airways', 'Abu Dhabi', 'Par�s', TO_DATE('2025-03-23', 'YYYY-MM-DD'), TO_DATE('2025-03-23', 'YYYY-MM-DD'), 420.00);
INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Vueling', 'Sevilla', 'Bilbao', TO_DATE('2025-02-27', 'YYYY-MM-DD'), TO_DATE('2025-02-27', 'YYYY-MM-DD'), 110.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Ryanair', 'Dubl�n', 'Londres', TO_DATE('2025-02-28', 'YYYY-MM-DD'), TO_DATE('2025-02-28', 'YYYY-MM-DD'), 70.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('EasyJet', 'Londres', 'Berl�n', TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD'), 100.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Norwegian Air', 'Oslo', 'Reykjavik', TO_DATE('2025-03-02', 'YYYY-MM-DD'), TO_DATE('2025-03-02', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Finnair', 'Helsinki', 'Estocolmo', TO_DATE('2025-03-03', 'YYYY-MM-DD'), TO_DATE('2025-03-03', 'YYYY-MM-DD'), 130.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LOT Polish Airlines', 'Varsovia', 'Bucarest', TO_DATE('2025-03-04', 'YYYY-MM-DD'), TO_DATE('2025-03-04', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Brussels Airlines', 'Bruselas', '�msterdam', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-03-05', 'YYYY-MM-DD'), 140.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Aerom�xico', 'Ciudad de M�xico', 'Los �ngeles', TO_DATE('2025-03-06', 'YYYY-MM-DD'), TO_DATE('2025-03-06', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LATAM Airlines', 'Bogot�', 'Santiago', TO_DATE('2025-03-07', 'YYYY-MM-DD'), TO_DATE('2025-03-07', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Iberia', 'Madrid', 'Barcelona', TO_DATE('2025-03-08', 'YYYY-MM-DD'), TO_DATE('2025-03-08', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Canada', 'Montreal', 'Toronto', TO_DATE('2025-03-09', 'YYYY-MM-DD'), TO_DATE('2025-03-09', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Delta Airlines', 'Atlanta', 'Chicago', TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'), 210.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('United Airlines', 'San Francisco', 'Denver', TO_DATE('2025-03-11', 'YYYY-MM-DD'), TO_DATE('2025-03-11', 'YYYY-MM-DD'), 230.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('American Airlines', 'Dallas', 'Las Vegas', TO_DATE('2025-03-12', 'YYYY-MM-DD'), TO_DATE('2025-03-12', 'YYYY-MM-DD'), 190.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('JetBlue', 'Orlando', 'New York', TO_DATE('2025-03-13', 'YYYY-MM-DD'), TO_DATE('2025-03-13', 'YYYY-MM-DD'), 170.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Spirit Airlines', 'Fort Lauderdale', 'San Juan', TO_DATE('2025-03-14', 'YYYY-MM-DD'), TO_DATE('2025-03-14', 'YYYY-MM-DD'), 120.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Volaris', 'Tijuana', 'Ciudad de M�xico', TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-03-15', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Copa Airlines', 'Ciudad de Panam�', 'Bogot�', TO_DATE('2025-03-16', 'YYYY-MM-DD'), TO_DATE('2025-03-16', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qantas', 'Melbourne', 'Auckland', TO_DATE('2025-03-17', 'YYYY-MM-DD'), TO_DATE('2025-03-17', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air France', 'Par�s', 'Roma', TO_DATE('2025-03-18', 'YYYY-MM-DD'), TO_DATE('2025-03-18', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Lufthansa', 'M�nich', 'Viena', TO_DATE('2025-03-19', 'YYYY-MM-DD'), TO_DATE('2025-03-19', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Swiss Air', 'Ginebra', 'Z�rich', TO_DATE('2025-03-20', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Turkish Airlines', 'Estambul', 'Dub�i', TO_DATE('2025-03-21', 'YYYY-MM-DD'), TO_DATE('2025-03-21', 'YYYY-MM-DD'), 400.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qatar Airways', 'Doha', 'Londres', TO_DATE('2025-03-22', 'YYYY-MM-DD'), TO_DATE('2025-03-22', 'YYYY-MM-DD'), 450.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Etihad Airways', 'Abu Dhabi', 'Par�s', TO_DATE('2025-03-23', 'YYYY-MM-DD'), TO_DATE('2025-03-23', 'YYYY-MM-DD'), 420.00);
INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('LATAM Airlines', 'Lima', 'Bogot�', TO_DATE('2025-03-24', 'YYYY-MM-DD'), TO_DATE('2025-03-24', 'YYYY-MM-DD'), 320.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Aerom�xico', 'Canc�n', 'Ciudad de M�xico', TO_DATE('2025-03-25', 'YYYY-MM-DD'), TO_DATE('2025-03-25', 'YYYY-MM-DD'), 250.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Copa Airlines', 'San Jos�', 'Ciudad de Panam�', TO_DATE('2025-03-26', 'YYYY-MM-DD'), TO_DATE('2025-03-26', 'YYYY-MM-DD'), 200.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Volaris', 'Guadalajara', 'Tijuana', TO_DATE('2025-03-27', 'YYYY-MM-DD'), TO_DATE('2025-03-27', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Delta Airlines', 'Nueva York', 'Miami', TO_DATE('2025-03-28', 'YYYY-MM-DD'), TO_DATE('2025-03-28', 'YYYY-MM-DD'), 280.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('American Airlines', 'Dallas', 'Denver', TO_DATE('2025-03-29', 'YYYY-MM-DD'), TO_DATE('2025-03-29', 'YYYY-MM-DD'), 230.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Spirit Airlines', 'Orlando', 'Atlanta', TO_DATE('2025-03-30', 'YYYY-MM-DD'), TO_DATE('2025-03-30', 'YYYY-MM-DD'), 140.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Canada', 'Toronto', 'Calgary', TO_DATE('2025-03-31', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'), 270.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air France', 'Par�s', 'M�nich', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), 310.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Lufthansa', 'Berl�n', 'Madrid', TO_DATE('2025-04-02', 'YYYY-MM-DD'), TO_DATE('2025-04-02', 'YYYY-MM-DD'), 340.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Ryanair', 'Roma', 'Atenas', TO_DATE('2025-04-03', 'YYYY-MM-DD'), TO_DATE('2025-04-03', 'YYYY-MM-DD'), 190.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('EasyJet', 'Londres', '�msterdam', TO_DATE('2025-04-04', 'YYYY-MM-DD'), TO_DATE('2025-04-04', 'YYYY-MM-DD'), 150.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Swiss Air', 'Z�rich', 'Venecia', TO_DATE('2025-04-05', 'YYYY-MM-DD'), TO_DATE('2025-04-05', 'YYYY-MM-DD'), 210.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qatar Airways', 'Doha', 'S�dney', TO_DATE('2025-04-06', 'YYYY-MM-DD'), TO_DATE('2025-04-08', 'YYYY-MM-DD'), 850.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Turkish Airlines', 'Estambul', 'Par�s', TO_DATE('2025-04-07', 'YYYY-MM-DD'), TO_DATE('2025-04-07', 'YYYY-MM-DD'), 430.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Emirates', 'Dub�i', 'Tokio', TO_DATE('2025-04-08', 'YYYY-MM-DD'), TO_DATE('2025-04-09', 'YYYY-MM-DD'), 920.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Japan Airlines', 'Tokio', 'Se�l', TO_DATE('2025-04-09', 'YYYY-MM-DD'), TO_DATE('2025-04-09', 'YYYY-MM-DD'), 280.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('ANA', 'Osaka', 'Hong Kong', TO_DATE('2025-04-10', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), 600.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('China Southern', 'Pek�n', 'Bangkok', TO_DATE('2025-04-11', 'YYYY-MM-DD'), TO_DATE('2025-04-11', 'YYYY-MM-DD'), 520.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Singapore Airlines', 'Singapur', 'Melbourne', TO_DATE('2025-04-12', 'YYYY-MM-DD'), TO_DATE('2025-04-13', 'YYYY-MM-DD'), 700.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air India', 'Mumbai', 'Nueva Delhi', TO_DATE('2025-04-13', 'YYYY-MM-DD'), TO_DATE('2025-04-13', 'YYYY-MM-DD'), 180.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Thai Airways', 'Bangkok', 'Phuket', TO_DATE('2025-04-14', 'YYYY-MM-DD'), TO_DATE('2025-04-14', 'YYYY-MM-DD'), 160.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('South African Airways', 'Johannesburgo', 'Nairobi', TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), 480.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Ethiopian Airlines', 'Addis Ababa', 'Cairo', TO_DATE('2025-04-16', 'YYYY-MM-DD'), TO_DATE('2025-04-16', 'YYYY-MM-DD'), 500.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Gol Linhas A�reas', 'S�o Paulo', 'Buenos Aires', TO_DATE('2025-04-17', 'YYYY-MM-DD'), TO_DATE('2025-04-17', 'YYYY-MM-DD'), 300.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Azul Airlines', 'R�o de Janeiro', 'Lima', TO_DATE('2025-04-18', 'YYYY-MM-DD'), TO_DATE('2025-04-18', 'YYYY-MM-DD'), 350.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Qantas', 'Brisbane', 'Auckland', TO_DATE('2025-04-19', 'YYYY-MM-DD'), TO_DATE('2025-04-19', 'YYYY-MM-DD'), 320.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Alitalia', 'Mil�n', 'Atenas', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-04-20', 'YYYY-MM-DD'), 270.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Iberia', 'Lisboa', 'Valencia', TO_DATE('2025-04-21', 'YYYY-MM-DD'), TO_DATE('2025-04-21', 'YYYY-MM-DD'), 190.00);

INSERT INTO TBL_Vuelos (Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio)
VALUES ('Air Europa', 'Barcelona', 'Palma de Mallorca', TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-22', 'YYYY-MM-DD'), 140.00);

-- Operaciones CRUD para la tabla Vuelos
SELECT * FROM TBL_Vuelos;

SELECT * FROM TBL_Vuelos
WHERE Aerolinea = 'Delta Airlines';

SELECT * FROM TBL_Vuelos
WHERE Precio > 200;

UPDATE TBL_Vuelos
SET Precio = 375.00
WHERE Aerolinea = 'Delta Airlines' AND Origen = 'New York' AND Destino = 'Los Angeles';

DELETE FROM TBL_Vuelos
WHERE Precio < 150;


-- Inserts de la tabla: Tours
INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las Pir�mides de Egipto', 'Explora las pir�mides de Giza, la Esfinge y el Museo Egipcio con un gu�a experto.', 8, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el Serengeti', 'Un emocionante safari de d�a completo en el Parque Nacional Serengeti, con avistamiento de fauna salvaje.', 12, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por los canales de Venecia', 'Disfruta de un paseo rom�ntico en g�ndola por los ic�nicos canales venecianos.', 2, 80.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por la Gran Muralla China', 'Un d�a explorando la majestuosa Gran Muralla y sus impresionantes paisajes.', 7, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Machu Picchu', 'Una visita guiada a las ruinas incas m�s famosas del mundo, incluyendo transporte desde Cusco.', 10, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita a la Torre Eiffel y Louvre', 'Un recorrido por los monumentos m�s emblem�ticos de Par�s, con acceso sin filas.', 6, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour de vinos en Napa Valley', 'Degusta los mejores vinos de California con visitas a tres bodegas seleccionadas.', 5, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n del Amazonas', 'Aventura guiada por la selva amaz�nica, con avistamiento de fauna y flora.', 12, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Caminata por el Parque Nacional Torres del Paine', 'Descubre paisajes patag�nicos con caminatas guiadas por senderos naturales.', 8, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour hist�rico en Roma', 'Recorrido por el Coliseo, el Foro Romano y la Fontana di Trevi con gu�a experto.', 5, 140.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Taj Mahal', 'Visita guiada al Taj Mahal y el Fuerte de Agra, con transporte incluido.', 6, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Snorkel en la Gran Barrera de Coral', 'Explora la vida marina en la Gran Barrera de Coral con equipo incluido.', 7, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour nocturno en Tokio', 'Descubre las luces y los sabores de Tokio en un tour nocturno por la ciudad.', 4, 100.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por las Cataratas del Ni�gara', 'Vistas espectaculares de las cataratas desde Canad� y Estados Unidos.', 5, 90.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Expedici�n al Monte Everest', 'Un tour para aventureros que incluye caminatas y exploraci�n del Himalaya.', 10, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los templos de Angkor', 'Explora Angkor Wat y templos cercanos con un gu�a experto.', 7, 210.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por Nueva York', 'Visita los principales puntos tur�sticos de Nueva York: Times Square, Central Park y m�s.', 6, 130.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por la Toscana', 'Explora los vi�edos y pueblos encantadores de la Toscana con degustaciones incluidas.', 8, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por la Ruta 66', 'Un viaje cl�sico por la hist�rica Ruta 66, explorando las ciudades m�s emblem�ticas.', 12, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Glaciar Perito Moreno', 'Visita guiada al imponente glaciar en la Patagonia Argentina.', 7, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo por la Bah�a de San Francisco', 'Explora la bah�a en barco, incluyendo vistas de Alcatraz y el Golden Gate.', 3, 70.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour gastron�mico en Bangkok', 'Descubre los sabores de Tailandia con degustaciones en mercados locales.', 5, 110.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por las islas griegas', 'Disfruta de un d�a navegando entre las islas Santorini y Mykonos.', 10, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en globo aerost�tico en Cappadocia', 'Vuela sobre los paisajes �nicos de Cappadocia al amanecer.', 3, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por el desierto del Sahara', 'Aventura en camello por el desierto, con cena tradicional y campamento nocturno.', 15, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de la Ant�rtida', 'Una expedici�n exclusiva al continente blanco, con vistas �nicas de glaciares y fauna.', 20, 1200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en tren por los Alpes suizos', 'Disfruta de paisajes espectaculares en un recorrido en tren panor�mico.', 7, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour cultural en Kioto', 'Visita templos, jardines y casas de t� tradicionales en la ciudad hist�rica de Kioto.', 6, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a la Isla de Pascua', 'Explora los misteriosos mo�is y las playas de esta isla remota.', 8, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Aventura en la Selva Negra', 'Caminatas guiadas y vistas impresionantes en el coraz�n de Alemania.', 5, 140.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari nocturno en Sud�frica', 'Descubre la vida nocturna del Parque Nacional Kruger en un safari �nico.', 6, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de cuevas en Vietnam', 'Descubre la belleza oculta de las cuevas de Phong Nha.', 8, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el Ca��n del Ant�lope', 'Visita guiada por las impresionantes formaciones rocosas del Ca��n del Ant�lope.', 4, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Viaje al Polo Norte', 'Una expedici�n �nica para explorar el �rtico en un rompehielos.', 15, 1500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour arqueol�gico en Jordania', 'Explora Petra, el desierto de Wadi Rum y el Mar Muerto con gu�a.', 10, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Caminata por el Camino de Santiago', 'Recorrido guiado por el famoso Camino de Santiago, con hospedajes incluidos.', 15, 600.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a las Islas Gal�pagos', 'Descubre la biodiversidad �nica de las Islas Gal�pagos con un gu�a experto.', 8, 800.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour de las auroras boreales en Noruega', 'Observa las espectaculares luces del norte en un tour especializado.', 6, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las playas de Bali', 'Explora las paradis�acas playas de Bali, con visitas a templos cercanos.', 6, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Gran Ca��n', 'Tour guiado al Gran Ca��n con vistas espectaculares desde distintos miradores.', 5, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por los fiordos noruegos', 'Navega por los impresionantes fiordos de Noruega, con paisajes naturales �nicos.', 10, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las Highlands escocesas', 'Recorre los paisajes verdes y los castillos hist�ricos de Escocia.', 8, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Palacio de Versalles', 'Descubre la historia y la belleza del Palacio de Versalles con un gu�a experto.', 4, 100.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Caminata por el Monte Fuji', 'Ascenso guiado al ic�nico Monte Fuji con paradas en estaciones intermedias.', 10, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en bicicleta por �msterdam', 'Descubre la ciudad en bicicleta, visitando canales y sitios emblem�ticos.', 4, 70.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por los castillos del Loira', 'Explora los hist�ricos castillos franceses del Valle del Loira.', 7, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el desierto de Dub�i', 'Aventura en 4x4 por el desierto, con espect�culo cultural y cena incluida.', 6, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en helic�ptero sobre Nueva York', 'Vuela sobre Manhattan y disfruta de vistas impresionantes de la ciudad.', 2, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en globo sobre el Valle del Loira', 'Admira los castillos y vi�edos desde las alturas en un paseo en globo.', 3, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los mercados de Marrakech', 'Descubre los coloridos mercados de Marrakech con un gu�a local.', 5, 90.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Monte Kilimanjaro', 'Caminata guiada por senderos del Kilimanjaro, con impresionantes vistas.', 12, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por el r�o Nilo', 'Disfruta de un lujoso crucero explorando templos y paisajes a lo largo del Nilo.', 8, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el desierto de Atacama', 'Explora los paisajes �ridos y �nicos del desierto m�s seco del mundo.', 7, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo por el centro hist�rico de Praga', 'Recorre las calles empedradas, el Reloj Astron�mico y el Castillo de Praga.', 3, 70.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de la cerveza en M�nich', 'Disfruta de una experiencia gastron�mica probando las mejores cervezas b�varas.', 5, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a los Alpes franceses', 'Disfruta de un d�a de esqu� o caminatas en los Alpes franceses.', 6, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el Lago Titicaca', 'Explora el lago navegable m�s alto del mundo, con visitas a islas flotantes.', 7, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a la Aurora Boreal en Islandia', 'Observa las luces del norte en un tour nocturno especializado.', 5, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en barco por el r�o T�mesis', 'Recorre Londres desde el agua, disfrutando de vistas ic�nicas como el Big Ben.', 2, 50.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por la Riviera Maya', 'Visita las ruinas mayas y playas paradis�acas de Tulum y Playa del Carmen.', 8, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en la muralla de Dubrovnik', 'Explora la ciudad fortificada de Dubrovnik con vistas al mar Adri�tico.', 4, 100.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por el Mediterr�neo', 'Disfruta de un viaje en crucero por destinos como Italia, Grecia y Espa�a.', 10, 700.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Parque Nacional Yellowstone', 'Descubre g�iseres, fauna salvaje y paisajes �nicos en Yellowstone.', 7, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour cultural por Estambul', 'Visita Santa Sof�a, la Mezquita Azul y el Gran Bazar con un gu�a local.', 6, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Parque Nacional Banff', 'Explora los impresionantes lagos y monta�as de Banff en Canad�.', 8, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en globo sobre Luxor', 'Vuela sobre el Valle de los Reyes y el Nilo al amanecer.', 3, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los volcanes de Haw�i', 'Explora cr�teres activos y playas negras en un tour �nico por Haw�i.', 6, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari fotogr�fico en Botswana', 'Avistamiento de fauna salvaje con un enfoque en fotograf�a profesional.', 10, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido en kayak por Halong Bay', 'Explora las aguas cristalinas y formaciones rocosas de Halong Bay en kayak.', 5, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour gastron�mico por Italia', 'Degustaci�n de pizzas, pastas y vinos en N�poles, Roma y Florencia.', 8, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo por los jardines de Keukenhof', 'Admira los tulipanes y jardines florales m�s hermosos de los Pa�ses Bajos.', 4, 90.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Museo del Prado y el Retiro', 'Descubre el arte y la cultura de Madrid con un gu�a experto.', 5, 100.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Volc�n Arenal en Costa Rica', 'Disfruta de un tour al volc�n y relajaci�n en aguas termales.', 6, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por la ruta del chocolate en Suiza', 'Prueba los mejores chocolates y visita f�bricas tradicionales.', 6, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido en glaciares en Alaska', 'Tour guiado por glaciares con caminatas y paseos en barco.', 8, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los templos de Kyoto y Nara', 'Visita santuarios y templos hist�ricos en Jap�n.', 7, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los Jardines de Butchart', 'Descubre los ic�nicos jardines de Butchart en Victoria, Canad�.', 3, 80.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por las Islas Gal�pagos', 'Explora la fauna �nica y paisajes volc�nicos de las Gal�pagos.', 7, 900.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido en tren por los Alpes Suizos', 'Disfruta de paisajes espectaculares en el Glacier Express.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de vinos en Napa Valley', 'Degustaci�n de vinos y recorridos por vi�edos en California.', 5, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de las Cataratas Victoria', 'Admira una de las maravillas naturales del mundo en Zambia y Zimbabue.', 4, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los templos de Angkor Wat', 'Descubre la historia y majestuosidad de los templos en Camboya.', 6, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Parque Nacional Kruger', 'Avistamiento de los Big Five en un safari inolvidable.', 7, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en barco por Cinque Terre', 'Disfruta de vistas espectaculares de los coloridos pueblos costeros.', 5, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a Machu Picchu', 'Descubre la ic�nica ciudadela inca en Per� con un gu�a especializado.', 6, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las dunas de Erg Chebbi', 'Paseo en camello y noche en un campamento bereber en Marruecos.', 8, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a la Gran Muralla China', 'Recorre una de las maravillas del mundo con vistas impresionantes.', 5, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los monasterios de Meteora', 'Explora los antiguos monasterios suspendidos en acantilados en Grecia.', 6, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en globo sobre Capadocia', 'Disfruta de vistas �nicas de las formaciones rocosas al amanecer.', 3, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de los fiordos chilenos', 'Navega por los fiordos de la Patagonia y observa glaciares.', 7, 450.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los templos de Bagan', 'Descubre la inmensidad de templos en Bagan, Myanmar.', 5, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por el Caribe', 'Visita islas paradis�acas como Bahamas, Jamaica y Puerto Rico.', 8, 700.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en las ruinas de Petra', 'Explora la ciudad perdida de Petra, con gu�as expertos en Jordania.', 5, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por la ruta del whisky en Escocia', 'Degustaci�n en destiler�as y recorridos por paisajes escoceses.', 6, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Parque Nacional Torres del Paine', 'Explora lagos, glaciares y monta�as en la Patagonia chilena.', 7, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour cultural en Ciudad de M�xico', 'Descubre museos, el Z�calo y el legado de Frida Kahlo.', 4, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por las islas de Croacia', 'Navega entre islas como Hvar, Bra? y Kor?ula.', 6, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el Parque Nacional Serengeti', 'Descubre la Gran Migraci�n y los paisajes infinitos de Tanzania.', 7, 600.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de trekking en los Dolomitas', 'Recorre senderos en los paisajes monta�osos del norte de Italia.', 8, 280.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita a las islas de Seychelles', 'Explora playas de ensue�o y disfruta de actividades acu�ticas.', 7, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour hist�rico por Jerusal�n', 'Descubre los sitios hist�ricos y religiosos de la Ciudad Vieja.', 5, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Monte Everest', 'Experiencia de trekking en la base del Monte Everest.', 12, 1200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los campos de lavanda en Provenza', 'Disfruta de los paisajes arom�ticos de la Provenza francesa.', 4, 140.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por la Amazon�a peruana', 'Explora la selva tropical y su biodiversidad �nica.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a las Blue Mountains', 'Descubre los paisajes de monta�as y cascadas en Australia.', 5, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en barco por el Lago Baikal', 'Navega por el lago m�s profundo del mundo en Siberia.', 5, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en los templos de Kyoto', 'Explora templos y jardines japoneses tradicionales.', 5, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour arqueol�gico en Egipto', 'Explora las pir�mides de Giza y templos hist�ricos.', 7, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en bicicleta por Barcelona', 'Recorre el Barrio G�tico, la Sagrada Familia y m�s en bicicleta.', 4, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por la Selva Negra', 'Descubre los paisajes y pueblos pintorescos de la Selva Negra.', 6, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el Parque Nacional Hwange', 'Explora la fauna salvaje de Zimbabue en un safari exclusivo.', 6, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los castillos de Baviera', 'Visita castillos como Neuschwanstein y Hohenschwangau.', 5, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a la Isla de Pascua', 'Explora los misteriosos mo�is y paisajes volc�nicos.', 8, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el Parque Nacional Yosemite', 'Descubre los paisajes y cascadas del emblem�tico parque de California.', 6, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por el Nilo', 'Navega por el r�o Nilo mientras visitas templos antiguos en Egipto.', 6, 450.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta del caf� en Colombia', 'Descubre el proceso de cultivo y producci�n del caf� colombiano.', 4, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a los fiordos noruegos', 'Explora los espectaculares fiordos y pueblos de Noruega.', 7, 550.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por el Taj Mahal', 'Descubre la historia y belleza de este ic�nico monumento en India.', 4, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en kayak por Halong Bay', 'Rema entre los islotes y cuevas en la bah�a de Halong, Vietnam.', 5, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Trekking por el Ca��n del Colca', 'Explora el impresionante ca��n y avista c�ndores en Per�.', 6, 280.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en barco por el Danubio', 'Navega entre Budapest y Viena disfrutando de vistas espectaculares.', 5, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los glaciares de Islandia', 'Visita glaciares y cuevas de hielo en una aventura inolvidable.', 7, 600.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los mercados flotantes de Tailandia', 'Descubre los vibrantes mercados en canales tailandeses.', 3, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n del Parque Yellowstone', 'Descubre g�iseres, ca�ones y vida silvestre en Yellowstone.', 5, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Santuario de Lhasa', 'Explora templos budistas y paisajes monta�osos en el T�bet.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el Delta del Okavango', 'Explora canales y vida salvaje en Botswana.', 7, 750.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por la Toscana italiana', 'Recorre vi�edos, colinas y ciudades medievales en Italia.', 5, 320.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los castillos del Loira', 'Visita los famosos castillos de la regi�n del Loira en Francia.', 4, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por Alaska', 'Explora glaciares y fiordos en un viaje inolvidable por Alaska.', 7, 800.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los arrozales de Bali', 'Descubre las terrazas de arroz y templos en Bali, Indonesia.', 3, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de las Monta�as Rocosas', 'Descubre lagos y monta�as en el Parque Nacional Banff, Canad�.', 6, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo por el Gran Ca��n', 'Explora senderos y disfruta de vistas panor�micas en Arizona.', 4, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita a la ciudad amurallada de Carcassonne', 'Recorre la historia medieval de Carcassonne en Francia.', 3, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a la Aurora Boreal', 'Admira la m�gica aurora boreal en Finlandia.', 5, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los volcanes de Haw�i', 'Explora los parques nacionales y paisajes volc�nicos de Haw�i.', 6, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en barco por el Mar Egeo', 'Descubre islas como Santorini y Mykonos en Grecia.', 7, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n del Parque Nacional Rapa Nui', 'Descubre los misterios de la Isla de Pascua y sus mo�is.', 5, 450.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por las Highlands escocesas', 'Descubre castillos, lagos y paisajes �picos en Escocia.', 6, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las ruinas de Pompeya', 'Explora la ciudad romana preservada por la erupci�n del Vesubio.', 4, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de trekking por los Andes', 'Descubre paisajes impresionantes en los Andes peruanos.', 8, 600.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en globo por los valles de Turqu�a', 'Disfruta de vistas panor�micas de Capadocia desde el aire.', 3, 280.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de la costa Amalfitana', 'Recorre la pintoresca costa italiana y sus coloridos pueblos.', 5, 320.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el Parque Nacional Chobe', 'Explora la vida salvaje y paisajes fluviales en Botswana.', 7, 700.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el desierto del Sahara', 'Experimenta una noche bajo las estrellas en un campamento bereber.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los canales de Brujas', 'Descubre la magia de Brujas en un paseo en barco por sus canales.', 3, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n al Monte Fuji', 'Ascenso y vistas impresionantes del Monte Fuji en Jap�n.', 4, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los lagos de Plitvice', 'Explora cascadas y lagos cristalinos en Croacia.', 5, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por la Ant�rtida', 'Explora paisajes helados y fauna �nica en un viaje extraordinario.', 10, 1500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de cata de quesos en Suiza', 'Prueba quesos tradicionales y visita f�bricas en Suiza.', 3, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los monasterios de Armenia', 'Descubre la riqueza hist�rica y arquitect�nica de Armenia.', 4, 160.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de las cascadas en Islandia', 'Explora las cascadas m�s espectaculares de Islandia.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour arqueol�gico en Pompeya y Herculano', 'Descubre las ciudades romanas preservadas por el Vesubio.', 5, 240.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en tren por el Ca��n del Colorado', 'Disfruta de vistas espectaculares del Gran Ca��n en un tren hist�rico.', 5, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de las ruinas de Chich�n Itz�', 'Conoce la historia de la civilizaci�n maya en esta maravilla del mundo.', 4, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por el Mediterr�neo', 'Visita destinos como Grecia, Italia y Espa�a en un lujoso crucero.', 7, 850.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los templos de Luxor', 'Explora los majestuosos templos de Karnak y Luxor en Egipto.', 5, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari nocturno en Kenia', 'Descubre la vida salvaje africana bajo las estrellas.', 4, 450.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las Highlands de Islandia', 'Recorre paisajes volc�nicos, glaciares y cascadas espectaculares.', 6, 550.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de las cuevas de Waitomo', 'Descubre las cuevas de luci�rnagas en Nueva Zelanda.', 3, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de trekking en Torres del Paine', 'Caminatas guiadas por los impresionantes paisajes de la Patagonia chilena.', 7, 600.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita al Kremlin y Plaza Roja', 'Recorre los monumentos ic�nicos de Mosc�.', 3, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los campos de tulipanes en Holanda', 'Disfruta de la colorida temporada de tulipanes en Keukenhof.', 2, 100.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Crucero por las islas Maldivas', 'Rel�jate en aguas cristalinas y descubre la belleza de las Maldivas.', 6, 1200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo en globo por los campos de la Toscana', 'Admira los paisajes de la Toscana desde el aire.', 3, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el Valle Sagrado de los Incas', 'Descubre sitios hist�ricos y comunidades tradicionales en Per�.', 5, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Recorrido por la Gran Ruta Oce�nica', 'Viaja por la ic�nica carretera costera en Australia.', 4, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el Parque Nacional Everglades', 'Explora pantanos y observa cocodrilos en Florida.', 3, 150.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los castillos de Transilvania', 'Conoce los misteriosos castillos de Ruman�a, incluido el de Dr�cula.', 5, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n del desierto de Atacama', 'Descubre paisajes �nicos como el Valle de la Luna y los g�iseres.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta en bicicleta por �msterdam', 'Explora los canales y calles de �msterdam en bicicleta.', 3, 120.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el lago Titicaca', 'Navega por el lago navegable m�s alto del mundo y visita islas flotantes.', 5, 250.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Safari en el Parque Nacional Etosha', 'Descubre la rica biodiversidad de Namibia.', 7, 700.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n del Monte Kilimanjaro', 'Asciende el pico m�s alto de �frica en un trekking desafiante.', 10, 1500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las cuevas de Postojna', 'Explora las impresionantes formaciones de esta cueva en Eslovenia.', 3, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita a la ciudad perdida de Tikal', 'Descubre las ruinas mayas en la selva guatemalteca.', 4, 280.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de trekking en el Annapurna', 'Recorre senderos en el Himalaya con vistas impresionantes.', 12, 1400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour en jeep por el Salar de Uyuni', 'Explora el desierto de sal m�s grande del mundo en Bolivia.', 4, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Excursi�n a la Garganta de Verdon', 'Explora el ca��n m�s grande de Europa en el sur de Francia.', 3, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour hist�rico por Praga', 'Descubre el reloj astron�mico, el Puente de Carlos y m�s.', 4, 220.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de vinos en Mendoza', 'Visita vi�edos y disfruta de catas en la regi�n vin�cola de Argentina.', 5, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por los fiordos de Milford Sound', 'Explora uno de los paisajes m�s espectaculares de Nueva Zelanda.', 4, 280.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita a las ruinas de �feso', 'Descubre las ruinas de la antigua ciudad de �feso en Turqu�a.', 3, 200.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por el Parque Nacional de Iguaz�', 'Admira las impresionantes cataratas desde Argentina y Brasil.', 4, 300.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n del Valle de los Reyes', 'Descubre las tumbas fara�nicas m�s importantes de Egipto.', 5, 350.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta de senderismo en el Mont Blanc', 'Explora los paisajes alpinos alrededor del Mont Blanc.', 7, 600.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Paseo por el Puente Golden Gate', 'Camina por el ic�nico puente de San Francisco.', 2, 100.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Visita a las islas Faroe', 'Descubre los paisajes v�rgenes y la cultura de las islas.', 6, 500.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los monasterios de Georgia', 'Explora los antiguos monasterios en las monta�as del C�ucaso.', 4, 180.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Tour por las playas de Seychelles', 'Rel�jate en las playas paradis�acas del archipi�lago.', 5, 700.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Exploraci�n de las selvas de Borneo', 'Descubre orangutanes y biodiversidad en la selva tropical.', 6, 400.00);

INSERT INTO TBL_Tours (Nombre, Descripcion, Duracion, Precio) 
VALUES ('Ruta por los campos de lavanda en Provenza', 'Disfruta de paisajes morados y fragantes en Francia.', 3, 150.00);

-- Operaciones CRUD para la tabla: Tours
SELECT * FROM TBL_Tours;

SELECT * FROM TBL_Tours
WHERE Precio > 200;

UPDATE TBL_Tours
SET Precio = 180.00
WHERE Nombre = 'Tour por las Pir�mides de Egipto';

DELETE FROM TBL_Tours
WHERE Nombre = 'Tour nocturno en Tokio';

--Inserts de la tabla: Reserva 
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (1, 1, 2);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (2, 2, 1);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (3, 3, 4);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (4, 4, 3);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (5, 5, 6);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (6, 6, 5);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (7, 7, 8);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (8, 8, 7);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (9, 9, 10);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (10, 10, 9);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (11, 11, 12);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (12, 12, 11);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (13, 13, 14);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (14, 14, 13);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (15, 15, 16);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (16, 16, 15);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (17, 17, 18);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (18, 18, 17);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (19, 19, 20);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (20, 20, 19);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (21, 21, 22);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (22, 22, 21);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (23, 23, 24);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (24, 24, 23);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (25, 25, 26);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (26, 26, 25);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (27, 27, 28);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (28, 28, 27);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (29, 29, 30);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (30, 30, 29);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (31, 31, 32);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (32, 32, 31);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (33, 33, 34);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (34, 34, 33);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (35, 35, 36);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (36, 36, 35);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (37, 37, 38);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (38, 38, 37);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (39, 39, 40);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (40, 40, 39);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (41, 1, 5);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (42, 2, 6);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (43, 3, 7);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (44, 4, 8);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (45, 5, 9);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (46, 6, 10);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (47, 7, 11);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (48, 8, 12);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (49, 9, 13);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (50, 10, 14);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (51, 11, 15);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (52, 12, 16);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (53, 13, 17);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (54, 14, 18);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (55, 15, 19);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (56, 16, 20);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (57, 17, 21);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (58, 18, 22);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (59, 19, 23);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (60, 20, 24);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (61, 21, 25);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (62, 22, 26);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (63, 23, 27);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (64, 24, 28);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (65, 25, 29);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (66, 26, 30);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (67, 27, 31);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (68, 28, 32);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (69, 29, 33);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (70, 30, 34);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (71, 31, 35);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (72, 32, 36);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (73, 33, 37);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (74, 34, 38);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (75, 35, 39);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (76, 36, 40);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (77, 37, 1);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (78, 38, 2);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (79, 39, 3);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (80, 40, 4);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (81, 5, 10);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (82, 6, 11);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (83, 7, 12);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (84, 8, 13);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (85, 9, 14);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (86, 10, 15);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (87, 11, 16);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (88, 12, 17);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (89, 13, 18);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (90, 14, 19);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (91, 15, 20);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (92, 16, 21);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (93, 17, 22);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (94, 18, 23);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (95, 19, 24);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (96, 20, 25);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (97, 21, 26);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (98, 22, 27);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (99, 23, 28);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (100, 24, 29);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (101, 25, 30);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (102, 26, 31);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (103, 27, 32);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (104, 28, 33);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (105, 29, 34);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (106, 30, 35);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (107, 31, 36);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (108, 32, 37);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (109, 33, 38);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (110, 34, 39);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (111, 35, 40);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (112, 36, 1);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (113, 37, 2);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (114, 38, 3);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (115, 39, 4);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (116, 40, 5);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (117, 1, 6);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (118, 2, 7);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (119, 3, 8);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (120, 4, 9);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (121, 6, 15);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (122, 7, 16);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (123, 8, 17);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (124, 9, 18);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (125, 10, 19);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (126, 11, 20);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (127, 12, 21);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (128, 13, 22);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (129, 14, 23);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (130, 15, 24);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (131, 16, 25);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (132, 17, 26);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (133, 18, 27);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (134, 19, 28);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (135, 20, 29);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (136, 21, 30);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (137, 22, 31);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (138, 23, 32);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (139, 24, 33);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (140, 25, 34);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (141, 26, 35);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (142, 27, 36);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (143, 28, 37);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (144, 29, 38);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (145, 30, 39);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (146, 31, 40);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (147, 32, 1);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (148, 33, 2);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (149, 34, 3);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (150, 35, 4);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (151, 36, 5);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (152, 37, 6);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (153, 38, 7);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (154, 39, 8);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (155, 40, 9);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (156, 1, 10);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (157, 2, 11);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (158, 3, 12);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (159, 4, 13);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (160, 5, 14);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (161, 6, 25);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (162, 7, 26);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (163, 8, 27);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (164, 9, 28);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (165, 10, 29);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (166, 11, 30);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (167, 12, 31);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (168, 13, 32);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (169, 14, 33);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (170, 15, 34);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (171, 16, 35);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (172, 17, 36);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (173, 18, 37);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (174, 19, 38);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (175, 20, 39);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (176, 21, 40);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (177, 22, 1);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (178, 23, 2);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (179, 24, 3);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (180, 25, 4);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (181, 26, 5);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (182, 27, 6);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (183, 28, 7);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (184, 29, 8);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (185, 30, 9);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (186, 31, 10);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (187, 32, 11);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (188, 33, 12);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (189, 34, 13);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (190, 35, 14);

INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (191, 36, 15);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (192, 37, 16);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (193, 38, 17);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (194, 39, 18);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (195, 40, 19);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (196, 1, 20);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (197, 2, 21);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (198, 3, 22);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (199, 4, 23);
INSERT INTO TBL_Reservas (ID_Cliente, ID_Vuelo, ID_Hotel) VALUES (200, 5, 24);

-- Inserts de la tabla: Pagos
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (150.00, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 1);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (200.00, TO_DATE('2024-01-06', 'YYYY-MM-DD'), 'PayPal', 2);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-01-07', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 3);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (450.00, TO_DATE('2024-01-08', 'YYYY-MM-DD'), 'Efectivo', 4);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.50, TO_DATE('2024-01-09', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 5);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (100.00, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'Transferencia Bancaria', 6);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (325.00, TO_DATE('2024-01-11', 'YYYY-MM-DD'), 'PayPal', 7);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (500.00, TO_DATE('2024-01-12', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 8);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-01-13', 'YYYY-MM-DD'), 'Efectivo', 9);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (120.00, TO_DATE('2024-01-14', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 10);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (450.00, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'Transferencia Bancaria', 11);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-01-16', 'YYYY-MM-DD'), 'PayPal', 12);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-01-17', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 13);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (190.00, TO_DATE('2024-01-18', 'YYYY-MM-DD'), 'Efectivo', 14);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (220.50, TO_DATE('2024-01-19', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 15);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (410.00, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 'Transferencia Bancaria', 16);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (145.00, TO_DATE('2024-01-21', 'YYYY-MM-DD'), 'PayPal', 17);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (530.00, TO_DATE('2024-01-22', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 18);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (330.00, TO_DATE('2024-01-23', 'YYYY-MM-DD'), 'Efectivo', 19);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-01-24', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 20);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (200.00, TO_DATE('2024-01-25', 'YYYY-MM-DD'), 'Transferencia Bancaria', 21);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (480.00, TO_DATE('2024-01-26', 'YYYY-MM-DD'), 'PayPal', 22);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (315.50, TO_DATE('2024-01-27', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 23);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (100.00, TO_DATE('2024-01-28', 'YYYY-MM-DD'), 'Efectivo', 24);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (245.00, TO_DATE('2024-01-29', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 25);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (375.00, TO_DATE('2024-01-30', 'YYYY-MM-DD'), 'Transferencia Bancaria', 26);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (190.00, TO_DATE('2024-01-31', 'YYYY-MM-DD'), 'PayPal', 27);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (550.00, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 28);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (380.00, TO_DATE('2024-02-02', 'YYYY-MM-DD'), 'Efectivo', 29);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (120.00, TO_DATE('2024-02-03', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 30);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (520.00, TO_DATE('2024-02-04', 'YYYY-MM-DD'), 'Transferencia Bancaria', 31);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 'PayPal', 32);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (180.00, TO_DATE('2024-02-06', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 33);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-02-07', 'YYYY-MM-DD'), 'Efectivo', 34);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (325.00, TO_DATE('2024-02-08', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 35);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (415.50, TO_DATE('2024-02-09', 'YYYY-MM-DD'), 'Transferencia Bancaria', 36);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 'PayPal', 37);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (150.00, TO_DATE('2024-02-11', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 38);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-02-12', 'YYYY-MM-DD'), 'Efectivo', 39);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-02-13', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 40);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (480.00, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 'Transferencia Bancaria', 41);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (210.50, TO_DATE('2024-02-15', 'YYYY-MM-DD'), 'PayPal', 42);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (315.00, TO_DATE('2024-02-16', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 43);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (145.00, TO_DATE('2024-02-17', 'YYYY-MM-DD'), 'Efectivo', 44);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (320.00, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 45);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (540.00, TO_DATE('2024-02-19', 'YYYY-MM-DD'), 'Transferencia Bancaria', 46);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (190.00, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'PayPal', 47);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (365.00, TO_DATE('2024-02-21', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 48);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (425.00, TO_DATE('2024-02-22', 'YYYY-MM-DD'), 'Efectivo', 49);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (230.00, TO_DATE('2024-02-23', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 50);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (375.50, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 'Transferencia Bancaria', 51);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 'PayPal', 52);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (180.00, TO_DATE('2024-02-26', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 53);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-02-27', 'YYYY-MM-DD'), 'Efectivo', 54);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (325.00, TO_DATE('2024-02-28', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 55);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (415.50, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Transferencia Bancaria', 56);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'PayPal', 57);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (150.00, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 58);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-03-04', 'YYYY-MM-DD'), 'Efectivo', 59);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 60);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (520.00, TO_DATE('2024-03-06', 'YYYY-MM-DD'), 'Transferencia Bancaria', 61);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-03-07', 'YYYY-MM-DD'), 'PayPal', 62);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (180.00, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 63);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-03-09', 'YYYY-MM-DD'), 'Efectivo', 64);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (325.00, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 65);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (415.50, TO_DATE('2024-03-11', 'YYYY-MM-DD'), 'Transferencia Bancaria', 66);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 'PayPal', 67);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (150.00, TO_DATE('2024-03-13', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 68);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-03-14', 'YYYY-MM-DD'), 'Efectivo', 69);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 70);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (450.00, TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'Transferencia Bancaria', 71);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 'PayPal', 72);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (230.00, TO_DATE('2024-03-18', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 73);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (390.00, TO_DATE('2024-03-19', 'YYYY-MM-DD'), 'Efectivo', 74);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (285.00, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 75);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (395.50, TO_DATE('2024-03-21', 'YYYY-MM-DD'), 'Transferencia Bancaria', 76);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-03-22', 'YYYY-MM-DD'), 'PayPal', 77);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (170.00, TO_DATE('2024-03-23', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 78);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (270.00, TO_DATE('2024-03-24', 'YYYY-MM-DD'), 'Efectivo', 79);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 80);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (360.00, TO_DATE('2024-03-26', 'YYYY-MM-DD'), 'Transferencia Bancaria', 81);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (280.00, TO_DATE('2024-03-27', 'YYYY-MM-DD'), 'PayPal', 82);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-03-28', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 83);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (410.00, TO_DATE('2024-03-29', 'YYYY-MM-DD'), 'Efectivo', 84);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (320.00, TO_DATE('2024-03-30', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 85);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (380.00, TO_DATE('2024-03-31', 'YYYY-MM-DD'), 'Transferencia Bancaria', 86);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (260.00, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'PayPal', 87);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (190.00, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 88);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (330.00, TO_DATE('2024-04-03', 'YYYY-MM-DD'), 'Efectivo', 89);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-04-04', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 90);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (410.00, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 'Transferencia Bancaria', 91);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.50, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 'PayPal', 92);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (200.00, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 93);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (420.00, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'Efectivo', 94);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (295.00, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 95);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (465.00, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 'Transferencia Bancaria', 96);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (315.00, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 'PayPal', 97);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (240.00, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 98);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (355.00, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 'Efectivo', 99);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (280.00, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 100);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (390.00, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Transferencia Bancaria', 101);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (285.00, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 'PayPal', 102);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (210.00, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 103);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (375.00, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 'Efectivo', 104);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 105);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (425.00, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 'Transferencia Bancaria', 106);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 'PayPal', 107);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (185.00, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 108);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (320.00, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 'Efectivo', 109);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (280.00, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 110);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 'Transferencia Bancaria', 111);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (270.00, TO_DATE('2024-04-26', 'YYYY-MM-DD'), 'PayPal', 112);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (230.00, TO_DATE('2024-04-27', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 113);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (365.00, TO_DATE('2024-04-28', 'YYYY-MM-DD'), 'Efectivo', 114);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-04-29', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 115);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (490.00, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Transferencia Bancaria', 116);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (350.00, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'PayPal', 117);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (220.00, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 118);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (350.00, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'Efectivo', 119);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 120);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (320.00, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 121);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 'Transferencia Bancaria', 122);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (295.50, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'PayPal', 123);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (210.00, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 124);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (380.00, TO_DATE('2024-05-09', 'YYYY-MM-DD'), 'Efectivo', 125);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (340.00, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 126);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (420.00, TO_DATE('2024-05-11', 'YYYY-MM-DD'), 'Transferencia Bancaria', 127);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'PayPal', 128);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (190.00, TO_DATE('2024-05-13', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 129);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (360.00, TO_DATE('2024-05-14', 'YYYY-MM-DD'), 'Efectivo', 130);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 131);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (450.00, TO_DATE('2024-05-16', 'YYYY-MM-DD'), 'Transferencia Bancaria', 132);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-05-17', 'YYYY-MM-DD'), 'PayPal', 133);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (200.00, TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 134);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-05-19', 'YYYY-MM-DD'), 'Efectivo', 135);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (335.00, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 136);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (470.00, TO_DATE('2024-05-21', 'YYYY-MM-DD'), 'Transferencia Bancaria', 137);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-05-22', 'YYYY-MM-DD'), 'PayPal', 138);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (230.00, TO_DATE('2024-05-23', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 139);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (385.00, TO_DATE('2024-05-24', 'YYYY-MM-DD'), 'Efectivo', 140);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 141);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (490.00, TO_DATE('2024-05-26', 'YYYY-MM-DD'), 'Transferencia Bancaria', 142);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (330.00, TO_DATE('2024-05-27', 'YYYY-MM-DD'), 'PayPal', 143);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (240.00, TO_DATE('2024-05-28', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 144);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (370.00, TO_DATE('2024-05-29', 'YYYY-MM-DD'), 'Efectivo', 145);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (280.00, TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 146);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (440.00, TO_DATE('2024-05-31', 'YYYY-MM-DD'), 'Transferencia Bancaria', 147);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (315.00, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'PayPal', 148);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (220.00, TO_DATE('2024-06-02', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 149);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (345.00, TO_DATE('2024-06-03', 'YYYY-MM-DD'), 'Efectivo', 150);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-06-04', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 151);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (460.00, TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'Transferencia Bancaria', 152);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.00, TO_DATE('2024-06-06', 'YYYY-MM-DD'), 'PayPal', 153);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (210.00, TO_DATE('2024-06-07', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 154);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (390.00, TO_DATE('2024-06-08', 'YYYY-MM-DD'), 'Efectivo', 155);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (320.00, TO_DATE('2024-06-09', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 156);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (450.00, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'Transferencia Bancaria', 157);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-06-11', 'YYYY-MM-DD'), 'PayPal', 158);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (190.00, TO_DATE('2024-06-12', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 159);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (360.00, TO_DATE('2024-06-13', 'YYYY-MM-DD'), 'Efectivo', 160);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (380.00, TO_DATE('2024-06-14', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 161);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (420.00, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'Transferencia Bancaria', 162);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-06-16', 'YYYY-MM-DD'), 'PayPal', 163);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (220.00, TO_DATE('2024-06-17', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 164);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-06-18', 'YYYY-MM-DD'), 'Efectivo', 165);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (320.00, TO_DATE('2024-06-19', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 166);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (470.00, TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Transferencia Bancaria', 167);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (275.50, TO_DATE('2024-06-21', 'YYYY-MM-DD'), 'PayPal', 168);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (200.00, TO_DATE('2024-06-22', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 169);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (355.00, TO_DATE('2024-06-23', 'YYYY-MM-DD'), 'Efectivo', 170);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (285.00, TO_DATE('2024-06-24', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 171);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (410.00, TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'Transferencia Bancaria', 172);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (340.00, TO_DATE('2024-06-26', 'YYYY-MM-DD'), 'PayPal', 173);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (220.00, TO_DATE('2024-06-27', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 174);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (390.00, TO_DATE('2024-06-28', 'YYYY-MM-DD'), 'Efectivo', 175);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-06-29', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 176);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (460.00, TO_DATE('2024-06-30', 'YYYY-MM-DD'), 'Transferencia Bancaria', 177);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (290.00, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'PayPal', 178);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (210.00, TO_DATE('2024-07-02', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 179);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (365.00, TO_DATE('2024-07-03', 'YYYY-MM-DD'), 'Efectivo', 180);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (300.00, TO_DATE('2024-07-04', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 181);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (490.00, TO_DATE('2024-07-05', 'YYYY-MM-DD'), 'Transferencia Bancaria', 182);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (330.00, TO_DATE('2024-07-06', 'YYYY-MM-DD'), 'PayPal', 183);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (230.00, TO_DATE('2024-07-07', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 184);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (385.00, TO_DATE('2024-07-08', 'YYYY-MM-DD'), 'Efectivo', 185);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (250.00, TO_DATE('2024-07-09', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 186);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (420.00, TO_DATE('2024-07-10', 'YYYY-MM-DD'), 'Transferencia Bancaria', 187);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (315.00, TO_DATE('2024-07-11', 'YYYY-MM-DD'), 'PayPal', 188);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (180.00, TO_DATE('2024-07-12', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 189);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (340.00, TO_DATE('2024-07-13', 'YYYY-MM-DD'), 'Efectivo', 190);

INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (280.00, TO_DATE('2024-07-14', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 191);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (470.00, TO_DATE('2024-07-15', 'YYYY-MM-DD'), 'Transferencia Bancaria', 192);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (260.00, TO_DATE('2024-07-16', 'YYYY-MM-DD'), 'PayPal', 193);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (200.00, TO_DATE('2024-07-17', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 194);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (400.00, TO_DATE('2024-07-18', 'YYYY-MM-DD'), 'Efectivo', 195);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (310.00, TO_DATE('2024-07-19', 'YYYY-MM-DD'), 'Tarjeta de Cr�dito', 196);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (490.00, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 'Transferencia Bancaria', 197);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (280.00, TO_DATE('2024-07-21', 'YYYY-MM-DD'), 'PayPal', 198);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (220.00, TO_DATE('2024-07-22', 'YYYY-MM-DD'), 'Tarjeta de D�bito', 199);
INSERT INTO TBL_Pagos (Monto, Fecha_Pago, Metodo_Pago, ID_Reserva) VALUES (370.00, TO_DATE('2024-07-23', 'YYYY-MM-DD'), 'Efectivo', 200);

-- Operaciones CRUD para la tabla Pagos
SELECT * FROM TBL_Pagos
WHERE Metodo_Pago = 'Tarjeta de Cr�dito';

UPDATE TBL_Pagos
SET Monto = 350.00
WHERE ID_Reserva = 3;

UPDATE TBL_Pagos
SET Metodo_Pago = 'Tarjeta de Cr�dito'
WHERE ID_Reserva = 6;

DELETE FROM TBL_Pagos
WHERE Fecha_Pago < '2024-01-09';


-- Inserts de la tabla: Reservas_Tours
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (1, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (2, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (3, 12);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (4, 15);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (5, 19);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (6, 22);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (7, 25);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (8, 28);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (9, 32);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (10, 35);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (11, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (12, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (13, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (14, 13);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (15, 16);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (16, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (17, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (18, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (19, 29);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (20, 33);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (21, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (22, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (23, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (24, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (25, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (26, 21);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (27, 24);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (28, 27);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (29, 30);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (30, 34);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (31, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (32, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (33, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (34, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (35, 18);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (36, 22);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (37, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (38, 30);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (39, 35);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (40, 5);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (41, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (42, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (43, 16);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (44, 19);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (45, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (46, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (47, 31);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (48, 34);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (49, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (50, 6);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (51, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (52, 12);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (53, 15);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (54, 18);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (55, 21);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (56, 24);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (57, 27);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (58, 30);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (59, 33);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (60, 36);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (61, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (62, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (63, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (64, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (65, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (66, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (67, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (68, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (69, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (70, 29);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (71, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (72, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (73, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (74, 13);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (75, 16);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (76, 19);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (77, 22);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (78, 25);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (79, 28);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (80, 31);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (81, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (82, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (83, 12);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (84, 15);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (85, 18);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (86, 21);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (87, 24);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (88, 27);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (89, 30);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (90, 33);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (91, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (92, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (93, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (94, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (95, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (96, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (97, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (98, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (99, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (100, 29);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (101, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (102, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (103, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (104, 12);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (105, 15);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (106, 18);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (107, 21);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (108, 24);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (109, 27);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (110, 30);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (111, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (112, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (113, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (114, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (115, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (116, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (117, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (118, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (119, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (120, 29);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (121, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (122, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (123, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (124, 13);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (125, 16);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (126, 19);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (127, 22);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (128, 25);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (129, 28);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (130, 31);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (131, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (132, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (133, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (134, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (135, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (136, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (137, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (138, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (139, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (140, 29);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (141, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (142, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (143, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (144, 12);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (145, 15);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (146, 18);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (147, 21);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (148, 24);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (149, 27);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (150, 30);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (151, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (152, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (153, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (154, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (155, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (156, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (157, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (158, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (159, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (160, 29);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (161, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (162, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (163, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (164, 13);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (165, 16);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (166, 19);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (167, 22);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (168, 25);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (169, 28);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (170, 31);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (171, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (172, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (173, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (174, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (175, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (176, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (177, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (178, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (179, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (180, 29);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (181, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (182, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (183, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (184, 12);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (185, 15);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (186, 18);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (187, 21);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (188, 24);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (189, 27);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (190, 30);

INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (191, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (192, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (193, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (194, 11);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (195, 14);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (196, 17);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (197, 20);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (198, 23);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (199, 26);
INSERT INTO TBL_Reservas_Tours (ID_Reserva, ID_Tour) VALUES (200, 29);

--------------------------------------------------------------------------------------------------------------------------------------
//////// Creaci�n de Triggers y Secuencias ////////
--------------------------------------------------------------------------------------------------------------------------------------

--Triggers para hacer del ID Autoincremental (empleados)
--seq_empleado_id declarado para el trigger
CREATE SEQUENCE seq_empleado_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_empleados
BEFORE INSERT ON TBL_Empleados
FOR EACH ROW
BEGIN
    :NEW.ID_Empleado := seq_empleado_id.NEXTVAL;
END;
/

--Triggers para hacer del ID Autoincremental (hotel)
--seq_hotel_id declarado para el trigger
CREATE SEQUENCE seq_hotel_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_hotel
BEFORE INSERT ON TBL_Hoteles
FOR EACH ROW
BEGIN
    :NEW.ID_Hotel := seq_hotel_id.NEXTVAL;
END;
/

--Triggers para hacer del ID Autoincremental (vuelos)
--seq_hotel_id declarado para el trigger
CREATE SEQUENCE seq_vuelos_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_vuelos
BEFORE INSERT ON TBL_Vuelos
FOR EACH ROW
BEGIN
    :NEW.ID_Vuelo := seq_vuelos_id.NEXTVAL;
END;
/

--Triggers para hacer del ID Autoincremental (tours)
--seq_hotel_id declarado para el trigger
CREATE SEQUENCE seq_tours_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_tours
BEFORE INSERT ON TBL_Tours
FOR EACH ROW
BEGIN
    :NEW.ID_Tour := seq_tours_id.NEXTVAL;
END;
/

--Triggers para hacer del ID Autoincremental (Reservas)
--seq_reservas_id declarado para el trigger
CREATE SEQUENCE seq_reservas_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_reservas
BEFORE INSERT ON TBL_Reservas
FOR EACH ROW
BEGIN
    :NEW.ID_RESERVA := seq_reservas_id.NEXTVAL;
END;
/

--Triggers para hacer del ID Autoincremental (pagos)
--seq_pagos_id declarado para el trigger
CREATE SEQUENCE seq_pagos_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_pagos
BEFORE INSERT ON TBL_Pagos
FOR EACH ROW
BEGIN
    :NEW.ID_Pago := seq_pagos_id.NEXTVAL;
END;
/

--Triggers para hacer del ID Autoincremental (Reserva Tours)
--seq_reservaTour_id declarado para el trigger
CREATE SEQUENCE seq_reservaTour_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE OR REPLACE TRIGGER trg_auto_increment_reservaTour
BEFORE INSERT ON TBL_Reservas_Tours
FOR EACH ROW
BEGIN
    :NEW.ID_Reserva_Tour := seq_reservaTour_id.NEXTVAL;
END;
/