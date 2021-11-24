----Historial de entrada de los huerfanos al orfanato y entrada de los posibles padres adoptivos.----
SELECT 
  huerfano.huerfano_nombre, 
  huerfano.huerfano_apellido, 
  asignacion_adopcion.asignacionadop_fecha
FROM 
  public.huerfano
INNER JOIN public.asignacion_adopcion ON huerfano.huerfano_id = asignacion_adopcion.huerfano_id;


SELECT 
  huerfano.huerfano_nombre, 
  huerfano.huerfano_apellido, 
  grupo_asigacion.ga_fecha as fecha_entrada
FROM 
  public.huerfano
INNER JOIN public.grupo_asigacion ON huerfano.huerfano_id = grupo_asigacion.huerfano_id;