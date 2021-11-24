----Historial de seguimientos por cada administrativo de la institución.----
select
CONCAT(public.director_orfanato.director_nombre,' ',public.director_orfanato.director_apellido) AS nombre_director,
CONCAT(public.cuidadores.cuidadores_nombres,' ',public.cuidadores.cuidadores_apellidos) AS nombre_huerfano,
public.orfanato.orfanato_direccion,
CONCAT(public.huerfano.huerfano_nombre,' ',public.huerfano.huerfano_apellido) AS nombre_cuidador,
public.huerfano.huerfano_fecha_ingreso,
public.grupo_asigacion.ga_fecha
from
padres_adoptivos inner join asignacion_adopcion 
on padres_adoptivos.adoptante_id = asignacion_adopcion.adoptante_id
inner join huerfano on huerfano.huerfano_id = asignacion_adopcion.huerfano_id
inner join grupo_asigacion on huerfano.huerfano_id = grupo_asigacion.huerfano_id
inner join grupo on grupo.grupo_id = grupo_asigacion.grupo_id
inner join orfanato on orfanato.orfanato_id = grupo.orfanato_id
inner join cuidadores on cuidadores.cuidadores_id =grupo.cuidadores_id
inner join director_orfanato on director_orfanato.orfanato_id = orfanato.orfanato_id