----Un CURSOR que muestre el nombre, el apellido y cedula del huérfano que haya sido atendido por cada uno de los doctores.----
do 
	$$
	DECLARE 
		datos RECORD;
		huer_datos cursor for SELECT 
		  doctor.doctor_nombre, 
		  huerfano.huerfano_nombre, 
	 	  huerfano.huerfano_apellido, 
		  huerfano.huerfano_cedula
		FROM 
		  public.doctor
		  inner join public.doctor_asignacion on doctor.doctor_id = doctor_asignacion.doctor_id
		  inner join public.huerfano on huerfano.huerfano_id = doctor_asignacion.huerfano_id;
	BEGIN	
		OPEN huer_datos;
		FETCh huer_datos INTO datos;
		while (found) loop 
		RAISE NOTICE 
		'
		Nombre del Doctor: % 
		Nombre del huerfano: % 
		Apellido del huerfano: % 
		Cedula del huerfano: % 
		',
		datos.doctor_nombre, datos.huerfano_nombre, datos.huerfano_apellido, datos.huerfano_cedula;
		FETCh huer_datos INTO datos;
	end loop;	
end $$
Language 'plpgsql';