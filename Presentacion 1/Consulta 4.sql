----Historial del tipo de tratamiento que recibieron los niños por fecha, el doctor y la razón por la cual recibió dicho tratamiento.----
SELECT 
  CONCAT(huerfano.huerfano_nombre,' ',huerfano.huerfano_apellido) AS nombre_huerfano,
  doctor_asignacion.doc_asig_fecha, 
  tratamiento.tratamiento_descripcion, 
  tratamiento.tratamiento_razon, 
  CONCAT(doctor.doctor_nombre,' ',doctor.doctor_apellido) AS nombre_doctor
FROM 
  public.huerfano
  INNER JOIN public.doctor_asignacion ON huerfano.huerfano_id = doctor_asignacion.huerfano_id
  INNER JOIN public.tratamiento ON doctor_asignacion.doc_asig_id = tratamiento.doc_asig_id
  INNER JOIN public.doctor ON doctor.doctor_id = doctor_asignacion.doctor_id  
ORDER BY doctor_asignacion.doc_asig_fecha ASC;
