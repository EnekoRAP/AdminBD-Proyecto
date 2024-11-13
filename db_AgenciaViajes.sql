-- Tabla TBL_Clientes
CREATE TABLE TBL_Clientes (
    ID_Cliente NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50),
    Apellido VARCHAR2(50),
    Email VARCHAR2(100),
    Tel�fono VARCHAR2(15),
    Direcci�n VARCHAR2(200)
);

-- Tabla TBL_Vuelos
CREATE TABLE TBL_Vuelos (
    ID_Vuelo NUMBER PRIMARY KEY,
    Aerol�nea VARCHAR2(50),
    Origen VARCHAR2(50),
    Destino VARCHAR2(50),
    Fecha_Salida DATE,
    Fecha_Llegada DATE,
    Precio NUMBER(10, 2)
);

-- Tabla TBL_Hoteles
CREATE TABLE TBL_Hoteles (
    ID_Hotel NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50),
    Ubicaci�n VARCHAR2(100),
    Categor�a VARCHAR2(20),
    Precio_Noche NUMBER(10, 2)
);

-- Tabla TBL_Reservas
CREATE TABLE TBL_Reservas (
    ID_Reserva NUMBER PRIMARY KEY,
    ID_Cliente NUMBER,
    ID_Vuelo NUMBER,
    ID_Hotel NUMBER,
    FOREIGN KEY (ID_Cliente) REFERENCES TBL_Clientes(ID_Cliente),
    FOREIGN KEY (ID_Vuelo) REFERENCES TBL_Vuelos(ID_Vuelo),
    FOREIGN KEY (ID_Hotel) REFERENCES TBL_Hoteles(ID_Hotel)
);

-- Tabla TBL_Pagos
CREATE TABLE TBL_Pagos (
    ID_Pago NUMBER PRIMARY KEY,
    ID_Reserva NUMBER UNIQUE,
    Monto NUMBER(10, 2),
    Fecha_Pago DATE,
    M�todo_Pago VARCHAR2(50),
    FOREIGN KEY (ID_Reserva) REFERENCES TBL_Reservas(ID_Reserva)
);

-- Tabla TBL_Tours
CREATE TABLE TBL_Tours (
    ID_Tour NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50),
    Descripci�n VARCHAR2(200),
    Duraci�n NUMBER,
    Precio NUMBER(10, 2)
);

-- Tabla TBL_Reservas_Tours (Tabla Intermedia)
CREATE TABLE TBL_Reservas_Tours (
    ID_Reserva_Tour NUMBER PRIMARY KEY,
    ID_Reserva NUMBER,
    ID_Tour NUMBER,
    FOREIGN KEY (ID_Reserva) REFERENCES TBL_Reservas(ID_Reserva),
    FOREIGN KEY (ID_Tour) REFERENCES TBL_Tours(ID_Tour)
);

-- Tabla TBL_Empleados
CREATE TABLE TBL_Empleados (
    ID_Empleado NUMBER PRIMARY KEY,
    Nombre VARCHAR2(50),
    Apellido VARCHAR2(50),
    Cargo VARCHAR2(50),
    Tel�fono VARCHAR2(15),
    Email VARCHAR2(100)
);



ALTER TABLE TBL_Reservas
ADD ID_Empleado NUMBER;


ALTER TABLE TBL_Reservas
ADD CONSTRAINT fk_reserva_empleado
FOREIGN KEY (ID_Empleado) REFERENCES TBL_Empleados(ID_Empleado);

