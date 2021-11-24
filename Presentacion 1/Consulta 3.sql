----Historial de gastos por día de los niños en el orfanato de acuerdo con su género y la cantidad de cada uno de ellos.----
SELECT 
  SUM(estip_mensual.estipendio_mesada) as gasto_dia, 
  COUNT(huerfano.huerfano_id) AS cantidad_niños,
  huerfano.huerfano_genero
FROM 
  public.huerfano
  INNER JOIN public.estip_mensual ON huerfano.huerfano_id = estip_mensual.huerfano_id
Group by (huerfano.huerfano_genero)