create database DB_API_DATOS

GO

use DB_API_DATOS

GO

CREATE TABLE USUARIO(
	ID_U VARCHAR(15) PRIMARY KEY ,
	nombre_U VARCHAR(80) NOT NULL ,
	telefono_U  VARCHAR(60) NOT NULL,
	correo_U VARCHAR(40) NOT NULL,
	ciudad_U VARCHAR(60) NOT NULL,
	fecha_ingreso_U	DATETIME DEFAULT GETDATE()
	);

GO

INSERT INTO USUARIO (ID_U,nombre_U,telefono_U,correo_U,ciudad_U,fecha_ingreso_U) VALUES 

	('1','NOMBRE1','3104502566','CORREO1','CIUDAD1'),
	('2','NOMBRE2','3124205870','CORREO2','CIUDAD2'),
	('3','NOMBRE3','3207804562','CORREO3','CIUDAD3'),
	('4','NOMBRE4','3218907540','CORREO4','CIUDAD4'),
	('5','NOMBRE5','3102245170','CORREO5','CIUDAD5');


GO

CREATE PROCEDURE USP_Registrar(
@ID_U VARCHAR(15),
@NOMBRE VARCHAR(80),
@TELEFONO VARCHAR(60),
@CORREO VARCHAR(40),
@CIUDAD VARCHAR(60)
)
AS
BEGIN
INSERT INTO USUARIO (ID_U,nombre_U,telefono_U,correo_U,ciudad_U) VALUES (@ID_U,@NOMBRE,@TELEFONO,@CORREO,@CIUDAD)
END

GO

CREATE PROCEDURE USP_Actualizar(
@ID_U VARCHAR(15),
@NOMBRE VARCHAR(80),
@TELEFONO VARCHAR(60),
@CORREO VARCHAR(40),
@CIUDAD VARCHAR(60)
)
AS
BEGIN
UPDATE USUARIO SET 
nombre_U = @ID_U ,
telefono_U = @TELEFONO ,
correo_U = @CORREO ,
ciudad_U = @CIUDAD 
WHERE @ID_U = ID_U

END

GO

CREATE PROCEDURE USP_Eliminar(
@ID_U VARCHAR(15)
)
AS
BEGIN

DELETE FROM USUARIO WHERE ID_U = @ID_U

END

GO


CREATE PROCEDURE USP_Buscar(
@ID_U VARCHAR(15)
)
AS
BEGIN
SELECT * FROM USUARIO WHERE ID_U = @ID_U

END

GO
CREATE PROCEDURE USP_Listar(
@ID_U VARCHAR(15)
)
AS
BEGIN
SELECT * FROM USUARIO 

END
