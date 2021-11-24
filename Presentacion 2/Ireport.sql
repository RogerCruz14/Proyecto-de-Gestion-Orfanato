----IREPORT que muestre un diagrama en barra el historico----
----de ingreso de nimos por año al orfanato.----

SELECT 
  COUNT(grupo_asigacion.huerfano_id), 
  grupo_asigacion.ga_fecha
FROM 
  public.grupo_asigacion GROUP BY (grupo_asigacion.ga_fecha);
