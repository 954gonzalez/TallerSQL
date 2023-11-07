create database laboratorioSQL
use laboratorioSQL

create table profesor(
doc_prof varchar(17) primary key,
nom_prof varchar(30),
ape_prof varchar(30),
cate_prof int,
sal_prof decimal

);


create table curso(
cod_curso int  primary key,
nom_curso varchar(100),
horas_cur int,
valor_cur decimal
);


create table estudiante(
doc_estu varchar (19)primary key,
nom_estu varchar(30),
ape_estu varchar (30),
edad_estu int
)


create table estudiantexcurso(
cod_curso int , foreign key (cod_curso)references curso (cod_curso),
doc_estu varchar (19), foreign key (doc_estu)references estudiante (doc_estu),
fec_ini_estucurso date

)
set dateformat dmy;



create table cliente(
id_cli varchar(18) primary key,
nom_cli varchar(30),
ape_cli varchar(30),
dir_cli varchar(100),
dep_cli varchar(30),
mes_cum_cli varchar(10)

)

create table articulo(
ide_art int identity primary key,
tit_art varchar(100),
aut_art varchar(100),
edi_art varchar(300),
prec_art int

)

create table pedido(
ide_pedido int identity primary key,
ide_cli_ped varchar (18), foreign key (ide_cli_ped) references cliente(id_cli),
fec_pedido date,
val_pedido int

)

create table ArticuloxPedido(
ide_ped_artped int , foreign key(ide_ped_artped) references pedido (ide_pedido),
ide_art_artped int, foreign key (ide_art_artped) references articulo(ide_art),
cant_art_artped int,
val_ven_art_artped decimal
)
select *from ArticuloxPedido


create table compa�ia(
comnit varchar(11) primary key,
comnombre varchar(30),
coma�ofun int,
comreplegal varchar(100)
)

create table tipos_automotores(
auttipo int primary key,

)

ALTER TABLE tipos_automotores
ADD autnombre VARCHAR(30) NULL ;

select*from tipos_automotores


create table automotores(
autoplaca varchar(6) primary key,
automarca varchar(30),
autotipo int, foreign key (autotipo) references tipos_automotores(auttipo),
automodelo int,
autopasajeros int,
autocilindraje int,
autonumchasis varchar(20)
)

create table aseguramientos(
asecodigo int identity (1,6) primary key,
asefechainicio date,
asefechaexpiracion date,
asevalorasegurado int,
aseestado varchar(20),
asecosto decimal,
aseplaca varchar(6), foreign key (aseplaca) references automotores (autoplaca),
)

create table incidentes(
incicodigo int identity primary key,
inicifecha date,
inciplaca varchar(6), foreign key (inciplaca)references automotores (autoplaca),
incilugar varchar(40),
inciantheridos int,
incicanfatalidades int,
incicanautosinvolucrados int
)


insert into profesor values('63.502.720','Martha','Rojas',2,690000)
insert into profesor values('91.216.904','Carlos','P�rez',3,950000)
insert into profesor values('13.826.789','Maritza','Angarita',1,550000)
insert into profesor values('1.098.765.789','Alejandra','Torres',4, 1100000)
select *from profesor
insert into curso values(149842,'Fundamentos de bases dedatos',40,500000)
insert into curso values(250067,'Fundamentos de SQL',20,700000)
insert into curso values(289011,'Manejo de Mysql',45,550000)
insert into curso values(345671,'Fundamentals of Oracle',60,3000000)	

insert into estudiante values('63.502.720','Mar�a','P�rez',2)
insert into estudiante values('91.245.678','Carlos Jos�','L�pez',3)
insert into estudiante values('1.098.098.097','Jonatan','Ardila',1)
insert into estudiante values('1.098.765.679','Carlos','Mart�nez',4)


insert into estudiantexcurso values(289011,'1.098.765.679','01-02-2011 ')
insert into estudiantexcurso values(250067,'63.502.720','01-03-2011')
insert into estudiantexcurso values(289011,'1.098.098.097','01-02-2011')
insert into estudiantexcurso values(345671,'63.502.720','01-04-2011')

select*from estudiantexcurso


insert into cliente values('63502718','Maritza','Rojas','Calle 34 No.14-45','Santander','Abril')
insert into cliente values('13890234','Roger','Ariza','Cra 30 No.13-45','Santander','Junio')
insert into cliente values('77191956','Juan Carlos','Arenas','sdiagonal 23No. 12-34 apto 101','Santander','Marzo')
insert into cliente values('1098765789','Catalina','Zapata','Av. ElLibertador No. 30-14','cauca','Marzo')

insert into articulo values('Redes cisco','Ernesto Arigasello','Alfaomega -Rama',60000)
insert into articulo values('Facebook y Twitter para adultos','Veloso Claudio','Alfaomega',52000)
insert into articulo values('Creaci�n de unportal con php y mysql','Jacob Pav�n Puertas','Alfaomega - Rama',40000)
insert into articulo values('Administraci�nde sistemas operativos','Julio G�mez L�pez','Alfaomega - Rama',55000)

insert into pedido values('63502718','25/02/2012',120000)
insert into pedido values('77191956','30/04/2012',55000)
insert into pedido values('63502718','10/12/2011',260000)
insert into pedido values('1098765789','25/02/2012',1800000)
select*from pedido

insert into ArticuloxPedido values(1,3,5,40000)
insert into ArticuloxPedido values(1,4,12,55000)
insert into ArticuloxPedido values(2,1,5,65000)
insert into ArticuloxPedido values(3,2,10,55000)
insert into ArticuloxPedido values(3,3,12,45000)
insert into ArticuloxPedido values(4,1,10,65000)
select *from pedido
select *from articulo
SELECT *FROM  ArticuloxPedido


insert into compa�ia values( '800890890-2', 'Seguros Atlantida' ,1998 ,'Carlos L�pez')

insert into compa�ia values( '899999999-1',' Aseguradora Rojas', 1991,' Luis Fernando Rojas' )

insert into compa�ia values('899999999-5', 'Seguros delEstado', 2001 ,'Mar�a Margarita P�rez')



insert into tipos_automotores values(1,'Autom�viles')
insert into tipos_automotores values(2,'Camperos')
insert into tipos_automotores values(3,'Camiones')

select *from tipos_automotores

insert into automotores values( 'FLL420 ','chevroletcorsa',1, 2003, 5, 1400, 'wywzzz167kk009d25')
insert into automotores values( 'DKZ820 ',' renault stepway',1, 2008, 5, 1600, 'wywwzz157kk009d45')
insert into automotores values( 'KJQ920 ',' kia sportage',2, 2009, 7, 2000, 'wywzzz167kk009d25')




insert into aseguramientos values ('2012-09-30','2013-09-30', 30000000,'Vigente', 500000 ,'FLL420')
insert into aseguramientos values  ('2012-09-27','2013-09-27', 35000000,'Vigente', 600000,'DKZ820')
insert into aseguramientos values   ('2011-09-28','2013-09-28', 50000000,'Vigente', 800000 ,'KJQ920')



insert into incidentes values ('2012-09-30', 'DKZ820', 'Bucaramanga', 0 ,0, 2)
insert into incidentes values ('2012-09-27', 'FLL420', 'Gir�n', 1 ,0, 1)
insert into incidentes values ('2011-09-28', 'FLL420', 'Bucaramanga', 1 ,0, 2)


--Procedimientos almacenados


---insertar

--compa�ia
create proc sp_guardar_compa�ia
@comnit varchar(11) ,
@comnombre varchar(30),
@coma�ofun int,
@comreplegal varchar(100)
as
begin
insert into compa�ia (comnit,comnombre,coma�ofun,comreplegal)values(@comnit,@comnombre,@coma�ofun,@comreplegal)
end
sp_guardar_compa�ia '800890890-3', 'Seguros Ocena' ,1993 ,'Carlos Perez'select *from compa�ia---cliente
create proc sp_guardar_cliente
@id_cli varchar(18),
@nom_cli varchar(30),
@ape_cli varchar(30),
@dir_cli varchar(100),
@dep_cli varchar(30),
@mes_cum_cli varchar(10)
as
begin
insert into cliente (id_cli,nom_cli,ape_cli,dir_cli,dep_cli,mes_cum_cli)values(@id_cli,@nom_cli,@ape_cli,@dir_cli,@dep_cli,@mes_cum_cli)
end
sp_guardar_cliente '63502719','Maritza','Rolas','Calle 34 No.14-45','Santander','Abril'select *from cliente---cursocreate proc sp_guardar_curso
@cod_curso int ,
@nom_curso varchar(100),
@horas_cur int,
@valor_cur decimal
as
begin
insert into curso (cod_curso,nom_curso,horas_cur,valor_cur)values(@cod_curso,@nom_curso,@horas_cur,@valor_cur)
end
sp_guardar_curso 149842,'Fundamentos de bases dedatos',40,500000select *from curso----Actualizar--compa�iacreate proc sp_actualizar_compa�ia
@comnit varchar(11) ,
@comnombre varchar(30),
@coma�ofun int,
@comreplegal varchar(100)
as
begin
update compa�ia set
comnit=isnull(@comnit,comnit),
comnombre=isnull(@comnombre,comnombre),
coma�ofun=isnull(@coma�ofun,coma�ofun),
comreplegal=isnull(@comreplegal,comreplegal)
where comnit=@comnit
end
sp_actualizar_compa�ia '800890890-3', 'Seguros Ocena' ,1990 ,'Carlos'select*from compa�ia--clientecreate proc sp_actualizar_cliente
@id_cli varchar(18),
@nom_cli varchar(30),
@ape_cli varchar(30),
@dir_cli varchar(100),
@dep_cli varchar(30),
@mes_cum_cli varchar(10)
as
begin
update cliente set
id_cli=isnull(@id_cli,id_cli),
nom_cli=isnull(@nom_cli,nom_cli),
ape_cli=isnull(@ape_cli,ape_cli),
dir_cli=isnull(@dir_cli,dir_cli),
dep_cli=isnull(@dep_cli,dep_cli),
mes_cum_cli=isnull(@mes_cum_cli,mes_cum_cli)
where id_cli=@id_cli
end
sp_actualizar_cliente '63502718','Marta','Rolas','Calle 34 No.14-45','Santander','Abril'select*from cliente---curso	create proc sp_actualizar_curso
@cod_curso int ,
@nom_curso varchar(100),
@horas_cur int,
@valor_cur decimal
as
begin
update curso set
cod_curso=isnull(@cod_curso,cod_curso),
nom_curso=isnull(@nom_curso,nom_curso),
horas_cur=isnull(@horas_cur,horas_cur),
valor_cur=isnull(@valor_cur,valor_cur)
where cod_curso=@cod_curso
end
sp_actualizar_curso  149842,'Fundamentos de bases python',40,500000select*from curso---eliminar--compa�iacreate procedure sp_eliminar_coma�ia
@comnit varchar(11) 
as
begin
delete compa�ia where comnit=@comnit
end
sp_eliminar_coma�ia '800890890-3'select*from compa�ia---clientecreate procedure sp_eliminar_cliente
@id_cli varchar(18) 
as
begin
delete cliente where id_cli=@id_cli
end
sp_eliminar_cliente '63502718'select*from cliente---cursocreate procedure sp_eliminar_curso
@cod_curso int 
as
begin
delete curso where cod_curso=@cod_curso
end
sp_eliminar_curso 149842select*from curso---50 registros --profesorinsert into profesor values('123456789', 'Juan', 'P�rez', 5, 80000),
('987654321', 'Ana', 'Gonz�lez', 3, 70000),
('555555595', 'Luis', 'Mart�nez', 2, 60000),
('333334333', 'Maria', 'L�pez', 4, 72000),
('444244444', 'Pedro', 'Ram�rez', 1, 55000),
('232222222', 'Laura', 'D�az', 6, 90000),
('666066666', 'Carlos', 'Fern�ndez', 2, 62000),
('787777777', 'Sof�a', 'Garc�a', 3, 68000),
('8888088888', 'Miguel', 'Hern�ndez', 4, 75000),
('9999399999', 'Lorena', 'S�nchez', 2, 62000),
('1111211111', 'Javier', 'Torres', 5, 78000),
('1212212121', 'Carolina', 'Ortiz', 1, 53000),
('2323223232', 'Diego', 'G�mez', 3, 69000),
('3434343343', 'Patricia', 'Mart�n', 4, 76000),
('4545445454', 'Andr�s', 'Silva', 2, 63000),
('5656556565', 'Carmen', 'Cruz', 6, 92000),
('6765767676', 'Gustavo', 'Peralta', 3, 70000),
('7875878787', 'Isabel', 'Rojas', 5, 82000),
('8985989898', 'Fernando', 'Vargas', 2, 64000),
('1014010101', 'Ricardo', 'Luna', 1, 56000),
('1313513131', 'Natalia', 'Ponce', 4, 76000),
('1414414141', 'Roberto', 'Ramos', 2, 65000),
('1512515151', 'Ver�nica', 'Sosa', 5, 81000),
('1611616161', 'Gabriel', 'Navarro', 3, 73000),
('1717217171', 'Luisa', 'Reyes', 1, 57000),
('1821818181', 'Jorge', 'Guerra', 4, 77000),
('1912919191', 'Carla', 'Vera', 2, 66000),
('2022020202', 'Ra�l', 'Moreno', 5, 80000),
('2122121212', 'Santiago', 'Cordero', 3, 74000),
('2220222222', 'Cecilia', 'Guzm�n', 6, 96000),
('230323232', 'Alberto', 'Campos', 4, 78000),
('2421424242', 'Marcela', 'Lara', 2, 67000),
('2521525252', 'Francisco', 'Flores', 5, 83000),
('2621626262', 'Isabella', 'Mora', 3, 75000),
('2721727272', 'Eduardo', 'Avila', 1, 58000),
('2821828282', 'Silvana', 'Jim�nez', 4, 79000),
('2921929292', 'Raul', 'Montoya', 2, 68000),
('3031030303', 'Cristina', 'Sol�s', 6, 98000),
('3131131313', 'Pablo', 'Arias', 3, 76000),
('3231232323', 'Valentina', 'Paredes', 5, 84000),
('3331333333', 'Hern�n', 'Soto', 2, 69000),
('3431434343', 'Paola', 'Salazar', 4, 80000),
('3535353513', 'Felipe', 'Valverde', 1, 59000),
('3163636363', 'Elisa', 'Chaves', 4, 81000),
('3737371373', 'Ricardo', 'Varela', 3, 77000),('33313333', 'Hern�n', 'Soto', 2, 69000),
('34314343', 'Paola', 'Salazar', 4, 80000),
('35353513', 'Felipe', 'Valverde', 1, 59000),
('31636363', 'Elisa', 'Chaves', 4, 81000),
('37331373', 'Ricardo', 'Varela', 3, 77000);select*from profesor--cursoinsert into curso values(100001, 'Introducci�n a la Programaci�n', 40, 450000),
(100002, 'Dise�o Web Avanzado', 60, 600000),
(100003, 'Fundamentos de Matem�ticas', 30, 350000),
(100004, 'Ingl�s Intermedio', 45, 550000),
(100005, 'Marketing Digital', 50, 700000),
(100006, 'Gesti�n de Proyectos', 35, 500000),
(100007, 'Dise�o Gr�fico', 40, 550000),
(100008, 'Redes de Computadoras', 55, 650000),
(100009, 'Desarrollo de Aplicaciones M�viles', 60, 700000),
(100010, 'Introducci�n a la Inteligencia Artificial', 45, 650000),
(100011, 'Finanzas Corporativas', 40, 600000),
(100012, 'Dise�o de Videojuegos', 50, 700000),
(100013, 'Historia del Arte', 30, 350000),
(100014, 'Gesti�n de Recursos Humanos', 35, 450000),
(100015, 'Arquitectura Sostenible', 45, 550000),
(100016, 'Programaci�n Avanzada en Java', 60, 700000),
(100017, 'Dise�o de Experiencia de Usuario', 40, 550000),
(100018, 'Introducci�n a la Psicolog�a', 30, 350000),
(100019, 'Dise�o de Moda', 50, 650000),
(100020, 'Introducci�n a la Astronom�a', 35, 450000),
(100021, 'Historia Mundial Contempor�nea', 40, 500000),
(100022, 'Marketing de Contenidos', 60, 700000),
(100023, 'Gesti�n de Proyectos de Construcci�n', 45, 600000),
(100024, 'Dise�o de Interiores', 30, 350000),
(100025, 'Introducci�n a la Biolog�a', 40, 550000),
(100026, 'Dise�o de Logotipos', 35, 450000),
(100027, 'Programaci�n en C++', 60, 700000),
(100028, 'Fotograf�a Digital', 50, 600000),
(100029, 'Introducci�n a la Filosof�a', 30, 350000),
(100030, 'Contabilidad Empresarial', 45, 550000),
(100031, 'Dise�o de Paisajes', 40, 500000),
(100032, 'Marketing de Redes Sociales', 60, 700000),
(100033, 'Historia de la Literatura', 35, 450000),
(100034, 'Dise�o Industrial', 50, 600000),
(100035, 'Introducci�n a la Geolog�a', 30, 350000),
(100036, 'Gesti�n de Calidad', 45, 550000),
(100037, 'Dise�o de Joyas', 40, 500000),
(100038, 'Programaci�n en Python', 60, 700000),
(100039, 'Fotograf�a de Moda', 35, 450000),
(100040, 'Introducci�n a la Sociolog�a', 30, 350000),
(100041, 'Gesti�n de Ventas', 45, 550000),
(100042, 'Dise�o de Cocinas', 40, 500000),
(100043, 'Marketing de Productos Digitales', 60, 700000),
(100044, 'Historia de la M�sica', 35, 450000),
(100045, 'Dise�o de Muebles', 50, 600000);insert into curso values(100046, 'Introducci�n a la Historia del Cine', 30, 350000),
(100047, 'Gesti�n de la Cadena de Suministro', 45, 550000),
(100048, 'Dise�o de Jardines', 40, 500000),
(100049, 'Marketing de E-Commerce', 60, 700000),
(100050, 'Historia de la Fotograf�a', 35, 450000);
;select *from curso--estudiante

insert into estudiante values('63.502.721', 'Juan', 'G�mez', 20),
('63.502.722', 'Ana', 'Mart�nez', 22),
('63.502.723', 'Luis', 'P�rez', 21),
('63.502.724', 'Maria', 'Rodr�guez', 23),
('63.502.725', 'Carlos', 'Fern�ndez', 20),
('63.502.726', 'Laura', 'S�nchez', 22),
('63.502.727', 'Andr�s', 'L�pez', 21),
('63.502.728', 'Sof�a', 'Garc�a', 23),
('63.502.729', 'Miguel', 'Hern�ndez', 20),
('63.502.730', 'Lorena', 'Torres', 22),
('63.502.731', 'Javier', 'D�az', 21),
('63.502.732', 'Carolina', 'Ortiz', 23),
('63.502.733', 'Diego', 'Gonz�lez', 20),
('63.502.734', 'Patricia', 'Mart�n', 22),
('63.502.735', 'Roberto', 'Ram�rez', 21),
('63.502.736', 'Andrea', 'Luna', 23),
('63.502.737', 'Santiago', 'Fern�ndez', 20),
('63.502.738', 'Elena', 'Mendoza', 22),
('63.502.739', 'Joaqu�n', 'Aguirre', 21),
('63.502.740', 'Natalia', 'Ponce', 23),
('63.502.741', 'Ra�l', 'Ramos', 20),
('63.502.742', 'Ver�nica', 'Sosa', 22),
('63.502.743', 'Gabriel', 'Navarro', 21),
('63.502.744', 'Sandra', 'Reyes', 23),
('63.502.745', 'Jorge', 'Guerra', 20),
('63.502.746', 'Carla', 'Vera', 22),
('63.502.747', 'Andr�s', 'Moreno', 21),
('63.502.748', 'Cecilia', 'Guzm�n', 23),
('63.502.749', 'Alberto', 'Campos', 20),
('63.502.750', 'Marcela', 'Lara', 22),
('63.502.751', 'Francisco', 'Flores', 21),
('63.502.752', 'Isabella', 'Mora', 23),
('63.502.753', 'Eduardo', 'Avila', 20),
('63.502.754', 'Silvana', 'Jim�nez', 22),
('63.502.755', 'Raul', 'Montoya', 21),
('63.502.756', 'Cristina', 'Sol�s', 23),
('63.502.757', 'Pablo', 'Arias', 20),
('63.502.758', 'Valentina', 'Paredes', 22),
('63.502.759', 'Hern�n', 'Soto', 21),
('63.502.760', 'Paola', 'Salazar', 23),
('63.502.761', 'Felipe', 'Valverde', 20),
('63.502.762', 'Elisa', 'Chaves', 22),
('63.502.763', 'Ricardo', 'Varela', 21),
('63.502.764', 'Camila', 'Benavides', 23),
('63.502.765', 'Gustavo', 'Peralta', 20),
('63.502.766', 'Isabel', 'Rojas', 22),
('63.502.767', 'Mariana', 'Vargas', 21),
('63.502.768', 'Andr�s', 'Cordero', 23),
('63.502.769', 'Laura', 'G�mez', 20),
('63.502.770', 'Carlos', 'Garc�a', 22);

---	estudiantexcurso


insert into estudiantexcurso values
(100002, '63.502.722', '02-03-2011'),
(100003, '63.502.723', '03-04-2011'),
(100004, '63.502.724', '04-05-2011'),
(100005, '63.502.725', '05-06-2011'),
(100006, '63.502.726', '06-07-2011'),
(100007, '63.502.727', '07-08-2011'),
(100008, '63.502.728', '08-09-2011'),
(100009, '63.502.729', '09-10-2011'),
(100010, '63.502.730', '10-11-2011'),
(100011, '63.502.731', '11-12-2011'),
(100012, '63.502.732', '12-01-2012'),
(100013, '63.502.733', '13-02-2012'),
(100014, '63.502.734', '14-03-2012'),
(100015, '63.502.735', '15-04-2012'),
(100016, '63.502.736', '16-05-2012'),
(100017, '63.502.737', '17-06-2012'),
(100018, '63.502.738', '18-07-2012'),
(100019, '63.502.739', '19-08-2012'),
(100020, '63.502.740', '20-09-2012'),
(100021, '63.502.741', '21-10-2012'),
(100022, '63.502.742', '22-11-2012');

insert into estudiantexcurso values 
(100023, '63.502.743', '23-12-2012'),
(100024, '63.502.744', '24-01-2013'),
(100025, '63.502.745', '25-02-2013'),
(100026, '63.502.746', '26-03-2013'),
(100027, '63.502.747', '27-04-2013'),
(100028, '63.502.748', '28-05-2013'),
(100029, '63.502.749', '29-06-2013'),
(100030, '63.502.750', '30-07-2013'),
(100031, '63.502.751', '31-08-2013'),
(100032, '63.502.752', '01-09-2013'),
(100033, '63.502.753', '02-10-2013'),
(100034, '63.502.754', '03-11-2013'),
(100035, '63.502.755', '04-12-2013');

insert into estudiantexcurso values
(100036, '63.502.756', '05-01-2014'),
(100037, '63.502.757', '06-02-2014'),
(100038, '63.502.758', '07-03-2014'),
(100039, '63.502.759', '08-04-2014'),
(100040, '63.502.760', '09-05-2014'),
(100041, '63.502.761', '10-06-2014'),
(100042, '63.502.762', '11-07-2014');

insert into estudiantexcurso values
(100043, '63.502.763', '12-08-2014'),
(100044, '63.502.764', '13-09-2014'),
(100045, '63.502.765', '14-10-2014'),
(100046, '63.502.766', '15-11-2014'),
(100047, '63.502.767', '16-12-2014'),
(100048, '63.502.768', '17-01-2015'),
(100049, '63.502.769', '18-02-2015'),
(100050, '63.502.770', '19-03-2015');


select *from estudiantexcurso


---cliente


insert into cliente values ('63502718', 'Maritza', 'Rojas', 'Calle 34 No.14-45', 'Santander', 'Abril'),
('63502719', 'Luis', 'G�mez', 'Calle 12 No.45-78', 'Antioquia', 'Mayo'),
('63502720', 'Ana', 'Mart�nez', 'Carrera 7 No.23-56', 'Valle del Cauca', 'Junio'),
('63502721', 'Sergio', 'P�rez', 'Avenida 25 No.8-34', 'Bogot�', 'Julio'),
('63502722', 'Carmen', 'Rodr�guez', 'Calle 15 No.32-67', 'Bol�var', 'Agosto'),
('63502723', 'Juan', 'Fern�ndez', 'Carrera 42 No.56-12', 'Cundinamarca', 'Septiembre'),
('63502724', 'Luc�a', 'S�nchez', 'Avenida 11 No.7-45', 'Tolima', 'Octubre'),
('63502725', 'Miguel', 'L�pez', 'Calle 6 No.18-29', 'Santander', 'Noviembre'),
('63502726', 'Sof�a', 'Garc�a', 'Carrera 33 No.12-55', 'Huila', 'Diciembre'),
('63502727', 'Mar�a', 'Hern�ndez', 'Calle 23 No.9-23', 'Nari�o', 'Enero'),
('63502728', 'Carlos', 'Torres', 'Avenida 8 No.4-78', 'Caldas', 'Febrero'),
('63502729', 'Lorena', 'D�az', 'Carrera 10 No.15-63', 'Magdalena', 'Marzo'),
('63502730', 'Luis', 'Ortiz', 'Calle 5 No.27-41', 'Cauca', 'Abril'),
('63502731', 'Sandra', 'Gonz�lez', 'Avenida 16 No.33-74', 'Risaralda', 'Mayo'),
('63502732', 'Roberto', 'Mart�n', 'Calle 22 No.19-56', 'Casanare', 'Junio'),
('63502733', 'Ana', 'Jim�nez', 'Carrera 18 No.25-42', 'La Guajira', 'Julio'),
('63502734', 'Javier', 'Ram�rez', 'Calle 7 No.14-89', 'Quind�o', 'Agosto'),
('63502735', 'Cecilia', 'Aguirre', 'Avenida 5 No.11-27', 'Meta', 'Septiembre'),
('63502736', 'Gustavo', 'Ponce', 'Carrera 3 No.8-45', 'Sucre', 'Octubre'),
('63502737', 'Luis', 'Sosa', 'Calle 11 No.20-34', 'Norte de Santander', 'Noviembre'),
('63502738', 'Mariana', 'Vera', 'Calle 25 No.12-56', 'Arauca', 'Diciembre'),
('63502739', 'Eduardo', 'Moreno', 'Carrera 12 No.34-78', 'Caquet�', 'Enero'),
('63502740', 'Patricia', 'Guzm�n', 'Avenida 2 No.15-29', 'Amazonas', 'Febrero'),
('63502741', 'Ra�l', 'Campos', 'Calle 9 No.11-55', 'Putumayo', 'Marzo'),
('63502742', 'Maritza', 'Lara', 'Carrera 4 No.7-63', 'Vaup�s', 'Abril'),
('63502743', 'Felipe', 'Flores', 'Calle 15 No.18-42', 'Guaviare', 'Mayo'),
('63502744', 'Isabella', 'Mora', 'Calle 7 No.27-56', 'Choc�', 'Junio'),
('63502745', 'Joaqu�n', 'Avila', 'Avenida 10 No.15-78', 'San Andr�s y Providencia', 'Julio'),
('63502746', 'Camila', 'Benavides', 'Carrera 6 No.11-45', 'Cesar', 'Agosto'),
('63502747', 'Pablo', 'Valverde', 'Calle 18 No.22-63', 'Boyac�', 'Septiembre'),
('63502748', 'Valentina', 'Chaves', 'Calle 23 No.28-34', 'C�rdoba', 'Octubre'),
('63502749', 'Hern�n', 'Varela', 'Carrera 20 No.19-56', 'Casanare', 'Noviembre'),
('63502750', 'Paola', 'Benavides', 'Avenida 12 No.17-42', 'Tolima', 'Diciembre');

insert into cliente values ('63502751', 'Lorenzo', 'M�ndez', 'Carrera 14 No.21-47', 'Huila', 'Enero'),
('63502752', 'Andrea', 'Guerrero', 'Avenida 4 No.9-36', 'Santander', 'Febrero'),
('63502753', 'Jos�', 'Molina', 'Calle 19 No.14-28', 'Meta', 'Marzo'),
('63502754', 'Martha', 'Silva', 'Carrera 8 No.23-45', 'Caldas', 'Abril'),
('63502755', 'Ricardo', 'Soto', 'Calle 16 No.12-39', 'Tolima', 'Mayo'),
('63502756', 'Catalina', 'G�mez', 'Avenida 7 No.18-47', 'Valle del Cauca', 'Junio'),
('63502757', 'Gonzalo', 'Hern�ndez', 'Carrera 12 No.25-56', 'Nari�o', 'Julio'),
('63502758', 'Valeria', 'Casta�eda', 'Calle 11 No.17-28', 'Bol�var', 'Agosto'),
('63502759', 'Hugo', 'Ortega', 'Avenida 3 No.14-39', 'Cundinamarca', 'Septiembre'),
('63502760', 'Margarita', 'D�az', 'Calle 5 No.22-45', 'Quind�o', 'Octubre'),
('63502761', 'Felipe', 'Vargas', 'Carrera 10 No.16-28', 'Arauca', 'Noviembre'),
('63502762', 'Elena', 'Varela', 'Avenida 1 No.19-47', 'Cesar', 'Diciembre'),
('63502763', 'Santiago', 'Pineda', 'Calle 9 No.12-39', 'Sucre', 'Enero'),
('63502764', 'Olga', 'Gutierrez', 'Carrera 6 No.23-56', 'Magdalena', 'Febrero'),
('63502765', 'Andr�s', 'Rinc�n', 'Calle 13 No.21-47', 'Boyac�', 'Marzo'),
('63502766', 'Isabel', 'Sanchez', 'Carrera 14 No.18-39', 'Caquet�', 'Abril'),
('63502767', 'Raul', 'Herrera', 'Avenida 2 No.16-28', 'Risaralda', 'Mayo');



---articulo


insert into articulo values ('Redes Cisco', 'Ernesto Arigasello', 'Alfaomega - Rama', 60000),
('Programaci�n en C++', 'Luis Garc�a', 'Libros XYZ', 45000),
('Dise�o Web Avanzado', 'Ana Mart�nez', 'Ediciones ABC', 55000),
('Introducci�n a la Inteligencia Artificial', 'Carlos Rodr�guez', 'Editorial 123', 75000),
('Fundamentos de Matem�ticas', 'Marta P�rez', 'Librer�a Delta', 35000),
('Marketing Digital', 'David S�nchez', 'Editorial Omega', 68000),
('Historia del Arte', 'Laura G�mez', 'Libros del Sur', 32000),
('Dise�o Gr�fico', 'Javier D�az', 'Ediciones Gr�ficas', 48000),
('Ingl�s Intermedio', 'Mar�a Rodr�guez', 'Libros Ingleses', 42000),
('Gesti�n de Proyectos', 'Sergio Fern�ndez', 'Editorial PM', 58000),
('Desarrollo de Aplicaciones M�viles', 'Carolina Ortiz', 'Libros Mobile', 70000),
('Dise�o de Videojuegos', 'Diego Gonz�lez', 'Ediciones Game', 67000),
('Gesti�n de Recursos Humanos', 'Luisa Mart�n', 'Libros de RRHH', 40000),
('Arquitectura Sostenible', 'Miguel Torres', 'Editorial Ecol�gica', 51000),
('Programaci�n Avanzada en Java', 'Natalia Ponce', 'Libros Java', 72000),
('Redes de Computadoras', 'Roberto Ram�rez', 'Ediciones Redes', 63000),
('Introducci�n a la Psicolog�a', 'Andrea Luna', 'Editorial PSI', 38000),
('Dise�o de Moda', 'Santiago Fern�ndez', 'Libros de Moda', 55000),
('Introducci�n a la Astronom�a', 'Elena Mendoza', 'Editorial Astronom�a', 42000),
('Historia Mundial Contempor�nea', 'Joaqu�n Aguirre', 'Ediciones Historia', 47000),
('Marketing de Contenidos', 'Natalia Ponce', 'Libros de Marketing', 69000),
('Gesti�n de Proyectos de Construcci�n', 'Ra�l Ramos', 'Editorial Construcci�n', 63000),
('Dise�o de Interiores', 'Ver�nica Sosa', 'Libros de Interiores', 39000),
('Introducci�n a la Biolog�a', 'Gabriel Navarro', 'Editorial Biolog�a', 52000),
('Dise�o de Logotipos', 'Sandra Reyes', 'Libros de Logotipos', 42000),
('Fotograf�a Digital', 'Cecilia Guzm�n', 'Editorial Fotograf�a', 57000),
('Contabilidad Empresarial', 'Alberto Campos', 'Libros de Contabilidad', 60000),
('Dise�o de Paisajes', 'Marcela Lara', 'Editorial Paisajes', 48000),
('Marketing de Redes Sociales', 'Francisco Flores', 'Libros de Redes', 69000),
('Historia de la Literatura', 'Isabella Mora', 'Editorial Literatura', 44000),
('Dise�o Industrial', 'Eduardo Avila', 'Libros Industriales', 53000),
('Introducci�n a la Geolog�a', 'Silvana Jim�nez', 'Editorial Geolog�a', 47000),
('Gesti�n de Calidad', 'Raul Montoya', 'Libros de Calidad', 58000),
('Dise�o de Joyas', 'Cristina Sol�s', 'Editorial Joyas', 46000),
('Programaci�n en Python', 'Pablo Arias', 'Libros Python', 70000),
('Fotograf�a de Moda', 'Valentina Paredes', 'Editorial de Moda', 55000),
('Introducci�n a la Sociolog�a', 'Hern�n Soto', 'Libros de Sociolog�a', 39000),
('Gesti�n de Ventas', 'Paola Salazar', 'Editorial de Ventas', 52000),
('Dise�o de Cocinas', 'Felipe Valverde', 'Libros de Cocinas', 42000),
('Marketing de E-Commerce', 'Isabel Chaves', 'Editorial de E-Commerce', 65000),
('Historia de la Fotograf�a', 'Ricardo Varela', 'Libros de Fotograf�a', 48000),
('Dise�o de Muebles', 'Camila Benavides', 'Editorial de Muebles', 59000),
('Introducci�n a la Historia del Cine', 'Gustavo Peralta', 'Libros de Cine', 45000),
('Gesti�n de la Cadena de Suministro', 'Isabel Rojas', 'Editorial de Suministro', 67000),
('Dise�o de Jardines', 'Mariana Vargas', 'Libros de Jardines', 43000),
('Marketing de Productos Digitales', 'Andr�s Cordero', 'Editorial de Productos Digitales', 70000),
('Historia de la M�sica', 'Laura G�mez', 'Libros de M�sica', 49000),
('Dise�o de Muebles', 'Carlos Garc�a', 'Editorial de Muebles', 60000);


---pedido

insert into pedido values ('63502718', '25/02/2012', 120000),
('63502719', '01/03/2012', 135000),
('63502720', '15/03/2012', 110000),
('63502721', '02/04/2012', 98000),
('63502722', '18/04/2012', 105000),
('63502723', '03/05/2012', 130000),
('63502724', '20/05/2012', 117000),
('63502725', '05/06/2012', 125000),
('63502726', '15/06/2012', 112000),
('63502727', '01/07/2012', 122000),
('63502728', '17/07/2012', 109000),
('63502729', '02/08/2012', 128000),
('63502730', '20/08/2012', 121000),
('63502731', '04/09/2012', 115000),
('63502732', '20/09/2012', 140000),
('63502733', '05/10/2012', 130000),
('63502734', '15/10/2012', 118000),
('63502735', '01/11/2012', 126000),
('63502736', '20/11/2012', 112000),
('63502737', '05/12/2012', 127000),
('63502738', '15/12/2012', 105000),
('63502739', '01/01/2013', 115000),
('63502740', '15/01/2013', 124000),
('63502741', '02/02/2013', 138000),
('63502742', '20/02/2013', 127000),
('63502743', '05/03/2013', 122000),
('63502744', '15/03/2013', 110000),
('63502745', '01/04/2013', 118000),
('63502746', '15/04/2013', 131000),
('63502747', '02/05/2013', 140000),
('63502748', '18/05/2013', 123000),
('63502749', '03/06/2013', 132000),
('63502750', '15/06/2013', 116000),
('63502751', '01/07/2013', 134000),
('63502752', '20/07/2013', 111000),
('63502753', '05/08/2013', 128000),
('63502754', '20/08/2013', 120000),
('63502755', '05/09/2013', 112000),
('63502756', '15/09/2013', 127000),
('63502757', '01/10/2013', 135000),
('63502758', '15/10/2013', 125000),
('63502759', '02/11/2013', 118000),
('63502760', '20/11/2013', 136000),
('63502761', '05/12/2013', 129000),
('63502762', '20/12/2013', 137000),
('63502763', '05/01/2014', 121000),
('63502764', '15/01/2014', 130000),
('63502765', '02/02/2014', 119000),
('63502766', '20/02/2014', 133000);


--- aticulo por pedido

insert into ArticuloxPedido values(1, 3, 5, 40000),
(2, 4, 6, 42000),
(3, 5, 7, 44000),
(4, 6, 8, 46000),
(5, 7, 9, 48000),
(6, 8, 10, 50000),
(7, 9, 11, 52000),
(8, 10, 12, 54000),
(9, 11, 13, 56000),
(10, 12, 14, 58000),
(11, 13, 15, 60000),
(12, 14, 16, 62000),
(13, 15, 17, 64000),
(14, 16, 18, 66000),
(15, 17, 19, 68000),
(16, 18, 20, 70000),
(17, 19, 21, 72000),
(18, 20, 22, 74000),
(19, 21, 23, 76000),
(20, 22, 24, 78000),
(21, 23, 25, 80000),
(22, 24, 26, 82000),
(23, 25, 27, 84000),
(24, 26, 28, 86000),
(25, 27, 29, 88000),
(26, 28, 30, 90000),
(27, 29, 31, 92000),
(28, 30, 32, 94000),
(29, 31, 33, 96000),
(30, 32, 34, 98000),
(31, 33, 35, 100000),
(32, 34, 36, 102000),
(33, 35, 37, 104000),
(34, 36, 38, 106000),
(35, 37, 39, 108000),
(36, 38, 40, 110000),
(37, 39, 41, 112000),
(38, 40, 42, 114000),
(39, 41, 43, 116000),
(40, 42, 44, 118000),
(41, 43, 45, 120000),
(42, 44, 46, 122000),
(43, 45, 47, 124000),
(44, 46, 48, 126000),
(45, 47, 48, 128000),
(46, 48, 44, 130000),
(47, 45, 51, 132000),
(48, 45, 52, 134000),
(49, 1, 53, 136000),
(46, 2, 54, 138000);

select *from pedido


---compa�ia


insert into compa�ia values('899999999-1', 'Aseguradora Rojas', 1991, 'Luis Fernando Rojas'),
('899999999-2', 'Compa��a XYZ', 2005, 'Mar�a L�pez'),
('899999999-3', 'Seguros Del Sol', 1998, 'Juan P�rez'),
('899999999-4', 'Inversiones ABC', 2010, 'Ana Rodr�guez'),
('899999999-5', 'Consultores Empresariales', 1995, 'Carlos Mart�nez'),
('899999999-6', 'Tech Solutions', 2008, 'Laura S�nchez'),
('899999999-7', 'Constructora Constructor', 2003, 'Diego Gonz�lez'),
('899999999-8', 'Viajes y Turismo Express', 1990, 'Sof�a Garc�a'),
('899999999-9', 'Cafeter�a La Esquina', 2012, 'Ricardo Varela'),
('89999999-10', 'Tienda VirtegaShop', 2007, 'Valentina Paredes'),
('89999999-11', 'Dise�os Creativos', 1999, 'Miguel Hern�ndez'),
('89999999-12', 'Electrohogar', 2002, 'Carmen Ortiz'),
('89999999-13', 'Consultor�a Contable', 1997, 'Joaqu�n Aguirre'),
('89999999-14', 'Servicios Legales', 2009, 'Lorena Torres'),
('89999999-15', 'Agencia dead Imagen', 1993, 'Hern�n Soto'),
('89999999-16', 'Inmobiliaria Casa Feliz', 2006, 'Isabella Mora'),
('99999999-17', 'Gimnasio Fitness', 1996, 'Roberto Ram�rez'),
('89999999-18', 'Taller Mec�nico AutoFix', 2011, 'Mar�a L�pez'),
('89999999-19', 'Reparaciones R�pidas', 1994, 'Sergio P�rez'),
('89999999-20', 'Sal�n de Belleza Glamour', 2014, 'Cecilia Guzm�n'),
('89999999-21', 'Academia de Idiomas Global', 2004, 'Andr�s Moren'),
('89999999-22', 'Imprenta Gr�fica PrintX', 1992, 'Luis Rojas'),
('89999999-23', 'Venta de Electrodom�sticos ', 2001, 'Sandra G�mez'),
('89999999-24', 'Estudio Jur�dico JurLex', 2003, 'Mariana Fern�ndez'),
('89999999-25', 'Restaurante La Terraza', 2005, 'Raul S�nchez'),
('89999999-26', 'Constructora Innovar', 2010, 'Gustavo L�pez'),
('8999999-27', 'Agencia de Viajes DreamVacatio', 2008, 'Javier P�rez'),
('89999999-28', 'Consultor�a Empresarial ', 1999, 'Lorena Rodr�guez'),
('89999999-29', 'Inmobiliaria Inversiones ', 1997, 'Andrea Mart�nez'),
('89999999-30', 'Cafeter�a El Sabor', 2011, 'Carolina Gonz�lez'),
('89999999-31', 'Dise�o Web WebDesign', 2002, 'Felipe Torres'),
('89999999-32', 'Agencia de Publicidad AdWorld', 1996, 'Luis P�rez'),
('89999999-33', 'Taller Mec�nico AutoFix', 2013, 'Sof�a Garc�a'),
('89999999-34', 'Estudio Contable ', 2004, 'Marcela Rojas'),
('89999999-35', 'Sal�n de Belleza B', 1998, 'Joaqu�n Vargas'),
('99999999-36', 'Centro de Educaci�n E', 2006, 'Isabella Mora'),
('89999999-37', 'Tienda de Ropa Fashi', 1991, 'Roberto Gonz�lez'),
('89999999-38', 'Estudio de ArqhiDesign', 1995, 'Miguel Torres'),
('89999999-39', 'Agencia de Viajes Trd', 2000, 'Carmen S�nchez'),
('89999999-40', 'Restaurante El Gourmet', 2007, 'Elena Mart�nez'),
('89999999-41', 'Agencia de Marketing MarketPro', 2009, 'Luc�a P�rez'),
('89999999-42', 'Estudio Legal LegalConsult', 1994, 'Santiago L�pez'),
('89999999-43', 'Empresa de Teceions', 2012, 'Patricia Fern�ndez'),
('89999999-44', 'Inmobiliaria Casa Nueva', 1993, 'Ricardo Mart�nez'),
('89999999-45', 'Consultor�a de Negocios Bit', 2007, 'Carolina G�mez'),
('89999999-46', 'Agencia de Publ Creas', 2014, 'Hern�n Rojas'),
('89999999-47', 'Cafeter�a Delicias Caf�', 1995, 'Sandra L�pez'),
('89999999-48', 'Restaurante Sabor y i�n', 1991, 'Juan P�rez'),
('99999999-49', 'Constructora Innovaciras', 1999, 'Mar�a Mart�nez'),
('8999999-50', 'Estudio de Dise�o Dise�vo', 2006, 'Carlos Rodr�guez');


--tipos automotores

insert into tipos_automotores values (1, 'Autom�viles'),
(2, 'Motocicletas'),
(3, 'Camiones'),
(4, 'Furgonetas'),
(5, 'Autobuses'),
(6, 'Tractores'),
(7, 'Barcos'),
(8, 'Bicicletas'),
(9, 'Ciclomotores'),
(10, 'Trenes'),
(11, 'Aviones'),
(12, 'Helic�pteros'),
(13, 'Yates'),
(14, 'Canoas'),
(15, 'Veleros'),
(16, 'Scooters'),
(17, 'Motos de Agua'),
(18, 'Caravanas'),
(19, 'Cuatrimotos'),
(20, 'Monopatines'),
(21, 'Triciclos'),
(22, 'Camionetas'),
(23, 'Taxis'),
(24, 'Veh�culos El�ctricos'),
(25, 'Veh�culos H�bridos'),
(26, 'Veh�culos a Gas'),
(27, 'Veh�culos a Di�sel'),
(28, 'Veh�culos de Gasolina'),
(29, 'Veh�culos de Carreras'),
(30, 'Veh�culos de Rescate'),
(31, 'Veh�culos de Construcci�n'),
(32, 'Veh�culos Militares'),
(33, 'Veh�culos de Lujo'),
(34, 'Veh�culos Cl�sicos'),
(35, 'Veh�culos Deportivos'),
(36, 'Veh�culos Todoterreno'),
(37, 'Veh�culos Utilitarios'),
(38, 'Veh�culos Compactos'),
(39, 'Veh�culos de Pasajeros'),
(40, 'Veh�culos de Carga'),
(41, 'Veh�culos de Reparto'),
(42, 'Veh�culos de Emergencia'),
(43, 'Veh�culos de Servicio'),
(44, 'Veh�culos de Limpieza'),
(45, 'Veh�culos Agr�colas'),
(46, 'Veh�culos de Miner�a'),
(47, 'Veh�culos de Transporte'),
(48, 'Veh�culos de Alquiler'),
(49, 'Veh�culos de Comida'),
(50, 'Veh�culos de Mensajer�a');


--automotores


insert into automotores values ('FLL420', 'Chevrolet Corsa', 1, 2003, 5, 1400, 'wywzzz167kk009d25'),
('ABC123', 'Ford Fiesta', 2, 2010, 3, 1200, 'xyzabc123de456fgh'),
('XYZ789', 'Toyota Camry', 3, 2015, 4, 2500, 'uvwxyz789ab123cd'),
('JKL456', 'Honda Civic', 4, 2018, 4, 1800, 'lmnopq456fg789rs'),
('MNO789', 'Nissan Sentra', 5, 2012, 4, 1600, 'mnopqr789hi123tu'),
('PQR123', 'Volkswagen Golf', 6, 2019, 3, 1400, 'rstuvw123jkl456mn'),
('STU46', 'Kia Sportage', 7, 2014, 5, 2000, 'opqrst456ab789cd'),
('VWX789', 'Mazda CX-5', 8, 2017, 4, 2200, 'efghij789pq123kl'),
('YZA123', 'Hyundai Sonata', 9, 2016, 4, 2400, 'yzabc123cd456ef'),
('BCD456', 'Chevrolet Malibu', 10, 2013, 4, 2300, 'klmno456gh789pq'),
('CDE789', 'Ford Focus', 11, 2020, 5, 1600, 'cdefgh789rs123tu'),
('EFG123', 'Toyota Corolla', 12, 2011, 4, 1800, 'vwx123ab456ij'),
('GHI456', 'Honda Accord', 13, 2014, 4, 2400, 'klmn456ef789op'),
('IJK789', 'Nissan Altima', 14, 2017, 4, 2200, 'stu789pq123uv'),
('KLM123', 'Volkswagen Passat', 15, 2018, 5, 2000, 'vwx123klmno456'),
('MNO456', 'Kia Rio', 16, 2015, 5, 1300, 'efgh123opqrstu'),
('OPQ789', 'Mazda3', 17, 2019, 4, 1500, 'opqr789jkl123mn'),
('QRS123', 'Hyundai Elantra', 18, 2016, 4, 1600, 'ghij123klmnopqrs'),
('STU456', 'Chevrolet Spark', 19, 2021, 5, 1000, 'klmn456vwx789op'),
('UVW789', 'Ford Mustang', 20, 2012, 2, 5000, 'vwx789yz123ab'),
('VWX123', 'Toyota RAV4', 21, 2013, 4, 2500, 'yz123cdefg456hi'),
('XYZ456', 'Honda CR-V', 22, 2010, 5, 2200, 'cdefghijk789lmno'),
('YZA789', 'Nissan Rogue', 23, 2018, 4, 2000, 'mnopqrs123tu456'),
('BCD123', 'Volkswagen Tiguan', 24, 2017, 4, 1800, 'klmnopqr789stuv'),
('CDE456', 'Kia Sorento', 25, 2014, 5, 2400, 'opqrstu123vwx789'),
('EFG789', 'Mazda CX-9', 26, 2015, 4, 2300, 'vwx789yza123bcd'),
('GHI123', 'Hyundai Tucson', 27, 2016, 4, 1600, 'yzabc123def456gh'),
('IJK456', 'Chevrolet Equinox', 28, 2020, 5, 2000, 'ijklmnopqrstu789'),
('KLM789', 'Ford Escape', 29, 2011, 4, 1800, 'klmnopqrstu123vwx'),
('MNO123', 'Toyota Highlander', 30, 2013, 4, 2400, 'opqrstu123vwx789'),
('OPQ456', 'Honda Pilot', 31, 2012, 5, 2500, 'rstu123vwx789yza'),
('QRS789', 'Nissan Pathfinder', 32, 2017, 4, 2200, 'vwx789yza123bcd'),
('STU123', 'Volkswagen Atlas', 33, 2015, 5, 2400, 'yz123cdefgh456ij'),
('UVW456', 'Mazda CX-30', 34, 2021, 4, 2200, 'cdefghijk789klmn'),
('VWp789', 'Hyundai Kona', 35, 2019, 4, 1700, 'mnopqrs123rstu456'),
('XYZ123', 'Ford Explorer', 36, 2014, 5, 3000, 'klmnopqrstu789vwx'),
('YZA456', 'Kia Telluride', 37, 2018, 5, 3500, 'wxyz123cdefg456'),
('BCD789', 'Chevrolet Tahoe', 38, 2016, 5, 5300, 'abcdefg123hijk789'),
('CDE123', 'Toyota 4Runner', 39, 2020, 5, 4000, 'klmnopq123rstu456'),
('EFG456', 'Nissan Armada', 40, 2017, 5, 5200, 'efghijk789klmnop'),
('GHI789', 'Mazda CX-9', 41, 2019, 4, 2300, 'qrstuvw123xyzabc'),
('IJK123', 'Honda Odyssey', 42, 2015, 4, 3500, 'klmnopqrstu789vwx'),
('KLM456', 'Hyundai Palisade', 43, 2020, 5, 3800, 'yz123cdefg456hi'),
('MNO786', 'Chevrolet Suburban', 44, 2014, 5, 5300, 'cdefghijk789klmn'),
('OPQ123', 'Toyota Sienna', 45, 2018, 4, 3500, 'opqrstu123rstu456'),
('QRS456', 'Nissan Quest', 46, 2019, 4, 3300, 'klmnopqrstu789vwx'),
('STU789', 'Volkswagen Grand Caravan', 47, 2013, 5, 3700, 'opqrst123uvwx789'),
('UV1123', 'Kia Sedona', 48, 2012, 5, 3600, 'rstu789xyzabc123'),
('VWX256', 'Mazda5', 49, 2016, 4, 2300, 'yzabc123defg456'),
('XYZ719', 'Toyota Yaris', 50, 2017, 5, 1500, 'defghijk789klmnop');

---aseguramientos


insert into aseguramientos values 
('2012-09-30','2013-09-30', 30000000,'Vigente', 500000 ,'FLL420'),
('2013-10-01','2014-10-01', 31000000,'Vigente', 510000 ,'ABC123'),
('2014-10-02','2015-10-02', 32000000,'Vigente', 520000 ,'XYZ789'),
('2015-10-03','2016-10-03', 33000000,'Vigente', 530000 ,'JKL456'),
('2016-10-04','2017-10-04', 34000000,'Vigente', 540000 ,'MNO789'),
('2017-10-05','2018-10-05', 35000000,'Vigente', 550000 ,'PQR123'),
('2018-10-06','2019-10-06', 36000000,'Vigente', 560000 ,'STU46'),
('2019-10-07','2020-10-07', 37000000,'Vigente', 570000 ,'VWX789'),
('2020-10-08','2021-10-08', 38000000,'Vigente', 580000 ,'YZA123'),
('2021-10-09','2022-10-09', 39000000,'Vigente', 590000 ,'BCD456'),
('2022-10-10','2023-10-10', 40000000,'Vigente', 600000 ,'CDE789'),
('2023-10-11','2024-10-11', 41000000,'Vigente', 610000 ,'EFG123'),
('2024-10-12','2025-10-12', 42000000,'Vigente', 620000 ,'GHI456'),
('2025-10-13','2026-10-13', 43000000,'Vigente', 630000 ,'IJK789'),
('2026-10-14','2027-10-14', 44000000,'Vigente', 640000 ,'KLM123'),
('2027-10-15','2028-10-15', 45000000,'Vigente', 650000 ,'MNO456'),
('2028-10-16','2029-10-16', 46000000,'Vigente', 660000 ,'OPQ789'),
('2029-10-17','2030-10-17', 47000000,'Vigente', 670000 ,'QRS123'),
('2030-10-18','2031-10-18', 48000000,'Vigente', 680000 ,'STU456'),
('2031-10-19','2032-10-19', 49000000,'Vigente', 690000 ,'UVW789'),
('2032-10-20','2033-10-20', 50000000,'Vigente', 700000 ,'VWX123'),
('2033-10-21','2034-10-21', 51000000,'Vigente', 710000 ,'XYZ456'),
('2034-10-22','2035-10-22', 52000000,'Vigente', 720000 ,'YZA789'),
('2035-10-23','2036-10-23', 53000000,'Vigente', 730000 ,'BCD123'),
('2036-10-24','2037-10-24', 54000000,'Vigente', 740000 ,'CDE456'),
('2037-10-25','2038-10-25', 55000000,'Vigente', 750000 ,'EFG789'),
('2038-10-26','2039-10-26', 56000000,'Vigente', 760000 ,'GHI123'),
('2039-10-27','2040-10-27', 57000000,'Vigente', 770000 ,'IJK456'),
('2040-10-28','2041-10-28', 58000000,'Vigente', 780000 ,'KLM789'),
('2041-10-29','2042-10-29', 59000000,'Vigente', 790000 ,'MNO123'),
('2042-10-30','2043-10-30', 60000000,'Vigente', 800000 ,'OPQ456'),
('2043-10-31','2044-10-31', 61000000,'Vigente', 810000 ,'QRS789'),
('2044-11-01','2045-11-01', 62000000,'Vigente', 820000 ,'STU123'),
('2045-11-02','2046-11-02', 63000000,'Vigente', 830000 ,'UVW456'),
('2046-11-03','2047-11-03', 64000000,'Vigente', 840000 ,'VWp789'),
('2047-11-04','2048-11-04', 65000000,'Vigente', 850000 ,'XYZ123'),
('2048-11-05','2049-11-05', 66000000,'Vigente', 860000 ,'YZA456'),
('2049-11-06','2050-11-06', 67000000,'Vigente', 870000 ,'BCD789'),
('2050-11-07','2051-11-07', 68000000,'Vigente', 880000 ,'CDE123'),
('2051-11-08','2052-11-08', 69000000,'Vigente', 890000 ,'EFG456'),
('2052-11-09','2053-11-09', 70000000,'Vigente', 900000 ,'GHI789'),
('2053-11-10','2054-11-10', 71000000,'Vigente', 910000 ,'IJK123'),
('2054-11-11','2055-11-11', 72000000,'Vigente', 920000 ,'KLM456'),
('2055-11-12','2056-11-12', 73000000,'Vigente', 930000 ,'MNO786'),
('2056-11-13','2057-11-13', 74000000,'Vigente', 940000 ,'OPQ123'),
('2057-11-14','2058-11-14', 75000000,'Vigente', 950000 ,'QRS456'),
('2058-11-15','2059-11-15', 76000000,'Vigente', 960000 ,'STU789'),
('2059-11-16','2060-11-16', 77000000,'Vigente', 970000 ,'UV1123'),
('2060-11-17','2061-11-17', 78000000,'Vigente', 980000 ,'VWX256'),
('2061-11-18','2062-11-18', 79000000,'Vigente', 990000 ,'XYZ719');

---incidentes

insert into incidentes values
('2012-09-30', 'FLL420', 'Medellin', 1, 2, 2),
('2012-09-30', 'ABC123', 'Cali', 3, 1, 2),
('2012-09-30', 'XYZ789', 'Bogot�', 0, 4, 2),
('2012-09-30', 'JKL456', 'Bucaramanga', 2, 3, 2),
('2012-09-30', 'MNO789', 'Cartagena', 1, 2, 2),
('2012-09-30', 'PQR123', 'Santa Marta', 4, 1, 2),
('2012-09-30', 'STU46', 'Barranquilla', 2, 3, 2),
('2012-09-30', 'VWX789', 'Villavicencio', 0, 4, 2),
('2012-09-30', 'YZA123', 'Pereira', 3, 1, 2),
('2012-09-30', 'BCD456', 'Manizales', 1, 2, 2),
('2012-09-30', 'CDE789', 'Armenia', 2, 3, 2),
('2012-09-30', 'EFG123', 'Ibague', 4, 1, 2),
('2012-09-30', 'GHI456', 'Neiva', 0, 4, 2),
('2012-09-30', 'IJK789', 'Tunja', 3, 1, 2),
('2012-09-30', 'KLM123', 'Popayan', 1, 2, 2),
('2012-09-30', 'MNO456', 'Pasto', 2, 3, 2),
('2012-09-30', 'OPQ789', 'Riohacha', 4, 1, 2),
('2012-09-30', 'QRS123', 'Quibdo', 0, 4, 2),
('2012-09-30', 'STU456', 'Mit�', 3, 1, 2),
('2012-09-30', 'UVW789', 'Puerto Carre�o', 1, 2, 2),
('2012-09-30', 'VWX123', 'Arauca', 2, 3, 2),
('2012-09-30', 'XYZ456', 'Cucuta', 4, 1, 2),
('2012-09-30', 'YZA789', 'San Jose', 0, 4, 2),
('2012-09-30', 'BCD123', 'La Paz', 3, 1, 2),
('2012-09-30', 'CDE456', 'Asuncion', 1, 2, 2),
('2012-09-30', 'EFG789', 'Montevideo', 2, 3, 2),
('2012-09-30', 'GHI123', 'Buenos Aires', 4, 1, 2),
('2012-09-30', 'IJK456', 'Santiago', 0, 4, 2),
('2012-09-30', 'KLM789', 'Lima', 3, 1, 2),
('2012-09-30', 'MNO123', 'Quito', 1, 2, 2),
('2012-09-30', 'OPQ456', 'Bogota', 2, 3, 2),
('2012-09-30', 'QRS789', 'Panama', 4, 1, 2),
('2012-09-30', 'STU123', 'Belize City', 0, 4, 2),
('2012-09-30', 'UVW456', 'Guatemala City', 3, 1, 2),
('2012-09-30', 'VWp789', 'Tegucigalpa', 1, 2, 2),
('2012-09-30', 'XYZ123', 'San Salvador', 2, 3, 2),
('2012-09-30', 'YZA456', 'Managua', 4, 1, 2),
('2012-09-30', 'BCD789', 'San Jose', 0, 4, 2),
('2012-09-30', 'CDE123', 'San Pedro Sula', 3, 1, 2),
('2012-09-30', 'EFG456', 'Tegucigalpa', 1, 2, 2),
('2012-09-30', 'GHI789', 'Belize City', 2, 3, 2),
('2012-09-30', 'IJK123', 'San Salvador', 4, 1, 2),
('2012-09-30', 'KLM456', 'Managua', 0, 4, 2),
('2012-09-30', 'MNO786', 'Bogota', 3, 1, 2),
('2012-09-30', 'OPQ123', 'Caracas', 1, 2, 2),
('2012-09-30', 'QRS456', 'Georgetown', 2, 3, 2),
('2012-09-30', 'STU789', 'Paramaribo', 4, 1, 2),
('2012-09-30', 'UV1123', 'Cayenne', 0, 4, 2),
('2012-09-30', 'VWX256', 'Brasilia', 3, 1, 2),
('2012-09-30', 'XYZ719', 'Buenos Aires', 1, 2, 2);



--5 procedimientos

--Visualizar los clientes que cumplen a�os seg�n un mes ingresado por par�metros

CREATE PROc MesCumple
    @MesCumCli VARCHAR(10)
AS
BEGIN
    SELECT *
    FROM cliente
    WHERE MONTH(FechaNacimiento) = MONTH(GETDATE())  
      AND @MesCumCli = DATENAME(MONTH, FechaNacimiento);
END


EXEC MesCumple @MesCumCli = 'Enero';


select*from cliente



--Visualizar el nombre del cliente, la fecha y el valor seg�n id del cliente ingresado.{


-- Create the stored procedure
CREATE PROCEDURE infocli
    @client_id varchar(18)
AS
BEGIN
    SELECT c.nom_cli AS "Nombre del Cliente",
           i.inicifecha AS "Fecha del Incidente",
           val.valor AS "Valor"
    FROM cliente c
    INNER JOIN incidentes i ON c.id_cli = i.id_cli
    INNER JOIN [values] val ON c.id_cli = val.id_cli
    WHERE c.id_cli = @client_id;
END;


EXEC infocli @client_id = '63502751';

---. Visualizar los datos de las empresas fundadas seg�n a�o ingresado.


CREATE PROC a�ofun
    @funa�o int
AS
BEGIN
    SELECT comnit AS "NIT",
           comnombre AS "Nombre",
           coma�ofun AS "A�o de Fundaci�n",
           comreplegal AS "Representante Legal"
    FROM compa�ia
    WHERE coma�ofun = @funa�o;
END;

EXEC a�ofun  2020;

------------Visualizar los datos de la empresa seg�n nit ingresado


CREATE PROCEDURE nitcom
    @comp_nit varchar(11)
AS
BEGIN
    SELECT comnit AS "NIT",
           comnombre AS "Nombre",
           coma�ofun AS "A�o de Fundaci�n",
           comreplegal AS "Representante Legal"
    FROM compa�ia
    WHERE comnit = @comp_nit;
END;


EXEC nitcom  '12345678901';

---v. Visualizar los pedidos que se han realizado seg�n id de articulo ingresado, el
--listado debe mostrar el nombre y direcci�n del cliente, el respectivo n�mero de
--pedido y la cantidad solicitada.

CREATE PROC visualizarPedido
    @art_id int 
AS
BEGIN
    SELECT c.nom_cli AS "Nombre del Cliente",
           c.dir_cli AS "Direcci�n del Cliente",
           p.ide_pedido AS "N�mero de Pedido",
           ap.cant_art_artped AS "Cantidad Solicitada"
    FROM ArticuloxPedido ap
    INNER JOIN pedido p ON ap.ide_ped_artped = p.ide_pedido
    INNER JOIN cliente c ON p.ide_cli_ped = c.id_cli
    WHERE ap.ide_art_artped = @art_id;
END;


EXEC visualizarPedido @art_id = 1;
