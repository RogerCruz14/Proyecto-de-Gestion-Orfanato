-----------------TRIGGER que impida que un tío sea asignado a más de 10 niños en el mismo año-----------------
CREATE OR REPLACE FUNCTION tg_maximo() RETURNS TRIGGER AS $tg_maximo$

  DECLARE
	acumTemporario int;
	maximo int = 10;	
  BEGIN
 	select count(grupo_id) into acumTemporario from grupo_asigacion where grupo_id = new.grupo_id
	group by(grupo_asigacion.grupo_id); 
	if(acumTemporario >= maximo) then
		RAISE EXCEPTION 'No se permite mas de 10 huerfano por cuidador';
	END if;
   RETURN new;
  END;
$tg_maximo$ 
LANGUAGE plpgsql;

--Trigger
CREATE TRIGGER tg_maximo BEFORE INSERT
    ON grupo_asigacion FOR EACH ROW 
    EXECUTE PROCEDURE tg_maximo();

--Prueba de Insercion
insert into huerfano values('6','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');
insert into grupo_asigacion values(14,1,'6','1998-06-30');
