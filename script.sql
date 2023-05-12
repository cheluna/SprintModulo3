/*Creación de tabla proveedor*/

use sprint_modulo3;

create table proveedor (
id_proveedor int auto_increment unique primary key not null,
nombre_rep_legal varchar(50) not null,
apellido_rep_legal varchar(50) not null,
categoria varchar(50) not null);

/*Alter table a tabla proveedor para añadir campo nombre_proveedor*/

  use sprint_modulo3;

 alter table proveedor
  add nombre_proveedor varchar(50) not null after id_proveedor;
  
  /*Inserción de valores a tabla proveedor*/

use sprint_modulo3;

insert into proveedor (nombre_proveedor, nombre_rep_legal, apellido_rep_legal, categoria)
values
('Apple', 'Carla', 'Soto', 'Electrónica y Computación'),
('Samsung', 'Javiera', 'Vásquez', 'Electrónica y Computación'),
('Casio', 'Carlos', 'Hernandez', 'Electrónica y Computación'),
('IBM', 'Patricia', 'Gómez', 'Electrónica y Computación'),
('Lenovo', 'Pedro', 'Hermosilla', 'Electrónica y Computación'),
('Huawei', 'Paula', 'Diaz', 'Electrónica y Computación'),
('Sony', 'Jose', 'Alemparte', 'Electrónica y Computación'),
('Beats', 'Lucía', 'Sepulveda', 'Tecnología y Audio'),
('Nike', 'Ana', 'Correa', 'Vestuario deportivo'),
('Bosch', 'Hector', 'Iturriaga', 'Electrodomésticos'),
('Levis', 'Juan', 'Arevalo', 'Vestuario casual'),
('Europlant', 'Jaime', 'Guzman', 'Jardín y decoración'),
('Rowenta', 'Alejandra', 'Niño', 'Electrodomésticos'),
('Adidas', 'María', 'Grau', 'Vestuario deportivo'),
('Guess', 'Carmen', 'García', 'Vestuario casual'),
('The North Face', 'Luis', 'Sepúlveda', 'Vestuario deportivo'),
('Re Decora', 'Marta', 'Lucio', 'Decoración y diseño'),
('InterDesign', 'Moisés', 'Larraín', 'Decoración y diseño'),
('Ashley Chile', 'Lourdes', 'Anaías', 'Decoración y diseño'),
('Easy', 'Domingo', 'Graneros', 'Hogar');
  
  /*Creación de tabla contacto_proveedor*/
  
  use sprint_modulo3;

create table contacto_proveedor (
id_contacto int auto_increment unique primary key not null,
id_proveedor int not null,
nombre_contacto varchar(50) not null,
apellido_contacto varchar(50) not null,
/*Las columnas de números de teléfono las definimos como Varchar para 
poder limitar el número de caracteres en caso de errores en ingreso de datos*/
telefono1 varchar(11) not null,
telefono2 varchar(11) not null,
correo_electronico varchar(50) not null);

/*Inserción de valores a tabla contacto_proveedor. Se utiliza esta sentencia para evitar conflicto 
asociado a restricción de Strict Mode en versiones recientes de MySQL*/

use sprint_modulo3;

insert into contacto_proveedor (id_proveedor,nombre_contacto, apellido_contacto, telefono1, telefono2, correo_electronico)
values
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = 
'1'),'Javiera','Nuñez','5697651293','5698356173','javiera.nuñez@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '2'),
'Carmela','Diez','5698743516','5699456182','carmela.diez@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '3'),
'Josefina','Alarcón','5693416382','5698340187','josefina.alarcon@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '4'),
'Catalina','Iriarte','5699863481','5694560381','catalina.iriarte@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '5'),
'José','Errazuriz','5693459102','5697497132','jose.errazuriz@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '6'),
'Alma','Cortés','5693649102','5697560912','alma.cortes@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '7'),
'Jesús','Claro','5697840183','5692379184','jesus.claro@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '8'),
'José','Blanco','5697490123','5697591452','jose.blanco@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '9'),
'Javier','Antón','5695820192','5694859123','javier.anton@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '10'),
'Camilo','Portillo','5695481743','5698567192','camilo.portillo@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '11'),
'Isabel','Cerda','5697489234','5696479412','isabel.cerda@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '12'),
'Ismael','Fernández','5697582143','5696478392','ismael.fernandez@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '13'),
'Pablo','Castro','5697459132','5698564301','pablo.castro@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '14'),
'Paulina','Mancilla','5696589132','5697548132','paulina.mancilla@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '15'),
'Manuel','Contreras','565468192','5696489123','manuel.contreras@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '16'),
'Antonio','Solis','5695468192','5695478123','antonio.solis@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '17'),
'Carolina','Gutierrez','5695468192','5695368301','carolina.gutierrez@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '18'),
'Mariana','Cerda','5696578143','5697569154','mariana.cerda@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '19'),
'Victor','Galvez','5697568145','5697564104','victor.galvez@gmail.com'),
((SELECT id_proveedor FROM proveedor WHERE id_proveedor = '20'),
'Antonieta','Saldivar','5695478391','5694568301','antonieta.saldivar@gmail.com');


/*Alter table a tabla contacto_proveedor para añadir FK entre tablas contacto_proveedor y proveedor*/

 use sprint_modulo3;

  ALTER TABLE contacto_proveedor
ADD CONSTRAINT FK_proveedor_contacto
  FOREIGN KEY (id_proveedor)
  REFERENCES proveedor (id_proveedor)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
/*Creación de tabla productos*/

use sprint_modulo3;

CREATE TABLE productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT not null,
    nombre VARCHAR(50) not null,
    stock INT not null,
    precio DECIMAL(10,2) not null,
    categoria VARCHAR(50) not null,
    proveedor VARCHAR(50) not null,
    color VARCHAR(20) not null
);

/*Inserción de valores a tabla productos*/

use sprint_modulo3;

INSERT INTO productos (nombre, stock, precio, categoria, proveedor, color)
VALUES
    ('Telefono_samsung', 10, 899000, 'Electrónica y computación', 'Samsung', 'Negro'),
    ('poleron', 20, 20000, 'Ropa casual', 'Levis', 'Azul'),
    ('candelabro', 100, 99900, 'Decoración y diseño', 'Re Decora', 'Blanco'),
    ('xiaomi_mi10', 30, 699000, 'Electrónica y computación', 'Huawei', 'Plata'),
    ('Horno', 15, 80000, 'Electrodomésticos', 'Bosch', 'Rojo'),
    ('Zapatilla_nike', 50, 105000, 'Ropa deportiva', 'Nike', 'Verde'),
    ('aspiradora', 10, 59900, 'Electrodomésticos', 'Bosch', 'Negro'),
    ('suculenta', 5, 30000, 'Hogar', 'Easy', 'verde'),
    ('mouse_gamer', 40, 50000, 'Electrónica y computación', 'Sony', 'Gris'),
    ('pantalon_jeans', 8, 23900, 'Ropa casual', 'Levis', 'Azul'),
	('Telefono_huawei', 19, 899000, 'Electrónica y computación', 'Huawei', 'Negro'),
    ('poleron_deportivo', 50, 29000, 'Ropa deportiva', 'Adidas', 'celeste'),
    ('lampara_escritorio', 60, 29900, 'Decoración y diseño', 'InterDesign', 'gris'),
    ('xiaomi_redmi', 30, 499000, 'Electrónica y computación', 'Huawei', 'Plata'),
    ('hervidor', 55, 20000, 'Electrodomésticos', 'Bosch', 'negro'),
    ('Zapatilla_adidas', 18, 120000, 'Ropa deportiva', 'Adidas', 'amarillo'),
    ('lavadora', 72, 199900, 'Electrodomésticos', 'Bosch', 'blanco'),
    ('set_de_tazas', 105, 50000, 'Hogar', 'Easy', 'blanco'),
    ('teclado_gamer', 40, 90000, 'Electrónica y computación', 'Samsung', 'negro'),
    ('short', 120, 19900, 'Ropa deportiva', 'Nike', 'negro');
    
    /*Creación de FK entre tabla producto y tabla proveedor*/
    
    use sprint_modulo3;

ALTER TABLE proveedor
ADD CONSTRAINT FK_productos_proveedor
  FOREIGN KEY (id_proveedor)
  REFERENCES productos (id_producto)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



/*Creación de tabla clientes*/

use sprint_modulo3;

CREATE TABLE clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
RUT VARCHAR(10) UNIQUE NOT NULL,
	direccion VARCHAR(50) NOT NULL,
    	comuna VARCHAR(50) NOT NULL,
	celular VARCHAR(11) NOT NULL,
	PRIMARY KEY (id_cliente)
);

/*Inserción de valores a tabla clientes*/

use sprint_modulo3;

INSERT INTO clientes
    (nombre, apellido, RUT, direccion, comuna, celular)
    
VALUES
    ('Romina', 'Rodríguez', '123658954', 'Gibraltar 7106', 'La Reina', '56987478254'),
    ('Manuel', 'Massini', '112354785', 'Las Hualtatas 542', 'Vitacura', '56925473657'),
    ('María', 'Manríquez', '185247896', 'San Diego 254', 'Santiago', '56965841235'),
    ('Bernardo', 'Bernales', '205894751', 'Martín Lopez 4332', 'La Pintana', '56936365418'),
    ('Macarerna', 'Molinares', '225475684', 'Antigonish 5584', 'La Florida', '56912477895'),
    ('Paulo', 'Piñones', '100245875', 'Camilo Henríquez 765', 'Recoleta', '56956847898'),
    ('Catalina', 'Calderón', '145879652', 'Camino el Alto 6987', 'Puente Alto', '56954789652');
    
          
	/*Creación de tabla ventas*/
    
CREATE TABLE ventas(
  id_venta INT NOT NULL AUTO_INCREMENT,
  nombre_producto VARCHAR(50) NOT NULL,
  categoria VARCHAR(45) NOT NULL,
  precio VARCHAR(45) NOT NULL,
  nombre_cliente VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_venta));
  
   /*Creación de FK entre tablas ventas y productos*/
  ALTER TABLE ventas
ADD CONSTRAINT FK_ventas_productos
  FOREIGN KEY (id_venta)
  REFERENCES productos (id_producto)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
   /*Creación de FK entre tablas clientes y ventas*/
  ALTER TABLE ventas
ADD CONSTRAINT FK_clientes_ventas
  FOREIGN KEY (id_venta)
  REFERENCES clientes (id_cliente)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

/*Uso de sentencia MySQL COUNT() para obtener la
categoría de productos más repetida*/

use sprint_modulo3;

SELECT categoria, 
COUNT( categoria ) 
AS total
FROM  productos
GROUP BY categoria
ORDER BY total DESC 
limit 1 offset 0;

/*Uso de cláusula Order by para obtener los 3
productos con mayor stock*/

use sprint_modulo3;

SELECT DISTINCT id_producto, nombre, stock
FROM productos
ORDER by stock 
DESC LIMIT 3 
OFFSET 0;

/*Uso de sentencia MySQL COUNT() para obtener
el color de producto más común*/

use sprint_modulo3;

SELECT color, 
COUNT( color ) 
AS total
FROM  productos
GROUP BY color
ORDER BY total DESC 
limit 1 offset 0;


/*Uso de sentencia MySQL JOIN() para consultar
tablas proveedor y productos, y obtener los 3
proveedores con menor stock de productos*/

use sprint_modulo3;

SELECT nombre_proveedor, stock
FROM proveedor 
JOIN productos 
ON proveedor.nombre_proveedor=productos.proveedor
order by stock
asc limit 3
offset 0;

/*Uso de función SUM() y comando UNION para sumar 
todos los productos correspondientes de cada categoría 
existente en tabla productos*/

use sprint_modulo3;

SELECT SUM(stock) FROM productos WHERE Categoria = 'Electrónica y Computación'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Decoración y diseño'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Electrodomésticos'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Hogar'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Ropa Casual'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Ropa deportiva';

/*Update a tabla productos para sumar 70
unidades al stock correspondiente al producto
‘Telefono_samsung’*/

use sprint_modulo3;

update productos
set stock=stock+70
where nombre= 'Telefono_samsung';


/*Uso de función SUM() y comando UNION para sumar 
todos los productos correspondientes de cada categoría 
existente en tabla productos, tras update a tabla productos*/

use sprint_modulo3;

SELECT SUM(stock) FROM productos WHERE Categoria = 'Electrónica y Computación'
UNION
SELECT SUM(stock) FROM Productos WHERE Categoria = 'Decoración y diseño'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Electrodomésticos'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Hogar'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Ropa Casual'
UNION
SELECT SUM(stock) FROM productos WHERE Categoria = 'Ropa deportiva';
