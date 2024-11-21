CREATE USER Admin_Agent IDENTIFIED BY agent1234;

GRANT CONNECT, RESOURCE, DBA TO Admin_Agent;

GRANT CREATE SESSION TO Admin_Agent;

GRANT CREATE TABLE TO Admin_Agent;

GRANT CREATE ANY TABLE TO Admin_Agent;

GRANT SELECT ANY TABLE TO Admin_Agent;

GRANT INSERT ANY TABLE TO Admin_Agent;

GRANT UPDATE ANY TABLE TO Admin_Agent;

GRANT DELETE ANY TABLE TO Admin_Agent;

GRANT DROP ANY TABLE TO Admin_Agent;

GRANT ALTER ANY TABLE TO Admin_Agent;

GRANT EXECUTE ANY PROCEDURE TO Admin_Agent;

GRANT CREATE ANY PROCEDURE TO Admin_Agent;

GRANT DROP ANY PROCEDURE TO Admin_Agent;

GRANT ALTER ANY PROCEDURE TO Admin_Agent;

ALTER USER Admin_Agent DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

CREATE TABLE TBL_Clientes 
(
	ID_Cliente INT PRIMARY KEY,
	Nombre VARCHAR2(50) NOT NULL,
	Apellido VARCHAR2(50) NOT NULL,
	Email VARCHAR2(100) NOT NULL,
	Telefono VARCHAR2(20) NOT NULL,
	Direccion VARCHAR2(100) NOT NULL
);

CREATE TABLE TBL_Reservas 
(
	ID_Reserva INT PRIMARY KEY
);

CREATE TABLE TBL_Vuelos 
(
	ID_Vuelo INT PRIMARY KEY,
	Aerolinea VARCHAR2(50) NOT NULL,
	Origen VARCHAR2(50) NOT NULL,
	Destino VARCHAR2(50) NOT NULL,
	Fecha_Salida DATE,
	Fecha_Llegada DATE,
	Precio NUMBER
);

CREATE TABLE TBL_Hoteles 
(
	ID_Hotel INT PRIMARY KEY,
	Nombre VARCHAR2(50) NOT NULL,
	Ubicacion VARCHAR2(50) NOT NULL,
	Categoria VARCHAR2(20) NOT NULL,
	Precio_Noche NUMBER
);

CREATE TABLE TBL_Pagos 
(
	ID_Pago INT PRIMARY KEY,
	Monto NUMBER,
	Fecha_Pago DATE,
	Metodo_Pago VARCHAR2(20) NOT NULL
);

CREATE TABLE TBL_Tours
(
	ID_Tour INT PRIMARY KEY,
	Nombre VARCHAR2(50) NOT NULL,
	Descripcion VARCHAR2(100) NOT NULL,
	Duracion VARCHAR2(20) NOT NULL,
	Precio NUMBER
);

CREATE TABLE TBL_Reservas_Tours 
(
	ID_Reserva_Tour PRIMARY KEY
);

CREATE TABLE TBL_Empleados
(
	ID_Empleado INT PRIMARY KEY,
	Nombre VARCHAR2(50) NOT NULL,
	Apellido VARCHAR2(50) NOT NULL,
	Cargo VARCHAR2(20) NOT NULL,
	Telefono VARCHAR2(20) NOT NULL,
	Email VARCHAR2(100) NOT NULL
);

ALTER TABLE TBL_Reservas
	ADD CONSTRAINT ID_Cliente_FK
		FOREIGN KEY (ID_Cliente)
		REFERENCES TBL_Clientes (ID_Cliente),
	ADD CONSTRAINT ID_Vuelo_FK
		FOREIGN KEY (ID_Vuelo)
		REFERENCES TBL_Vuelos (ID_Vuelo),
	ADD CONSTRAINT ID_Hotel_FK
		FOREIGN KEY (ID_Hotel)
		REFERENCES TBL_Hoteles (ID_Hotel);
		
ALTER TABLE TBL_Pagos
	ADD CONSTRAINT ID_Reserva_FK
		FOREIGN KEY (ID_Reserva)
		REFERENCES TBL_Reservas (ID_Reserva);
		
ALTER TABLE TBL_Reservas_Tours
	ADD CONSTRAINT ID_Reserva_FK
		FOREIGN KEY (ID_Reserva)
		REFERENCES TBL_Reservas (ID_Reserva),
	ADD CONSTRAINT ID_Tour_FK
		FOREIGN KEY (ID_Tour)
		REFERENCES TBL_Tours (ID_Tour);

INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(1, 'Nombre1', 'Apellido1', 'cliente1@example.com', '123-456-7801', 'Direccion 1');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(2, 'Nombre2', 'Apellido2', 'cliente2@example.com', '123-456-7802', 'Direccion 2');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(3, 'Nombre3', 'Apellido3', 'cliente3@example.com', '123-456-7803', 'Direccion 3');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(4, 'Nombre4', 'Apellido4', 'cliente4@example.com', '123-456-7804', 'Direccion 4');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(5, 'Nombre5', 'Apellido5', 'cliente5@example.com', '123-456-7805', 'Direccion 5');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(6, 'Nombre6', 'Apellido6', 'cliente6@example.com', '123-456-7806', 'Direccion 6');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(7, 'Nombre7', 'Apellido7', 'cliente7@example.com', '123-456-7807', 'Direccion 7');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(8, 'Nombre8', 'Apellido8', 'cliente8@example.com', '123-456-7808', 'Direccion 8');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(9, 'Nombre9', 'Apellido9', 'cliente9@example.com', '123-456-7809', 'Direccion 9');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(10, 'Nombre10', 'Apellido10', 'cliente10@example.com', '123-456-7810', 'Direccion 10');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(11, 'Nombre11', 'Apellido11', 'cliente11@example.com', '123-456-7811', 'Direccion 11');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(12, 'Nombre12', 'Apellido12', 'cliente12@example.com', '123-456-7812', 'Direccion 12');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(13, 'Nombre13', 'Apellido13', 'cliente13@example.com', '123-456-7813', 'Direccion 13');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(14, 'Nombre14', 'Apellido14', 'cliente14@example.com', '123-456-7814', 'Direccion 14');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(15, 'Nombre15', 'Apellido15', 'cliente15@example.com', '123-456-7815', 'Direccion 15');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(16, 'Nombre16', 'Apellido16', 'cliente16@example.com', '123-456-7816', 'Direccion 16');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(17, 'Nombre17', 'Apellido17', 'cliente17@example.com', '123-456-7817', 'Direccion 17');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(18, 'Nombre18', 'Apellido18', 'cliente18@example.com', '123-456-7818', 'Direccion 18');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(19, 'Nombre19', 'Apellido19', 'cliente19@example.com', '123-456-7819', 'Direccion 19');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(20, 'Nombre20', 'Apellido20', 'cliente20@example.com', '123-456-7820', 'Direccion 20');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(21, 'Nombre21', 'Apellido21', 'cliente21@example.com', '123-456-7821', 'Direccion 21');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(22, 'Nombre22', 'Apellido22', 'cliente22@example.com', '123-456-7822', 'Direccion 22');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(23, 'Nombre23', 'Apellido23', 'cliente23@example.com', '123-456-7823', 'Direccion 23');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(24, 'Nombre24', 'Apellido24', 'cliente24@example.com', '123-456-7824', 'Direccion 24');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(25, 'Nombre25', 'Apellido25', 'cliente25@example.com', '123-456-7825', 'Direccion 25');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(26, 'Nombre26', 'Apellido26', 'cliente26@example.com', '123-456-7826', 'Direccion 26');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(27, 'Nombre27', 'Apellido27', 'cliente27@example.com', '123-456-7827', 'Direccion 27');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(28, 'Nombre28', 'Apellido28', 'cliente28@example.com', '123-456-7828', 'Direccion 28');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(29, 'Nombre29', 'Apellido29', 'cliente29@example.com', '123-456-7829', 'Direccion 29');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(30, 'Nombre30', 'Apellido30', 'cliente30@example.com', '123-456-7830', 'Direccion 30');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(31, 'Nombre31', 'Apellido31', 'cliente31@example.com', '123-456-7831', 'Direccion 31');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(32, 'Nombre32', 'Apellido32', 'cliente32@example.com', '123-456-7832', 'Direccion 32');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(33, 'Nombre33', 'Apellido33', 'cliente33@example.com', '123-456-7833', 'Direccion 33');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(34, 'Nombre34', 'Apellido34', 'cliente34@example.com', '123-456-7834', 'Direccion 34');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(35, 'Nombre35', 'Apellido35', 'cliente35@example.com', '123-456-7835', 'Direccion 35');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(36, 'Nombre36', 'Apellido36', 'cliente36@example.com', '123-456-7836', 'Direccion 36');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(37, 'Nombre37', 'Apellido37', 'cliente37@example.com', '123-456-7837', 'Direccion 37');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(38, 'Nombre38', 'Apellido38', 'cliente38@example.com', '123-456-7838', 'Direccion 38');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(39, 'Nombre39', 'Apellido39', 'cliente39@example.com', '123-456-7839', 'Direccion 39');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(40, 'Nombre40', 'Apellido40', 'cliente40@example.com', '123-456-7840', 'Direccion 40');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(41, 'Nombre41', 'Apellido41', 'cliente41@example.com', '123-456-7841', 'Direccion 41');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(42, 'Nombre42', 'Apellido42', 'cliente42@example.com', '123-456-7842', 'Direccion 42');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(43, 'Nombre43', 'Apellido43', 'cliente43@example.com', '123-456-7843', 'Direccion 43');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(44, 'Nombre44', 'Apellido44', 'cliente44@example.com', '123-456-7844', 'Direccion 44');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(45, 'Nombre45', 'Apellido45', 'cliente45@example.com', '123-456-7845', 'Direccion 45');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(46, 'Nombre46', 'Apellido46', 'cliente46@example.com', '123-456-7846', 'Direccion 46');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(47, 'Nombre47', 'Apellido47', 'cliente47@example.com', '123-456-7847', 'Direccion 47');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(48, 'Nombre48', 'Apellido48', 'cliente48@example.com', '123-456-7848', 'Direccion 48');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(49, 'Nombre49', 'Apellido49', 'cliente49@example.com', '123-456-7849', 'Direccion 49');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(50, 'Nombre50', 'Apellido50', 'cliente50@example.com', '123-456-7850', 'Direccion 50');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(51, 'Nombre51', 'Apellido51', 'cliente51@example.com', '123-456-7851', 'Direccion 51');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(52, 'Nombre52', 'Apellido52', 'cliente52@example.com', '123-456-7852', 'Direccion 52');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(53, 'Nombre53', 'Apellido53', 'cliente53@example.com', '123-456-7853', 'Direccion 53');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(54, 'Nombre54', 'Apellido54', 'cliente54@example.com', '123-456-7854', 'Direccion 54');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(55, 'Nombre55', 'Apellido55', 'cliente55@example.com', '123-456-7855', 'Direccion 55');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(56, 'Nombre56', 'Apellido56', 'cliente56@example.com', '123-456-7856', 'Direccion 56');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(57, 'Nombre57', 'Apellido57', 'cliente57@example.com', '123-456-7857', 'Direccion 57');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(58, 'Nombre58', 'Apellido58', 'cliente58@example.com', '123-456-7858', 'Direccion 58');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(59, 'Nombre59', 'Apellido59', 'cliente59@example.com', '123-456-7859', 'Direccion 59');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(60, 'Nombre60', 'Apellido60', 'cliente60@example.com', '123-456-7860', 'Direccion 60');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(61, 'Nombre61', 'Apellido61', 'cliente61@example.com', '123-456-7861', 'Direccion 61');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(62, 'Nombre62', 'Apellido62', 'cliente62@example.com', '123-456-7862', 'Direccion 62');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(63, 'Nombre63', 'Apellido63', 'cliente63@example.com', '123-456-7863', 'Direccion 63');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(64, 'Nombre64', 'Apellido64', 'cliente64@example.com', '123-456-7864', 'Direccion 64');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(65, 'Nombre65', 'Apellido65', 'cliente65@example.com', '123-456-7865', 'Direccion 65');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(66, 'Nombre66', 'Apellido66', 'cliente66@example.com', '123-456-7866', 'Direccion 66');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(67, 'Nombre67', 'Apellido67', 'cliente67@example.com', '123-456-7867', 'Direccion 67');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(68, 'Nombre68', 'Apellido68', 'cliente68@example.com', '123-456-7868', 'Direccion 68');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(69, 'Nombre69', 'Apellido69', 'cliente69@example.com', '123-456-7869', 'Direccion 69');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(70, 'Nombre70', 'Apellido70', 'cliente70@example.com', '123-456-7870', 'Direccion 70');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(71, 'Nombre71', 'Apellido71', 'cliente71@example.com', '123-456-7871', 'Direccion 71');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(72, 'Nombre72', 'Apellido72', 'cliente72@example.com', '123-456-7872', 'Direccion 72');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(73, 'Nombre73', 'Apellido73', 'cliente73@example.com', '123-456-7873', 'Direccion 73');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(74, 'Nombre74', 'Apellido74', 'cliente74@example.com', '123-456-7874', 'Direccion 74');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(75, 'Nombre75', 'Apellido75', 'cliente75@example.com', '123-456-7875', 'Direccion 75');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(76, 'Nombre76', 'Apellido76', 'cliente76@example.com', '123-456-7876', 'Direccion 76');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(77, 'Nombre77', 'Apellido77', 'cliente77@example.com', '123-456-7877', 'Direccion 77');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(78, 'Nombre78', 'Apellido78', 'cliente78@example.com', '123-456-7878', 'Direccion 78');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(79, 'Nombre79', 'Apellido79', 'cliente79@example.com', '123-456-7879', 'Direccion 79');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(80, 'Nombre80', 'Apellido80', 'cliente80@example.com', '123-456-7880', 'Direccion 80');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(81, 'Nombre81', 'Apellido81', 'cliente81@example.com', '123-456-7881', 'Direccion 81');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(82, 'Nombre82', 'Apellido82', 'cliente82@example.com', '123-456-7882', 'Direccion 82');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(83, 'Nombre83', 'Apellido83', 'cliente83@example.com', '123-456-7883', 'Direccion 83');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(84, 'Nombre84', 'Apellido84', 'cliente84@example.com', '123-456-7884', 'Direccion 84');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(85, 'Nombre85', 'Apellido85', 'cliente85@example.com', '123-456-7885', 'Direccion 85');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(86, 'Nombre86', 'Apellido86', 'cliente86@example.com', '123-456-7886', 'Direccion 86');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(87, 'Nombre87', 'Apellido87', 'cliente87@example.com', '123-456-7887', 'Direccion 87');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(88, 'Nombre88', 'Apellido88', 'cliente88@example.com', '123-456-7888', 'Direccion 88');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(89, 'Nombre89', 'Apellido89', 'cliente89@example.com', '123-456-7889', 'Direccion 89');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(90, 'Nombre90', 'Apellido90', 'cliente90@example.com', '123-456-7890', 'Direccion 90');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(91, 'Nombre91', 'Apellido91', 'cliente91@example.com', '123-456-7891', 'Direccion 91');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(92, 'Nombre92', 'Apellido92', 'cliente92@example.com', '123-456-7892', 'Direccion 92');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(93, 'Nombre93', 'Apellido93', 'cliente93@example.com', '123-456-7893', 'Direccion 93');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(94, 'Nombre94', 'Apellido94', 'cliente94@example.com', '123-456-7894', 'Direccion 94');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(95, 'Nombre95', 'Apellido95', 'cliente95@example.com', '123-456-7895', 'Direccion 95');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(96, 'Nombre96', 'Apellido96', 'cliente96@example.com', '123-456-7896', 'Direccion 96');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(97, 'Nombre97', 'Apellido97', 'cliente97@example.com', '123-456-7897', 'Direccion 97');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(98, 'Nombre98', 'Apellido98', 'cliente98@example.com', '123-456-7898', 'Direccion 98');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(99, 'Nombre99', 'Apellido99', 'cliente99@example.com', '123-456-7899', 'Direccion 99');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(100, 'Nombre100', 'Apellido100', 'cliente100@example.com', '123-456-7900', 'Direccion 100');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(101, 'Nombre101', 'Apellido101', 'cliente101@example.com', '123-456-7901', 'Direccion 101');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(102, 'Nombre102', 'Apellido102', 'cliente102@example.com', '123-456-7902', 'Direccion 102');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(103, 'Nombre103', 'Apellido103', 'cliente103@example.com', '123-456-7903', 'Direccion 103');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(104, 'Nombre104', 'Apellido104', 'cliente104@example.com', '123-456-7904', 'Direccion 104');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(105, 'Nombre105', 'Apellido105', 'cliente105@example.com', '123-456-7905', 'Direccion 105');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(106, 'Nombre106', 'Apellido106', 'cliente106@example.com', '123-456-7906', 'Direccion 106');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(107, 'Nombre107', 'Apellido107', 'cliente107@example.com', '123-456-7907', 'Direccion 107');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(108, 'Nombre108', 'Apellido108', 'cliente108@example.com', '123-456-7908', 'Direccion 108');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(109, 'Nombre109', 'Apellido109', 'cliente109@example.com', '123-456-7909', 'Direccion 109');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(110, 'Nombre110', 'Apellido110', 'cliente110@example.com', '123-456-7910', 'Direccion 110');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(111, 'Nombre111', 'Apellido111', 'cliente111@example.com', '123-456-7911', 'Direccion 111');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(112, 'Nombre112', 'Apellido112', 'cliente112@example.com', '123-456-7912', 'Direccion 112');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(113, 'Nombre113', 'Apellido113', 'cliente113@example.com', '123-456-7913', 'Direccion 113');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(114, 'Nombre114', 'Apellido114', 'cliente114@example.com', '123-456-7914', 'Direccion 114');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(115, 'Nombre115', 'Apellido115', 'cliente115@example.com', '123-456-7915', 'Direccion 115');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(116, 'Nombre116', 'Apellido116', 'cliente116@example.com', '123-456-7916', 'Direccion 116');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(117, 'Nombre117', 'Apellido117', 'cliente117@example.com', '123-456-7917', 'Direccion 117');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(118, 'Nombre118', 'Apellido118', 'cliente118@example.com', '123-456-7918', 'Direccion 118');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(119, 'Nombre119', 'Apellido119', 'cliente119@example.com', '123-456-7919', 'Direccion 119');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(120, 'Nombre120', 'Apellido120', 'cliente120@example.com', '123-456-7920', 'Direccion 120');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(121, 'Nombre121', 'Apellido121', 'cliente121@example.com', '123-456-7921', 'Direccion 121');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(122, 'Nombre122', 'Apellido122', 'cliente122@example.com', '123-456-7922', 'Direccion 122');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(123, 'Nombre123', 'Apellido123', 'cliente123@example.com', '123-456-7923', 'Direccion 123');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(124, 'Nombre124', 'Apellido124', 'cliente124@example.com', '123-456-7924', 'Direccion 124');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(125, 'Nombre125', 'Apellido125', 'cliente125@example.com', '123-456-7925', 'Direccion 125');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(126, 'Nombre126', 'Apellido126', 'cliente126@example.com', '123-456-7926', 'Direccion 126');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(127, 'Nombre127', 'Apellido127', 'cliente127@example.com', '123-456-7927', 'Direccion 127');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(128, 'Nombre128', 'Apellido128', 'cliente128@example.com', '123-456-7928', 'Direccion 128');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(129, 'Nombre129', 'Apellido129', 'cliente129@example.com', '123-456-7929', 'Direccion 129');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(130, 'Nombre130', 'Apellido130', 'cliente130@example.com', '123-456-7930', 'Direccion 130');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(131, 'Nombre131', 'Apellido131', 'cliente131@example.com', '123-456-7931', 'Direccion 131');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(132, 'Nombre132', 'Apellido132', 'cliente132@example.com', '123-456-7932', 'Direccion 132');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(133, 'Nombre133', 'Apellido133', 'cliente133@example.com', '123-456-7933', 'Direccion 133');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(134, 'Nombre134', 'Apellido134', 'cliente134@example.com', '123-456-7934', 'Direccion 134');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(135, 'Nombre135', 'Apellido135', 'cliente135@example.com', '123-456-7935', 'Direccion 135');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(136, 'Nombre136', 'Apellido136', 'cliente136@example.com', '123-456-7936', 'Direccion 136');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(137, 'Nombre137', 'Apellido137', 'cliente137@example.com', '123-456-7937', 'Direccion 137');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(138, 'Nombre138', 'Apellido138', 'cliente138@example.com', '123-456-7938', 'Direccion 138');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(139, 'Nombre139', 'Apellido139', 'cliente139@example.com', '123-456-7939', 'Direccion 139');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(140, 'Nombre140', 'Apellido140', 'cliente140@example.com', '123-456-7940', 'Direccion 140');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(141, 'Nombre141', 'Apellido141', 'cliente141@example.com', '123-456-7941', 'Direccion 141');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(142, 'Nombre142', 'Apellido142', 'cliente142@example.com', '123-456-7942', 'Direccion 142');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(143, 'Nombre143', 'Apellido143', 'cliente143@example.com', '123-456-7943', 'Direccion 143');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(144, 'Nombre144', 'Apellido144', 'cliente144@example.com', '123-456-7944', 'Direccion 144');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(145, 'Nombre145', 'Apellido145', 'cliente145@example.com', '123-456-7945', 'Direccion 145');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(146, 'Nombre146', 'Apellido146', 'cliente146@example.com', '123-456-7946', 'Direccion 146');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(147, 'Nombre147', 'Apellido147', 'cliente147@example.com', '123-456-7947', 'Direccion 147');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(148, 'Nombre148', 'Apellido148', 'cliente148@example.com', '123-456-7948', 'Direccion 148');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(149, 'Nombre149', 'Apellido149', 'cliente149@example.com', '123-456-7949', 'Direccion 149');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(150, 'Nombre150', 'Apellido150', 'cliente150@example.com', '123-456-7950', 'Direccion 150');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(151, 'Nombre151', 'Apellido151', 'cliente151@example.com', '123-456-7951', 'Direccion 151');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(152, 'Nombre152', 'Apellido152', 'cliente152@example.com', '123-456-7952', 'Direccion 152');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(153, 'Nombre153', 'Apellido153', 'cliente153@example.com', '123-456-7953', 'Direccion 153');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(154, 'Nombre154', 'Apellido154', 'cliente154@example.com', '123-456-7954', 'Direccion 154');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(155, 'Nombre155', 'Apellido155', 'cliente155@example.com', '123-456-7955', 'Direccion 155');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(156, 'Nombre156', 'Apellido156', 'cliente156@example.com', '123-456-7956', 'Direccion 156');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(157, 'Nombre157', 'Apellido157', 'cliente157@example.com', '123-456-7957', 'Direccion 157');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(158, 'Nombre158', 'Apellido158', 'cliente158@example.com', '123-456-7958', 'Direccion 158');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(159, 'Nombre159', 'Apellido159', 'cliente159@example.com', '123-456-7959', 'Direccion 159');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(160, 'Nombre160', 'Apellido160', 'cliente160@example.com', '123-456-7960', 'Direccion 160');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(161, 'Nombre161', 'Apellido161', 'cliente161@example.com', '123-456-7961', 'Direccion 161');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(162, 'Nombre162', 'Apellido162', 'cliente162@example.com', '123-456-7962', 'Direccion 162');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(163, 'Nombre163', 'Apellido163', 'cliente163@example.com', '123-456-7963', 'Direccion 163');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(164, 'Nombre164', 'Apellido164', 'cliente164@example.com', '123-456-7964', 'Direccion 164');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(165, 'Nombre165', 'Apellido165', 'cliente165@example.com', '123-456-7965', 'Direccion 165');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(166, 'Nombre166', 'Apellido166', 'cliente166@example.com', '123-456-7966', 'Direccion 166');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(167, 'Nombre167', 'Apellido167', 'cliente167@example.com', '123-456-7967', 'Direccion 167');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(168, 'Nombre168', 'Apellido168', 'cliente168@example.com', '123-456-7968', 'Direccion 168');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(169, 'Nombre169', 'Apellido169', 'cliente169@example.com', '123-456-7969', 'Direccion 169');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(170, 'Nombre170', 'Apellido170', 'cliente170@example.com', '123-456-7970', 'Direccion 170');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(171, 'Nombre171', 'Apellido171', 'cliente171@example.com', '123-456-7971', 'Direccion 171');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(172, 'Nombre172', 'Apellido172', 'cliente172@example.com', '123-456-7972', 'Direccion 172');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(173, 'Nombre173', 'Apellido173', 'cliente173@example.com', '123-456-7973', 'Direccion 173');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(174, 'Nombre174', 'Apellido174', 'cliente174@example.com', '123-456-7974', 'Direccion 174');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(175, 'Nombre175', 'Apellido175', 'cliente175@example.com', '123-456-7975', 'Direccion 175');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(176, 'Nombre176', 'Apellido176', 'cliente176@example.com', '123-456-7976', 'Direccion 176');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(177, 'Nombre177', 'Apellido177', 'cliente177@example.com', '123-456-7977', 'Direccion 177');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(178, 'Nombre178', 'Apellido178', 'cliente178@example.com', '123-456-7978', 'Direccion 178');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(179, 'Nombre179', 'Apellido179', 'cliente179@example.com', '123-456-7979', 'Direccion 179');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(180, 'Nombre180', 'Apellido180', 'cliente180@example.com', '123-456-7980', 'Direccion 180');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(181, 'Nombre181', 'Apellido181', 'cliente181@example.com', '123-456-7981', 'Direccion 181');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(182, 'Nombre182', 'Apellido182', 'cliente182@example.com', '123-456-7982', 'Direccion 182');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(183, 'Nombre183', 'Apellido183', 'cliente183@example.com', '123-456-7983', 'Direccion 183');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(184, 'Nombre184', 'Apellido184', 'cliente184@example.com', '123-456-7984', 'Direccion 184');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(185, 'Nombre185', 'Apellido185', 'cliente185@example.com', '123-456-7985', 'Direccion 185');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(186, 'Nombre186', 'Apellido186', 'cliente186@example.com', '123-456-7986', 'Direccion 186');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(187, 'Nombre187', 'Apellido187', 'cliente187@example.com', '123-456-7987', 'Direccion 187');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(188, 'Nombre188', 'Apellido188', 'cliente188@example.com', '123-456-7988', 'Direccion 188');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(189, 'Nombre189', 'Apellido189', 'cliente189@example.com', '123-456-7989', 'Direccion 189');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(190, 'Nombre190', 'Apellido190', 'cliente190@example.com', '123-456-7990', 'Direccion 190');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(191, 'Nombre191', 'Apellido191', 'cliente191@example.com', '123-456-7991', 'Direccion 191');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(192, 'Nombre192', 'Apellido192', 'cliente192@example.com', '123-456-7992', 'Direccion 192');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(193, 'Nombre193', 'Apellido193', 'cliente193@example.com', '123-456-7993', 'Direccion 193');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(194, 'Nombre194', 'Apellido194', 'cliente194@example.com', '123-456-7994', 'Direccion 194');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(195, 'Nombre195', 'Apellido195', 'cliente195@example.com', '123-456-7995', 'Direccion 195');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(196, 'Nombre196', 'Apellido196', 'cliente196@example.com', '123-456-7996', 'Direccion 196');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(197, 'Nombre197', 'Apellido197', 'cliente197@example.com', '123-456-7997', 'Direccion 197');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(198, 'Nombre198', 'Apellido198', 'cliente198@example.com', '123-456-7998', 'Direccion 198');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(199, 'Nombre199', 'Apellido199', 'cliente199@example.com', '123-456-7999', 'Direccion 199');
INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
(200, 'Nombre200', 'Apellido200', 'cliente200@example.com', '123-456-8000', 'Direccion 200');

INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(1, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES (
2, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(3, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(4, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(5, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(6, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(7, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(8, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(9, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(10, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(1, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(2, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(3, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(4, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(5, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(6, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(7, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(8, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(9, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(10, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(11, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(12, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(13, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(14, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(15, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(16, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(17, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(18, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(19, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(20, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(21, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(22, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(23, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(24, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(25, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(26, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(27, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(28, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(29, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(30, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(31, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(32, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(33, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(34, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(35, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(36, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(37, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(38, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(39, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(40, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(41, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(42, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(43, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(44, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(45, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(46, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(47, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(48, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(49, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(50, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(51, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(52, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(53, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(54, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(55, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(56, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(57, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(58, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(59, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(60, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(61, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(62, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(63, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(64, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(65, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(66, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(67, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(68, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(69, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(70, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(71, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(72, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(73, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(74, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(75, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(76, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(77, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(78, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(79, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(80, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(81, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(82, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(83, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(84, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(85, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(86, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(87, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(88, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(89, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(90, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(91, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(92, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(93, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(94, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(95, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(96, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(97, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(98, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(99, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(100, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(101, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(102, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(103, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(104, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(105, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(106, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(107, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(108, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(109, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(110, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(111, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(112, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(113, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(114, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(115, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(116, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(117, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(118, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(119, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(120, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(121, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(122, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(123, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(124, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(125, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(126, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(127, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(128, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(129, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(130, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(131, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(132, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(133, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(134, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(135, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(136, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(137, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(138, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(139, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(140, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(141, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(142, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(143, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(144, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(145, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(146, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(147, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(148, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(149, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(150, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(151, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(152, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(153, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(154, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(155, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(156, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(157, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(158, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(159, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(160, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(161, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(162, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(163, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(164, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(165, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(166, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(167, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(168, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(169, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(170, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(171, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(172, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(173, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(174, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(175, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(176, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(177, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(178, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(179, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(180, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(181, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(182, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(183, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(184, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(185, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(186, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(187, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(188, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(189, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(190, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(191, 'Aerolinea1', 'Origen1', 'Destino1', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 1, 110);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(192, 'Aerolinea2', 'Origen2', 'Destino2', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 2, 120);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(193, 'Aerolinea3', 'Origen3', 'Destino3', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 3, 130);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(194, 'Aerolinea4', 'Origen4', 'Destino4', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 4, 140);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(195, 'Aerolinea5', 'Origen5', 'Destino5', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 5, 150);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(196, 'Aerolinea6', 'Origen6', 'Destino6', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 6, 160);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(197, 'Aerolinea7', 'Origen7', 'Destino7', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 7, 170);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(198, 'Aerolinea8', 'Origen8', 'Destino8', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 8, 180);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(199, 'Aerolinea9', 'Origen9', 'Destino9', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 9, 190);
INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
(200, 'Aerolinea10', 'Origen10', 'Destino10', TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, TO_DATE('2024-12-02', 'YYYY-MM-DD') + 10, 200);

INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(1, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(2, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(3, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(4, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(5, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(6, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(7, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(8, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(9, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(10, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(11, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(12, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(13, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(14, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(15, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(16, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(17, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(18, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(19, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(20, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(21, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(22, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(23, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(24, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(25, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(26, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(27, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(28, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(29, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(30, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(31, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(32, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(33, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(34, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(35, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(36, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(37, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(38, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(39, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(40, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(41, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(42, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(43, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(44, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(45, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(46, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(47, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(48, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(49, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(50, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(51, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(52, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(53, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(54, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(55, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(56, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(57, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(58, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(59, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(60, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(61, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(62, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(63, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(64, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(65, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(66, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(67, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(68, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(69, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(70, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(71, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(72, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(73, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(74, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(75, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(76, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(77, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(78, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(79, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(80, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(81, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(82, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(83, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(84, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(85, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(86, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(87, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(88, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(89, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(90, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(91, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(92, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(93, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(94, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(95, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(96, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(97, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(98, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(99, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(100, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(101, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(102, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(103, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(104, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(105, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(106, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(107, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(108, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(109, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(110, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(111, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(112, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(113, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(114, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(115, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(116, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(117, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(118, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(119, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(120, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(121, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(122, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(123, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(124, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(125, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(126, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(127, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(128, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(129, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(130, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(131, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(132, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(133, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(134, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(135, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(136, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(137, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(138, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(139, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(140, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(141, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(142, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(143, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(144, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(145, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(146, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(147, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(148, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(149, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(150, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(151, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(152, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(153, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(154, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(155, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(156, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(157, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(158, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(159, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(160, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(161, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(162, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(163, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(164, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(165, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(166, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(167, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(168, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(169, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(170, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(171, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(172, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(173, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(174, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(175, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(176, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(177, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(178, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(179, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(180, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(181, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(182, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(183, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(184, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(185, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(186, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(187, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(188, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(189, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(190, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(191, 'Hotel1', 'Ubicacion1', 'Categoria1', 55);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(192, 'Hotel2', 'Ubicacion2', 'Categoria2', 60);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(193, 'Hotel3', 'Ubicacion3', 'Categoria3', 65);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(194, 'Hotel4', 'Ubicacion4', 'Categoria4', 70);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(195, 'Hotel5', 'Ubicacion5', 'Categoria5', 75);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(196, 'Hotel6', 'Ubicacion6', 'Categoria6', 80);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(197, 'Hotel7', 'Ubicacion7', 'Categoria7', 85);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(198, 'Hotel8', 'Ubicacion8', 'Categoria8', 90);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(199, 'Hotel9', 'Ubicacion9', 'Categoria9', 95);
INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
(200, 'Hotel10', 'Ubicacion10', 'Categoria10', 100);

INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(1, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(2, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(3, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(4, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(5, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(6, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(7, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(8, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(9, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(10, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(11, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(12, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(13, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(14, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(15, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(16, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(17, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(18, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(19, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(20, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(21, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(22, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(23, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(24, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(25, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(26, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(27, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(28, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
29, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(30, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(31, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(32, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(33, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(34, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(35, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(36, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(37, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(38, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(39, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(40, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(41, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(42, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(43, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(44, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(45, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(46, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(47, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(48, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(49, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(50, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(51, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(52, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(53, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(54, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(55, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(56, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(57, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(58, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(59, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(60, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(61, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(62, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(63, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(64, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(65, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(66, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(67, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(68, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(69, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(70, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(71, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(72, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(73, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(74, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(75, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(76, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(77, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(78, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(79, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(80, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(81, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(82, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(83, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(84, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(85, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(86, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(87, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(88, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(89, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(90, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(91, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(92, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(93, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(94, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(95, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(96, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(97, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(98, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(99, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(100, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(101, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(102, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(103, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(104, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(105, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(106, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(107, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(108, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(109, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(110, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(111, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(112, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(113, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(114, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(115, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(116, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(117, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(118, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(119, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(120, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(121, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(122, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(123, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(124, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(125, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(126, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(127, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(128, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(129, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(130, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(131, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(132, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(133, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(134, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(135, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(136, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(137, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(138, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(139, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(140, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(141, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(142, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(143, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(144, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(145, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(146, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(147, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(148, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(149, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(150, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(151, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(152, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(153, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(154, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(155, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(156, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(157, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(158, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(159, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(160, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(161, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(162, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(163, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(164, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(165, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(166, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(167, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(168, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(169, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(170, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(171, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(172, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(173, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(174, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(175, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(176, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(177, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(178, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(179, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(180, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(181, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(182, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(183, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(184, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(185, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(186, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(187, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(188, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(189, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(190, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(191, 'Tour1', 'Descripcion del Tour 1', 'Duracion1 horas', 45);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(192, 'Tour2', 'Descripcion del Tour 2', 'Duracion2 horas', 60);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(193, 'Tour3', 'Descripcion del Tour 3', 'Duracion3 horas', 75);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(194, 'Tour4', 'Descripcion del Tour 4', 'Duracion4 horas', 90);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(195, 'Tour5', 'Descripcion del Tour 5', 'Duracion5 horas', 105);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(196, 'Tour6', 'Descripcion del Tour 6', 'Duracion6 horas', 120);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(197, 'Tour7', 'Descripcion del Tour 7', 'Duracion7 horas', 135);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(198, 'Tour8', 'Descripcion del Tour 8', 'Duracion8 horas', 150);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(199, 'Tour9', 'Descripcion del Tour 9', 'Duracion9 horas', 165);
INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
(200, 'Tour10', 'Descripcion del Tour 10', 'Duracion10 horas', 180);


INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(1, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(2, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(3, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(4, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(5, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(6, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(7, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(8, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(9, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(10, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(11, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(12, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(13, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(14, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(15, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(16, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(17, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(18, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(19, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(20, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(21, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(22, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(23, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(24, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(25, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(26, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(27, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(28, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(29, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(30, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(31, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(32, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(33, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(34, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example
.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(35, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(36, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(37, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(38, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(39, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(40, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(41, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(42, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(43, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(44, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(45, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(46, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(47, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(48, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(49, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(50, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(51, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(52, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(53, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(54, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(55, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(56, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(57, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(58, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(59, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(60, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(61, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(62, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(63, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(64, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(65, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(66, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(67, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(68, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(69, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(70, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(71, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(72, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(73, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(74, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(75, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(76, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(77, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(78, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(79, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(80, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(81, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(82, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(83, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(84, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(85, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(86, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(87, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(88, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(89, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(90, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(91, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(92, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(93, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(94, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(95, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(96, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(97, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(98, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(99, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(100, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(101, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(102, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(103, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(104, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(105, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(106, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(107, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(108, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(109, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(110, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(111, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(112, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(113, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(114, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(115, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(116, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(117, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(118, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(119, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(120, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(121, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(122, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(123, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(124, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(125, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(126, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(127, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(128, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(129, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(130, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(131, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(132, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(133, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(134, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(135, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(136, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(137, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(138, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(139, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(140, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(141, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(142, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(143, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(144, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(145, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(146, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(147, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(148, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(149, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(150, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(151, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(152, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(153, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(154, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(155, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(156, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(157, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(158, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(159, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(160, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(161, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(162, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(163, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(164, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(165, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(166, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(167, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(168, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(169, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(170, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(171, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(172, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(173, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(174, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(175, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(166, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(167, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(168, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(169, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(170, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(171, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(172, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(173, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(174, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(175, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(176, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(177, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(178, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(179, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(180, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(181, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(182, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(183, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(184, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(185, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(186, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(187, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(188, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(189, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(190, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(191, 'EmpleadoNombre1', 'EmpleadoApellido1', 'Cargo1', '123-456-7001', 'empleado1@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(192, 'EmpleadoNombre2', 'EmpleadoApellido2', 'Cargo2', '123-456-7002', 'empleado2@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(193, 'EmpleadoNombre3', 'EmpleadoApellido3', 'Cargo3', '123-456-7003', 'empleado3@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(194, 'EmpleadoNombre4', 'EmpleadoApellido4', 'Cargo4', '123-456-7004', 'empleado4@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(195, 'EmpleadoNombre5', 'EmpleadoApellido5', 'Cargo5', '123-456-7005', 'empleado5@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(196, 'EmpleadoNombre6', 'EmpleadoApellido6', 'Cargo6', '123-456-7006', 'empleado6@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(197, 'EmpleadoNombre7', 'EmpleadoApellido7', 'Cargo7', '123-456-7007', 'empleado7@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(198, 'EmpleadoNombre8', 'EmpleadoApellido8', 'Cargo8', '123-456-7008', 'empleado8@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(199, 'EmpleadoNombre9', 'EmpleadoApellido9', 'Cargo9', '123-456-7009', 'empleado9@example.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(200, 'EmpleadoNombre10', 'EmpleadoApellido10', 'Cargo10', '123-456-7010', 'empleado10@example.com');

INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(1, 1, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(2, 2, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(3, 3, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(4, 4, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(5, 5, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(6, 6, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(7, 7, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(8, 8, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(9, 9, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(10, 10, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(11, 11, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(12, 12, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(13, 13, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(14, 14, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(15, 15, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(16, 16, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(17, 17, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(18, 18, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(19, 19, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(20, 20, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(21, 21, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(22, 22, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(23, 23, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(24, 24, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(25, 25, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(26, 26, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(27, 27, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(28, 28, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(29, 29, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(30, 30, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(31, 31, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(32, 32, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(33, 33, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(34, 34, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(35, 35, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(36, 36, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(37, 37, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(38, 38, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(39, 39, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(40, 40, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(41, 41, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(42, 42, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(43, 43, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(44, 44, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(45, 45, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(46, 46, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(47, 47, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(48, 48, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(49, 49, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(50, 50, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(51, 51, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(52, 52, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(53, 53, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(54, 54, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(55, 55, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(56, 56, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(57, 57, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(58, 58, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(59, 59, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(60, 60, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(61, 61, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(62, 62, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(63, 63, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(64, 64, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(65, 65, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(66, 66, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(67, 67, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(68, 68, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(69, 69, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(70, 70, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(71, 71, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(72, 72, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(73, 73, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(74, 74, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(75, 75, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(76, 76, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(77, 77, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(78, 78, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(79, 79, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(80, 80, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(81, 81, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(82, 82, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(83, 83, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(84, 84, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(85, 85, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(86, 86, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(87, 87, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(88, 88, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(89, 89, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(90, 90, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(91, 91, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(92, 92, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(93, 93, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(94, 94, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(95, 95, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(96, 96, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(97, 97, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(98, 98, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(99, 99, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(100, 100, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(101, 101, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(102, 102, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(103, 103, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(104, 104, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(105, 105, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(106, 106, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(107, 107, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(108, 108, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(109, 109, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(110, 110, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(111, 111, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(112, 112, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(113, 113, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(114, 114, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(115, 115, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(116, 116, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(117, 117, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(118, 118, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(119, 119, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(120, 120, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(121, 121, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(122, 122, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(123, 123, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(124, 124, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(125, 125, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(126, 126, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(127, 127, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(128, 128, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(129, 129, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(130, 130, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(131, 131, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(132, 132, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(133, 133, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(134, 134, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(135, 135, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(136, 136, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(137, 137, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(138, 138, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(139, 139, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(140, 140, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(141, 141, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(142, 142, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(143, 143, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(144, 144, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(145, 145, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(146, 146, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(147, 147, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(148, 148, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(149, 149, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(150, 150, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(151, 151, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(152, 152, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(153, 153, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(154, 154, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(155, 155, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(156, 156, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(157, 157, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(158, 158, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(159, 159, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(160, 160, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(161, 161, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(162, 162, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(163, 163, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(164, 164, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(165, 165, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(166, 166, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(167, 167, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(168, 168, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(169, 169, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(170, 170, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(171, 171, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(172, 172, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(173, 173, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(174, 174, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(175, 175, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(176, 176, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(177, 177, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(178, 178, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(179, 179, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(180, 180, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(181, 181, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(182, 182, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(183, 183, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(184, 184, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(185, 185, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(186, 186, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(187, 187, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(188, 188, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(189, 189, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(190, 190, 1, 1);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(191, 191, 2, 2);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(192, 192, 3, 3);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(193, 193, 4, 4);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(194, 194, 5, 5);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(195, 195, 6, 6);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(196, 196, 7, 7);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(197, 197, 8, 8);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(198, 198, 9, 9);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(199, 199, 10, 10);
INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
(200, 200, 1, 1);

INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(1, 52, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(2, 54, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(3, 56, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(4, 58, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(5, 60, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(6, 62, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(7, 64, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(8, 66, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(9, 68, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(10, 70, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(11, 72, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(12, 74, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(13, 76, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(14, 78, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(15, 80, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(16, 82, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(17, 84, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(18, 86, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(19, 88, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(20, 90, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(21, 92, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 21, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(22, 94, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 22, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(23, 96, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 23, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(24, 98, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 24, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(25, 100, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 25, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(26, 102, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 26, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(27, 104, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 27, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(28, 106, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 28, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(29, 108, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 29, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(30, 110, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 0, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(31, 112, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(32, 114, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(33, 116, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(34, 118, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(35, 120, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(36, 122, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(37, 124, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(38, 126, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(39, 128, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(40, 130, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(41, 132, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(42, 134, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(43, 136, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(44, 138, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(45, 140, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(46, 142, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(47, 144, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(48, 146, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(49, 148, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(50, 150, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(51, 152, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 21, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(52, 154, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 22, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(53, 156, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 23, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(54, 158, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 24, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(55, 160, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 25, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(56, 162, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 26, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(57, 164, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 27, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(58, 166, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 28, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(59, 168, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 29, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(60, 170, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 0, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(61, 172, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(62, 174, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(63, 176, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(64, 178, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(65, 180, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(66, 182, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(67, 184, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(68, 186, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(69, 188, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(70, 190, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(71, 192, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(72, 194, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(73, 196, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(74, 198, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(75, 200, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(76, 202, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(77, 204, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(78, 206, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(79, 208, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(80, 210, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(81, 212, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 21, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(82, 214, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 22, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(83, 216, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 23, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(84, 218, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 24, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(85, 220, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 25, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(86, 222, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 26, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(87, 224, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 27, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(88, 226, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 28, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(89, 228, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 29, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(90, 230, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 0, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(91, 232, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(92, 234, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(93, 236, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(94, 238, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(95, 240, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(96, 242, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(97, 244, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(98, 246, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(99, 248, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(100, 250, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');

INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(101, 252, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(102, 254, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(103, 256, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(104, 258, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(105, 260, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(106, 262, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(107, 264, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(108, 266, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(109, 268, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(110, 270, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(111, 272, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 21, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(112, 274, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 22, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(113, 276, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 23, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(114, 278, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 24, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(115, 280, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 25, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(116, 282, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 26, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(117, 284, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 27, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(118, 286, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 28, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(119, 288, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 29, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(120, 290, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 0, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(121, 292, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(122, 294, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(123, 296, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(124, 298, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(125, 300, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(126, 302, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(127, 304, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(128, 306, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(129, 308, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(130, 310, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(131, 312, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(132, 314, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(133, 316, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(134, 318, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(135, 320, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(136, 322, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(137, 324, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(138, 326, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(139, 328, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(140, 330, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(141, 332, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 21, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(142, 334, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 22, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(143, 336, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 23, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(144, 338, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 24, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(145, 340, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 25, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(146, 342, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 26, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(147, 344, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 27, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(148, 346, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 28, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(149, 348, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 29, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(150, 350, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 0, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(151, 352, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(152, 354, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(153, 356, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(154, 358, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(155, 360, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(156, 362, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(157, 364, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(158, 366, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(159, 368, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(160, 370, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(161, 372, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(162, 374, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(163, 376, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(164, 378, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(165, 380, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(166, 382, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(167, 384, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(168, 386, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(169, 388, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(170, 390, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(171, 392, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 21, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(172, 394, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 22, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(173, 396, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 23, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(174, 398, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 24, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(175, 400, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 25, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(176, 402, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 26, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(177, 404, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 27, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(178, 406, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 28, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(179, 408, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 29, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(180, 410, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 0, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(181, 412, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 1, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(182, 414, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 2, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(183, 416, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 3, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(184, 418, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 4, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(185, 420, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 5, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(186, 422, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 6, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(187, 424, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 7, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(188, 426, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 8, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(189, 428, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 9, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(190, 430, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 10, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(191, 432, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 11, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(192, 434, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 12, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(193, 436, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 13, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(194, 438, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 14, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(195, 440, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 15, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(196, 442, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 16, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(197, 444, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 17, 'Metodo3');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(198, 446, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 18, 'Metodo1');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(199, 448, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 19, 'Metodo2');
INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
(200, 450, TO_DATE('2024-12-01', 'YYYY-MM-DD') + 20, 'Metodo3');

INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(1, 1, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(2, 2, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(3, 3, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(4, 4, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(5, 5, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(6, 6, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(7, 7, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(8, 8, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(9, 9, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(10, 10, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(11, 11, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(12, 12, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(13, 13, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(14, 14, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(15, 15, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(16, 16, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(17, 17, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(18, 18, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(19, 19, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(20, 20, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(21, 21, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(22, 22, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(23, 23, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(24, 24, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(25, 25, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(26, 26, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(27, 27, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(28, 28, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(29, 29, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(30, 30, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(31, 31, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(32, 32, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(33, 33, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(34, 34, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(35, 35, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(36, 36, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(37, 37, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(38, 38, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(39, 39, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(40, 40, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(41, 41, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(42, 42, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(43, 43, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(44, 44, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(45, 45, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(46, 46, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(47, 47, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(48, 48, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(49, 49, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(50, 50, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(51, 51, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(52, 52, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(53, 53, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(54, 54, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(55, 55, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(56, 56, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(57, 57, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(58, 58, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(59, 59, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(60, 60, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(61, 61, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(62, 62, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(63, 63, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(64, 64, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(65, 65, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(66, 66, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(67, 67, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(68, 68, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(69, 69, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(70, 70, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(71, 71, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(72, 72, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(73, 73, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(74, 74, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(75, 75, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(76, 76, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(77, 77, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(78, 78, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(79, 79, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(80, 80, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(81, 81, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(82, 82, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(83, 83, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(84, 84, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(85, 85, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(86, 86, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(87, 87, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(88, 88, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(89, 89, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(90, 90, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(91, 91, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(92, 92, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(93, 93, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(94, 94, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(95, 95, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(96, 96, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(97, 97, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(98, 98, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(99, 99, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(100, 100, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(101, 1, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(102, 2, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(103, 3, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(104, 4, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(105, 5, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(106, 6, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(107, 7, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(108, 8, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(109, 9, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(110, 10, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(111, 11, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(112, 12, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(113, 13, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(114, 14, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(115, 15, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(116, 16, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(117, 17, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(118, 18, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(119, 19, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(120, 20, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(121, 21, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(122, 22, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(123, 23, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(124, 24, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(125, 25, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(126, 26, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(127, 27, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(128, 28, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(129, 29, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(130, 30, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(131, 31, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(132, 32, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(133, 33, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(134, 34, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(135, 35, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(136, 36, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(137, 37, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(138, 38, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(139, 39, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(140, 40, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(141, 41, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(142, 42, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(143, 43, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(144, 44, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(145, 45, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(146, 46, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(147, 47, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(148, 48, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(149, 49, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(150, 50, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(151, 51, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(152, 52, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(153, 53, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(154, 54, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(155, 55, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(156, 56, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(157, 57, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(158, 58, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(159, 59, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(160, 60, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(161, 61, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(162, 62, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(163, 63, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(164, 64, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(165, 65, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(166, 66, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(167, 67, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(168, 68, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(169, 69, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(170, 70, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(171, 71, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(172, 72, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(173, 73, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(174, 74, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(175, 75, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(176, 76, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(177, 77, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(178, 78, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(179, 79, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(180, 80, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(181, 81, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(182, 82, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(183, 83, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(184, 84, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(185, 85, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(186, 86, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(187, 87, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(188, 88, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(189, 89, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(190, 90, 1);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(191, 91, 2);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(192, 92, 3);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(193, 93, 4);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(194, 94, 5);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(195, 95, 6);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(196, 96, 7);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(197, 97, 8);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(198, 98, 9);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(199, 99, 10);
INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
(200, 100, 1);

INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(1, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(2, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(3, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(4, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(5, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(6, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(7, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(8, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(9, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(10, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(11, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(12, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(13, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(14, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(15, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(16, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(17, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(18, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(19, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(20, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(21, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(22, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(23, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(24, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(25, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(26, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(27, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(28, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(29, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(30, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(31, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(32, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(33, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(34, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(35, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(36, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(37, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(38, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(39, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(40, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(41, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(42, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(43, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(44, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(45, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
46, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(47, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(48, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(49, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(50, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(51, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(52, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(53, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(54, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(55, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(56, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(57, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(58, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(59, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(60, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(61, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(62, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(63, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(64, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(65, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(66, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(67, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(68, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(69, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(70, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(71, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(72, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(73, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(74, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(75, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(76, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(77, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(78, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(79, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(80, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(81, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(82, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(83, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(84, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(85, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(86, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(87, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(88, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(89, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(90, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(91, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(92, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(93, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(94, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(95, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(96, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(97, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(98, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(99, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(100, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(101, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(102, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(103, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(104, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
105, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(106, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(107, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(108, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(109, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(110, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(111, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(112, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(113, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(114, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(115, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(116, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(117, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(118, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(119, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(120, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(121, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(122, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(123, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(124, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(125, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(126, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(127, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(128, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(129, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(130, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(131, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(132, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(133, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(134, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(135, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(136, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(137, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(138, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(139, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(140, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(141, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(142, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(143, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(144, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(145, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(146, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(147, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(148, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(149, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(150, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(151, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(152, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(153, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(154, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(155, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(156, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(157, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(158, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(159, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(160, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(161, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(162, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(163, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(164, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(165, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(166, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(167, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(168, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(169, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(170, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(171, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(172, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(173, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(174, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(175, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(176, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(177, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(178, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(179, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(180, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(181, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(182, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(183, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(184, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(185, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(186, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(187, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(188, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(189, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(190, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(191, 'Juan', 'Pérez', 'Gerente', '123-456-7890', 'juan.perez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(192, 'Ana', 'Gómez', 'Secretaria', '123-456-7891', 'ana.gomez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(193, 'Carlos', 'López', 'Desarrollador', '123-456-7892', 'carlos.lopez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(194, 'María', 'Martínez', 'Contadora', '123-456-7893', 'maria.martinez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(195, 'Luis', 'Rodríguez', 'Diseñador', '123-456-7894', 'luis.rodriguez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(196, 'Sofía', 'Fernández', 'Jefa de Proyectos', '123-456-7895', 'sofia.fernandez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(197, 'Pedro', 'Jiménez', 'Analista de Sistemas', '123-456-7896', 'pedro.jimenez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(198, 'Lucía', 'Vargas', 'Recursos Humanos', '123-456-7897', 'lucia.vargas@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(199, 'David', 'Sánchez', 'Marketing', '123-456-7898', 'david.sanchez@empresa.com');
INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
(200, 'Elena', 'Morales', 'Ventas', '123-456-7899', 'elena.morales@empresa.com');

CREATE OR REPLACE PROCEDURE SP_Insert_Cliente 
(
    p_ID_Cliente IN INT,
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_Telefono IN VARCHAR2,
    p_Direccion IN VARCHAR2
) 
AS
BEGIN
    INSERT INTO TBL_Clientes (ID_Cliente, Nombre, Apellido, Email, Telefono, Direccion) VALUES 
	(p_ID_Cliente, p_Nombre, p_Apellido, p_Email, p_Telefono, p_Direccion);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Cliente 
(
    p_ID_Cliente IN INT,
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Email IN VARCHAR2,
    p_Telefono IN VARCHAR2,
    p_Direccion IN VARCHAR2
) 
AS
BEGIN
    UPDATE TBL_Clientes
    SET 
	Nombre = p_Nombre,
    Apellido = p_Apellido,
    Email = p_Email,
    Telefono = p_Telefono,
    Direccion = p_Direccion
    WHERE ID_Cliente = p_ID_Cliente;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Cliente 
(
    p_ID_Cliente IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Clientes
    WHERE ID_Cliente = p_ID_Cliente;
END;
/

CREATE OR REPLACE PROCEDURE SP_Insert_Reserva 
(
    p_ID_Reserva IN INT,
    p_ID_Cliente IN INT,
    p_ID_Vuelo IN INT,
    p_ID_Hotel IN INT
) 
AS
BEGIN
    INSERT INTO TBL_Reservas (ID_Reserva, ID_Cliente, ID_Vuelo, ID_Hotel) VALUES 
	(p_ID_Reserva, p_ID_Cliente, p_ID_Vuelo, p_ID_Hotel);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Reserva 
(
    p_ID_Reserva IN INT,
    p_ID_Cliente IN INT,
    p_ID_Vuelo IN INT,
    p_ID_Hotel IN INT
) 
AS
BEGIN
    UPDATE TBL_Reservas
    SET 
	ID_Cliente = p_ID_Cliente,
    ID_Vuelo = p_ID_Vuelo,
    ID_Hotel = p_ID_Hotel
    WHERE ID_Reserva = p_ID_Reserva;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Reserva 
(
    p_ID_Reserva IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Reservas
    WHERE ID_Reserva = p_ID_Reserva;
END;
/

CREATE OR REPLACE PROCEDURE SP_Insert_Vuelo 
(
    p_ID_Vuelo IN INT,
    p_Aerolinea IN VARCHAR2,
    p_Origen IN VARCHAR2,
    p_Destino IN VARCHAR2,
    p_Fecha_Salida IN DATE,
    p_Fecha_Llegada IN DATE,
    p_Precio IN NUMBER
) 
AS
BEGIN
    INSERT INTO TBL_Vuelos (ID_Vuelo, Aerolinea, Origen, Destino, Fecha_Salida, Fecha_Llegada, Precio) VALUES 
	(p_ID_Vuelo, p_Aerolinea, p_Origen, p_Destino, p_Fecha_Salida, p_Fecha_Llegada, p_Precio);
END;
/

CREATE OR REPLACE VIEW VW_Clientes 
AS
SELECT 
    ID_Cliente,
    Nombre,
    Apellido,
    Email,
    Telefono,
    Direccion
FROM TBL_Clientes;
/

CREATE OR REPLACE VIEW VW_Reservas 
AS
SELECT 
    ID_Reserva,
    ID_Cliente,
    ID_Vuelo,
    ID_Hotel
FROM TBL_Reservas;
/

CREATE OR REPLACE VIEW VW_Vuelos 
AS
SELECT 
    ID_Vuelo,
    Aerolinea,
    Origen,
    Destino,
    Fecha_Salida,
    Fecha_Llegada,
    Precio
FROM TBL_Vuelos;
/

CREATE OR REPLACE VIEW VW_Hoteles 
AS
SELECT 
    ID_Hotel,
    Nombre,
    Ubicacion,
    Categoria,
    Precio_Noche
FROM TBL_Hoteles;
/

CREATE OR REPLACE VIEW VW_Pagos 
AS
SELECT 
    ID_Pago,
    Monto,
    Fecha_Pago,
    Metodo_Pago
FROM TBL_Pagos;
/

CREATE OR REPLACE VIEW VW_Tours 
AS
SELECT 
    ID_Tour,
    Nombre,
    Descripcion,
    Duracion,
    Precio
FROM TBL_Tours;
/

CREATE OR REPLACE VIEW VW_Reservas_Tours 
AS
SELECT 
    ID_Reserva_Tour,
    ID_Reserva,
    ID_Tour
FROM TBL_Reservas_Tours;
/

CREATE OR REPLACE VIEW VW_Empleados 
AS
SELECT 
    ID_Empleado,
    Nombre,
    Apellido,
    Cargo,
    Telefono,
    Email
FROM TBL_Empleados;
/

SELECT * 
FROM VW_Clientes;

SELECT * 
FROM VW_Clientes
WHERE Nombre = 'Juan';

SELECT * 
FROM VW_Reservas;

SELECT * 
FROM VW_Reservas
WHERE ID_Cliente = 1;

SELECT * 
FROM VW_Vuelos;

SELECT * 
FROM VW_Vuelos
WHERE Destino = 'Nueva York';

SELECT * 
FROM VW_Vuelos
WHERE Precio 
BETWEEN 100 AND 500;

SELECT * 
FROM VW_Hoteles;

SELECT * 
FROM VW_Hoteles
WHERE Categoria = '5 Estrellas';

SELECT * 
FROM VW_Pagos;

SELECT * 
FROM VW_Pagos
WHERE Metodo_Pago = 'Tarjeta de Crédito';

SELECT * 
FROM VW_Tours;

SELECT * 
FROM VW_Tours
WHERE Precio < 200;

SELECT * 
FROM VW_Reservas_Tours;

SELECT * 
FROM VW_Reservas_Tours
WHERE ID_Tour = 5;

SELECT * 
FROM VW_Empleados;

SELECT * 
FROM VW_Empleados
WHERE Cargo = 'Gerente';

SELECT 
    R.ID_Reserva, 
    C.Nombre AS Cliente, 
    V.Aerolinea, 
    V.Destino
FROM VW_Reservas R
JOIN VW_Clientes C 
ON R.ID_Cliente = C.ID_Cliente
JOIN VW_Vuelos V 
ON R.ID_Vuelo = V.ID_Vuelo;

SELECT 
    P.ID_Pago, 
    C.Nombre AS Cliente, 
    P.Monto, 
    P.Metodo_Pago
FROM VW_Pagos P
JOIN VW_Reservas R 
ON P.ID_Reserva = R.ID_Reserva
JOIN VW_Clientes C 
ON R.ID_Cliente = C.ID_Cliente;

SELECT 
    C.Nombre AS Cliente, 
    T.Nombre AS Tour, 
    T.Precio
FROM VW_Reservas_Tours RT
JOIN VW_Reservas R 
ON RT.ID_Reserva = R.ID_Reserva
JOIN VW_Clientes C 
ON R.ID_Cliente = C.ID_Cliente
JOIN VW_Tours T
ON RT.ID_Tour = T.ID_Tour;

CREATE OR REPLACE PROCEDURE SP_Update_Vuelo 
(
    p_ID_Vuelo IN INT,
    p_Aerolinea IN VARCHAR2,
    p_Origen IN VARCHAR2,
    p_Destino IN VARCHAR2,
    p_Fecha_Salida IN DATE,
    p_Fecha_Llegada IN DATE,
    p_Precio IN NUMBER
) 
AS
BEGIN
    UPDATE TBL_Vuelos
    SET 
	Aerolinea = p_Aerolinea,
    Origen = p_Origen,
    Destino = p_Destino,
    Fecha_Salida = p_Fecha_Salida,
    Fecha_Llegada = p_Fecha_Llegada,
    Precio = p_Precio
    WHERE ID_Vuelo = p_ID_Vuelo;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Vuelo 
(
    p_ID_Vuelo IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Vuelos
    WHERE ID_Vuelo = p_ID_Vuelo;
END;
/


CREATE OR REPLACE PROCEDURE SP_Insert_Hotel 
(
    p_ID_Hotel IN INT,
    p_Nombre IN VARCHAR2,
    p_Ubicacion IN VARCHAR2,
    p_Categoria IN VARCHAR2,
    p_Precio_Noche IN NUMBER
) 
AS
BEGIN
    INSERT INTO TBL_Hoteles (ID_Hotel, Nombre, Ubicacion, Categoria, Precio_Noche) VALUES 
	(p_ID_Hotel, p_Nombre, p_Ubicacion, p_Categoria, p_Precio_Noche);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Hotel 
(
    p_ID_Hotel IN INT,
    p_Nombre IN VARCHAR2,
    p_Ubicacion IN VARCHAR2,
    p_Categoria IN VARCHAR2,
    p_Precio_Noche IN NUMBER
) 
AS
BEGIN
    UPDATE TBL_Hoteles
    SET 
	Nombre = p_Nombre,
    Ubicacion = p_Ubicacion,
    Categoria = p_Categoria,
    Precio_Noche = p_Precio_Noche
    WHERE ID_Hotel = p_ID_Hotel;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Hotel 
(
    p_ID_Hotel IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Hoteles
    WHERE ID_Hotel = p_ID_Hotel;
END;
/

CREATE OR REPLACE PROCEDURE SP_Insert_Pago 
(
    p_ID_Pago IN INT,
    p_Monto IN NUMBER,
    p_Fecha_Pago IN DATE,
    p_Metodo_Pago IN VARCHAR2
) 
AS
BEGIN
    INSERT INTO TBL_Pagos (ID_Pago, Monto, Fecha_Pago, Metodo_Pago) VALUES 
	(p_ID_Pago, p_Monto, p_Fecha_Pago, p_Metodo_Pago);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Pago 
(
    p_ID_Pago IN INT,
    p_Monto IN NUMBER,
    p_Fecha_Pago IN DATE,
    p_Metodo_Pago IN VARCHAR2
) 
AS
BEGIN
    UPDATE TBL_Pagos
    SET 
	Monto = p_Monto,
    Fecha_Pago = p_Fecha_Pago,
    Metodo_Pago = p_Metodo_Pago
    WHERE ID_Pago = p_ID_Pago;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Pago 
(
    p_ID_Pago IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Pagos
    WHERE ID_Pago = p_ID_Pago;
END;
/

CREATE OR REPLACE PROCEDURE SP_Insert_Tour 
(
    p_ID_Tour IN INT,
    p_Nombre IN VARCHAR2,
    p_Descripcion IN VARCHAR2,
    p_Duracion IN VARCHAR2,
    p_Precio IN NUMBER
) 
AS
BEGIN
    INSERT INTO TBL_Tours (ID_Tour, Nombre, Descripcion, Duracion, Precio) VALUES 
	(p_ID_Tour, p_Nombre, p_Descripcion, p_Duracion, p_Precio);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Tour 
(
    p_ID_Tour IN INT,
    p_Nombre IN VARCHAR2,
    p_Descripcion IN VARCHAR2,
    p_Duracion IN VARCHAR2,
    p_Precio IN NUMBER
) 
AS
BEGIN
    UPDATE TBL_Tours
    SET 
	Nombre = p_Nombre,
    Descripcion = p_Descripcion,
    Duracion = p_Duracion,
    Precio = p_Precio
    WHERE ID_Tour = p_ID_Tour;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Tour 
(
    p_ID_Tour IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Tours
    WHERE ID_Tour = p_ID_Tour;
END;
/

CREATE OR REPLACE PROCEDURE SP_Insert_Reserva_Tour 
(
    p_ID_Reserva_Tour IN INT,
    p_ID_Reserva IN INT,
    p_ID_Tour IN INT
) 
AS
BEGIN
    INSERT INTO TBL_Reservas_Tours (ID_Reserva_Tour, ID_Reserva, ID_Tour) VALUES 
	(p_ID_Reserva_Tour, p_ID_Reserva, p_ID_Tour);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Reserva_Tour 
(
    p_ID_Reserva_Tour IN INT,
    p_ID_Reserva IN INT,
    p_ID_Tour IN INT
) 
AS
BEGIN
    UPDATE TBL_Reservas_Tours
    SET 
	ID_Reserva = p_ID_Reserva,
    ID_Tour = p_ID_Tour
    WHERE ID_Reserva_Tour = p_ID_Reserva_Tour;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Reserva_Tour 
(
    p_ID_Reserva_Tour IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Reservas_Tours
    WHERE ID_Reserva_Tour = p_ID_Reserva_Tour;
END;
/

CREATE OR REPLACE PROCEDURE SP_Insert_Empleado 
(
    p_ID_Empleado IN INT,
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Cargo IN VARCHAR2,
    p_Telefono IN VARCHAR2,
    p_Email IN VARCHAR2
) 
AS
BEGIN
    INSERT INTO TBL_Empleados (ID_Empleado, Nombre, Apellido, Cargo, Telefono, Email) VALUES 
	(p_ID_Empleado, p_Nombre, p_Apellido, p_Cargo, p_Telefono, p_Email);
END;
/

CREATE OR REPLACE PROCEDURE SP_Update_Empleado 
(
    p_ID_Empleado IN INT,
    p_Nombre IN VARCHAR2,
    p_Apellido IN VARCHAR2,
    p_Cargo IN VARCHAR2,
    p_Telefono IN VARCHAR2,
    p_Email IN VARCHAR2
) 
AS
BEGIN
    UPDATE TBL_Empleados
    SET 
	Nombre = p_Nombre,
    Apellido = p_Apellido,
    Cargo = p_Cargo,
    Telefono = p_Telefono,
    Email = p_Email
    WHERE ID_Empleado = p_ID_Empleado;
END;
/

CREATE OR REPLACE PROCEDURE SP_Delete_Empleado 
(
    p_ID_Empleado IN INT
) 
AS
BEGIN
    DELETE FROM TBL_Empleados
    WHERE ID_Empleado = p_ID_Empleado;
END;
/