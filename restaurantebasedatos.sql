CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20)
);
CREATE TABLE Mesas (
    id_mesa INT PRIMARY KEY,
    numero_mesa INT UNIQUE,
    capacidad INT
);
CREATE TABLE Meseros (
    id_mesero INT PRIMARY KEY,
    nombre VARCHAR(100),
    turno VARCHAR(20)
);
CREATE TABLE Platos (
    id_plato INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10,2)
);
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_mesa INT,
    id_mesero INT,
    fecha DATETIME,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_mesa) REFERENCES Mesas(id_mesa),
    FOREIGN KEY (id_mesero) REFERENCES Meseros(id_mesero)
);
CREATE TABLE Detalle_Pedido (
    id_detalle INT PRIMARY KEY,
    id_pedido INT,
    id_plato INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_plato) REFERENCES Platos(id_plato)
);