alter table ACTIVIDAD_ASIGNACION
   add constraint FK_ACTIVIDA_RELATIONS_GRUPO foreign key (GRUPO_ID)
      references GRUPO (GRUPO_ID)
      on delete restrict on update restrict;

alter table ACTIVIDAD_ASIGNACION
   add constraint FK_ACTIVIDA_RELATIONS_TIPO_ACT foreign key (ACTIVIDAD_ID)
      references TIPO_ACTIVIDAD (ACTIVIDAD_ID)
      on delete restrict on update restrict;

alter table ACTIVIDAD_ASIGNACION
   add constraint FK_ACTIVIDA_RELATIONS_ESTADO_A foreign key (ESTADOACTI_ID)
      references ESTADO_ACTIVIDAD (ESTADOACTI_ID)
      on delete restrict on update restrict;

alter table ASIGNACION_ADOPCION
   add constraint FK_ASIGNACI_RELATIONS_HUERFANO foreign key (HUERFANO_ID)
      references HUERFANO (HUERFANO_ID)
      on delete restrict on update restrict;

alter table ASIGNACION_ADOPCION
   add constraint FK_ASIGNACI_RELATIONS_PADRES_A foreign key (ADOPTANTE_ID)
      references PADRES_ADOPTIVOS (ADOPTANTE_ID)
      on delete restrict on update restrict;

alter table DIRECTOR_ORFANATO
   add constraint FK_DIRECTOR_RELATIONS_ORFANATO foreign key (ORFANATO_ID)
      references ORFANATO (ORFANATO_ID)
      on delete restrict on update restrict;

alter table DOCTOR_ASIGNACION
   add constraint FK_DOCTOR_A_MODELO_CO_DOCTOR foreign key (DOCTOR_ID)
      references DOCTOR (DOCTOR_ID)
      on delete restrict on update restrict;

alter table DOCTOR_ASIGNACION
   add constraint FK_DOCTOR_A_RELATIONS_HUERFANO foreign key (HUERFANO_ID)
      references HUERFANO (HUERFANO_ID)
      on delete restrict on update restrict;

alter table ESTIP_MENSUAL
   add constraint FK_ESTIP_ME_RELATIONS_HUERFANO foreign key (HUERFANO_ID)
      references HUERFANO (HUERFANO_ID)
      on delete restrict on update restrict;

alter table GRUPO
   add constraint FK_GRUPO_RELATIONS_ORFANATO foreign key (ORFANATO_ID)
      references ORFANATO (ORFANATO_ID)
      on delete restrict on update restrict;

alter table GRUPO
   add constraint FK_GRUPO_RELATIONS_CUIDADOR foreign key (CUIDADORES_ID)
      references CUIDADORES (CUIDADORES_ID)
      on delete restrict on update restrict;

alter table GRUPO_ASIGACION
   add constraint FK_GRUPO_AS_GRUPO_HUERFANO foreign key (HUERFANO_ID)
      references HUERFANO (HUERFANO_ID)
      on delete restrict on update restrict;

alter table GRUPO_ASIGACION
   add constraint FK_GRUPO_AS_RELATIONS_GRUPO foreign key (GRUPO_ID)
      references GRUPO (GRUPO_ID)
      on delete restrict on update restrict;

alter table TRATAMIENTO
   add constraint FK_TRATAMIE_RELATIONS_DOCTOR_A foreign key (DOC_ASIG_ID)
      references DOCTOR_ASIGNACION (DOC_ASIG_ID)
      on delete restrict on update restrict;

