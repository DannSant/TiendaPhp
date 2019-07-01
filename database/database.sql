CREATE DATABASE tienda_master;

USE tienda_master;

CREATE TABLE usuarios (
    id INT auto_increment not null,
    nombre  VARCHAR(100) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(20),
    imagen VARCHAR(255),
    CONSTRAINT pk_usuarios PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email),    
);

INSERT INTO usuarios 
VALUES(NULL,'admin','admin','admin@admin.com','123','admin',NULL);


CREATE TABLE categorias (
    id INT auto_increment not null,
    nombre  VARCHAR(100) NOT NULL,
     CONSTRAINT pk_categorias PRIMARY KEY(id),
);

INSERT INTO categorias VALUES(NULL,'Manga corta');
INSERT INTO categorias VALUES(NULL,'Tirantes');
INSERT INTO categorias VALUES(NULL,'Mannga larga');
INSERT INTO categorias VALUES(NULL,'Sudaderas');

CREATE TABLE productos (
    id INT auto_increment not null,
    categoria_id INT NOT NULL,
    nombre  VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    precio float(100,2) not null,
    stock int not null,
    oferta varchar(2),
    fecha date not null,
    imagen varchar(255),    
    CONSTRAINT pk_productos PRIMARY KEY(id),
    CONSTRAINT fk_producto_categoria FOREIGN KEY (categoria_id)  REFERENCES categorias(id)
);

CREATE TABLE pedidos(
    id INT auto_increment not null,
    usuario_id INT NOT NULL,
    provincia VARCHAR(100),
    localidad VARCHAR(100),
    direccion VARCHAR(100),
    coste float(200,2) not null,
    estado varchar(20),
    fecha date,
    hora time,
    CONSTRAINT pk_pedidos PRIMARY KEY(id),
    CONSTRAINT fk_pedidos_usuarios FOREIGN KEY (usuario_id)  REFERENCES usuarios(id)
);

CREATE TABLE lineas_pedidos(
    id INT auto_increment not null,
    pedido_id INT NOT NULL,
    producto_id INT NOT NULL,
    unidades INT,
    CONSTRAINT pk_lineas PRIMARY KEY(id),
    CONSTRAINT fk_lineas_pedidos FOREIGN KEY (pedido_id)  REFERENCES pedidos(id),
    CONSTRAINT fk_lineas_productos FOREIGN KEY (producto_id)  REFERENCES productos(id)
);