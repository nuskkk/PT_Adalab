-- Crear base de datos
CREATE DATABASE TransporteDB;
USE TransporteDB;

-- Crear tablas
CREATE TABLE Transportes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Regiones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Region VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Dias_Semana (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Dia VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE Origenes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Origen VARCHAR(255) NOT NULL,
    Region_ID INT,
    FOREIGN KEY (Region_ID) REFERENCES Regiones(ID)
);

CREATE TABLE Destinos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Destino VARCHAR(255) NOT NULL,
    Region_ID INT,
    FOREIGN KEY (Region_ID) REFERENCES Regiones(ID)
);

CREATE TABLE Viajes (
    ID_Viaje INT PRIMARY KEY,
    Fecha DATE,
    Ruta VARCHAR(255),
    Numero_Pasajeros INT,
    Duracion_Viaje_Minutos INT,
    Retraso_Minutos INT,
    Tipo_Transporte_ID INT,
    Region_ID INT,
    Dia_Semana_ID INT,
    Origen_ID INT,
    Destino_ID INT,
    FOREIGN KEY (Tipo_Transporte_ID) REFERENCES Transportes(ID),
    FOREIGN KEY (Region_ID) REFERENCES Regiones(ID),
    FOREIGN KEY (Dia_Semana_ID) REFERENCES Dias_Semana(ID),
    FOREIGN KEY (Origen_ID) REFERENCES Origenes(ID),
    FOREIGN KEY (Destino_ID) REFERENCES Destinos(ID)
);destinos




