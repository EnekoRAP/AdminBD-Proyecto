----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Crear un usuario
CREATE USER Admin_Agent IDENTIFIED BY agent1234;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Conceder privilegios al usuario
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

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Creación de tablespace
CREATE TABLESPACE agencia_viajes
DATAFILE 'C:\oracle\oradata\ORCL\agencia_viajes.dbf' SIZE 100M
AUTOEXTEND ON NEXT 50M MAXSIZE 500M;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Creación de tablespace temporal
CREATE TEMPORARY TABLESPACE temp_agencia 
TEMPFILE 'C:\oracle\oradata\ORCL\temp_agencia.dbf' SIZE 50M 
AUTOEXTEND ON NEXT 25M MAXSIZE 200M;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Aignar tablespace por defecto
ALTER USER Admin_Agent DEFAULT TABLESPACE agencia_viajes;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Asignar tablespace temporal
ALTER USER Admin_Agent DEFAULT TABLESPACE temp_agencia;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Conectar nuevo usuario
CONNECT Admin_Agent/agent1234;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Tabla: CLIENTES
CREATE TABLE TBL_Clientes 
(
	ID_Cliente		INT 			PRIMARY KEY,
	Nombre 			VARCHAR2(50) 	NOT NULL,
	Apellido 		VARCHAR2(50) 	NOT NULL,
	Email 			VARCHAR2(100) 	NOT NULL,
	Telefono 		VARCHAR2(20) 	NOT NULL,
	Direccion 		VARCHAR2(100) 	NOT NULL
);

-- Tabla: RESERVAS
CREATE TABLE TBL_Reservas 
(
	ID_Reserva		INT 			PRIMARY KEY,
	ID_Cliente     	INT,
	ID_Vuelo       	INT,
	ID_Hotel       	INT,
    
    -- Agregar llaves foráneas a RESERVAS
	CONSTRAINT FK_ID_Cliente 
        FOREIGN KEY (ID_Cliente) 
        REFERENCES TBL_Clientes (ID_Cliente),
	CONSTRAINT FK_ID_Vuelo 
        FOREIGN KEY (ID_Vuelo) 
        REFERENCES TBL_Vuelos (ID_Vuelo),
	CONSTRAINT FK_ID_Hotel 
        FOREIGN KEY (ID_Hotel) 
        REFERENCES TBL_Hoteles (ID_Hotel)
);

-- Tabla: VUELOS
CREATE TABLE TBL_Vuelos 
(
	ID_Vuelo 		INT 			PRIMARY KEY,
	Aerolinea 		VARCHAR2(50) 	NOT NULL,
	Origen 			VARCHAR2(50) 	NOT NULL,
	Destino 		VARCHAR2(50) 	NOT NULL,
	Fecha_Salida 	DATE,
	Fecha_Llegada 	DATE,
	Precio 			NUMBER
);

-- Tabla: HOTELES
CREATE TABLE TBL_Hoteles 
(
	ID_Hotel 		INT 			PRIMARY KEY,
	Nombre 			VARCHAR2(50) 	NOT NULL,
	Ubicacion 		VARCHAR2(50) 	NOT NULL,
	Categoria 		VARCHAR2(20) 	NOT NULL,
	Precio_Noche 	NUMBER
);

-- Tabla: PAGOS
CREATE TABLE TBL_Pagos 
(
	ID_Pago 		INT 			PRIMARY KEY,
	Monto 			NUMBER,
	Fecha_Pago 		DATE,
	Metodo_Pago 	VARCHAR2(20) 	NOT NULL,
    ID_Reserva 		INT,
    
    -- Agregar llave foránea a PAGOS		
    CONSTRAINT ID_Reserva_FK 
        FOREIGN KEY (ID_Reserva) 
        REFERENCES TBL_Reservas (ID_Reserva)
);

-- Tabla: TOURS
CREATE TABLE TBL_Tours
(
	ID_Tour 		INT 			PRIMARY KEY,
	Nombre 			VARCHAR2(50) 	NOT NULL,
	Descripcion 	VARCHAR2(100) 	NOT NULL,
	Duracion 		VARCHAR2(20) 	NOT NULL,
	Precio 			NUMBER
);

-- Tabla: RESERVAS/TOURS
CREATE TABLE TBL_Reservas_Tours 
(
	ID_Reserva_Tour INT 			PRIMARY KEY,
	ID_Reserva 		INT,
	ID_Tour 			INT,
    
    -- Agregar llaves foráneas a RESERVAS/TOURS
	CONSTRAINT FK_ID_Reserva 
        FOREIGN KEY (ID_Reserva) 
        REFERENCES TBL_Reservas (ID_Reserva),
	CONSTRAINT FK_ID_Tour 
        FOREIGN KEY (ID_Tour) 
        REFERENCES TBL_Tours (ID_Tour)
);

-- Tabla: EMPLEADOS
CREATE TABLE TBL_Empleados
(
	ID_Empleado 	INT 			PRIMARY KEY,
	Nombre 			VARCHAR2(50) 	NOT NULL,
	Apellido 		VARCHAR2(50) 	NOT NULL,
	Cargo 			VARCHAR2(20) 	NOT NULL,
	Telefono 		VARCHAR2(20) 	NOT NULL,
	Email 			VARCHAR2(100) 	NOT NULL
);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Inserción de datos en la tabla: CLIENTES


-- Inserción de datos en la tabla: VUELOS


-- Inserción de datos en la tabla: HOTELES


-- Inserción de datos en la tabla: TOURS


-- Inserción de datos en la tabla: EMPLEADOS


-- Inserción de datos en la tabla: RESERVAS


-- Inserción de datos en la tabla: PAGOS


-- Inserción de datos en la tabla: RESERVAS/TOURS


-- Inserción de datos en la tabla: EMPLEADOS


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------