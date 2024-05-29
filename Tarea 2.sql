
-- Crear la tabla Productos
CREATE TABLE Productos (
    codigo_producto VARCHAR(50) PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    marca_producto VARCHAR(100),
    talla_producto VARCHAR(10),
    color_producto VARCHAR(50),
    precio_venta FLOAT NOT NULL,
    cantidad_stock INT NOT NULL
);

-- Crear la tabla Ventas
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    codigo_producto VARCHAR(50) NOT NULL,
    fecha_venta DATETIME NOT NULL,
    forma_pago VARCHAR(50),
    nombre_cliente VARCHAR(100),
    direccion_cliente VARCHAR(255),
    telefono_cliente VARCHAR(20),
    cantidad INT NOT NULL,
    total_venta FLOAT NOT NULL,
    FOREIGN KEY (codigo_producto) REFERENCES Productos(codigo_producto)
);

