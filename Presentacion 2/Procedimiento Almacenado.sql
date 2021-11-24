----Crear un PROCEDIMIENTO ALMACENADO donde se ingresa el nombre del niño y que le salga de resultado la cedula----
----y el nombre del visitante que considere como opción en el proceso de adopción.----

create or replace function niño(varchar(40))
returns text
as
$$
declare 
	rec alias for $1;
	reco record;
	huerfa cursor for select
		huerfano_cedula, 
		huerfano_nombre, 
		adoptante_nombres
	FROM 
		asignacion_adopcion
		inner join huerfano on huerfano.huerfano_id = asignacion_adopcion.huerfano_id
		inner join padres_adoptivos on padres_adoptivos.adoptante_id = asignacion_adopcion.adoptante_id
	WHERE 
		huerfano_cedula = $1;
	begin
		open huerfa;
		fetch huerfa into reco;
		raise notice
			'Huerfano: %', reco.huerfano_cedula;
		while (found) loop
			raise notice'Nombre Huerfano: % Nombre Familia: %', reco.huerfano_nombre, reco.adoptante_nombres;
		fetch huerfa into reco;
		end loop;	
	end;
	
$$
language plpgsql;


--Insert de consulta
select niño('1309108395');