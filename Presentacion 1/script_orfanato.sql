/*==============================================================*/
/* Table: ACTIVIDAD_ASIGNACION                                  */
/*==============================================================*/
create table ACTIVIDAD_ASIGNACION (
ACASIG_ID            INT2                 not null,
GRUPO_ID             INT2                 not null,
ACTIVIDAD_ID         INT2                 not null,
ESTADOACTI_ID        INT2                 not null,
ACASIG_FECHA         DATE                 null,
constraint PK_ACTIVIDAD_ASIGNACION primary key (ACASIG_ID)
);
insert into actividad_asignacion values(1,1,1,1,'2010-04-18');
insert into actividad_asignacion values(2,2,2,2,'2015-03-24');
insert into actividad_asignacion values(3,3,3,3,'2018-11-23');
insert into actividad_asignacion values(4,4,4,4,'2019-02-05');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: ASIGNACION_ADOPCION                                   */
/*==============================================================*/
create table ASIGNACION_ADOPCION (
ASIGNACIONADOP_ID    INT2                 not null,
HUERFANO_ID          VARCHAR(10)          not null,
ADOPTANTE_ID         VARCHAR(10)          not null,
ASIGNACIONADOP_FECHA DATE                 null,
ASIGNACION_OBSERVACION VARCHAR(200)         null,
constraint PK_ASIGNACION_ADOPCION primary key (ASIGNACIONADOP_ID)
);
insert into asignacion_adopcion values(1,'168485','155454','2018-07-15','Fueron a observar al huerfano y jugaron con y se conocieron');
insert into asignacion_adopcion values(2,'465655','315445','2019-05-10','Fueron a ver a los niños y a charlar');
insert into asignacion_adopcion values(3,'546561','324352','2020-10-08','Fueron a ver a las personas para su adopció');
insert into asignacion_adopcion values(4,'563142','510656','2020-07-11','Fueron a observar al niño y charlaron un poco');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: CUIDADORES                                            */
/*==============================================================*/
create table CUIDADORES (
CUIDADORES_ID        VARCHAR(10)          not null,
CUIDADORES_CEDULA    VARCHAR(10)          null,
CUIDADORES_NOMBRES   VARCHAR(15)          null,
CUIDADORES_APELLIDOS VARCHAR(15)          null,
CUIDADORES_TELEFONO  VARCHAR(10)          null,
CUIDADORES_CORREO    VARCHAR(25)          null,
constraint PK_CUIDADORES primary key (CUIDADORES_ID)
);
insert into cuidadores values('156985456','1706172648','Alejandro','Acevedo','0963251478','zarlengod@gmail.com');
insert into cuidadores values('323111541','1306860105','Diego','Peña','0978365241','bongden987@gmail.com');
insert into cuidadores values('463235782','0601646623','Carlos','Contreras','0958741656','patrick.animus@gmail.com');
insert into cuidadores values('499720807','1303753618','Adriana','Monterroza','0980757606','mp41510@gmail.com');
insert into cuidadores values('654412122','0100967652','Andrea','Acero','0978254963','andersonasantos@gmail.com');
insert into cuidadores values('855111556','1715241434','Camilo','Montejo','0914782365','maggiebit@gmail.com');
insert into cuidadores values('875444366','1704997012','Angela','Piñeros','0954826178','bloodsik@gmail.com');
insert into cuidadores values('889233416','1103201461','Carol','Gianine','0945853625','austintoth@gmail.com');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: DIRECTOR_ORFANATO                                     */
/*==============================================================*/
create table DIRECTOR_ORFANATO (
DIRECTOR_ID          INT2                 not null,
ORFANATO_ID          INT2                 not null,
DIRECTOR_CEDULA      VARCHAR(10)          null,
DIRECTOR_NOMBRE      VARCHAR(15)          null,
DIRECTOR_APELLIDO    VARCHAR(15)          null,
DIRECTOR_TELEFONO    VARCHAR(10)          null,
DIRECTOR_DIRECCION   VARCHAR(40)          null,
DIRECTOR_CORREO      VARCHAR(25)          null,
constraint PK_DIRECTOR_ORFANATO primary key (DIRECTOR_ID)
);
insert into director_orfanato values(1,12,'1936521478','Sergio','Sánchez','0923649899','Av. 10 de Agosto','SergioSanche@gmail.com');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: DOCTOR                                                */
/*==============================================================*/
create table DOCTOR (
DOCTOR_ID            VARCHAR(10)          not null,
DOCTOR_CEDULA        VARCHAR(10)          null,
DOCTOR_NOMBRE        VARCHAR(15)          null,
DOCTOR_APELLIDO      VARCHAR(15)          null,
DOCTOR_TELEFONO      VARCHAR(10)          null,
DOCTOR_DIRECCION     VARCHAR(40)          null,
DOCTOR_CORREO        VARCHAR(25)          null,
constraint PK_DOCTOR primary key (DOCTOR_ID)
);
insert into doctor values('0354351235','0200982163','Gladys','Moyón','0932658945','Calle 1234 Av. 34','girgoomail@gmail.com');
insert into doctor values('1684446835','1103037048','Narcisa','Castillo','0955783621','Calle 120','silverchief07@gmail.com');
insert into doctor values('2135164652','0907446439','Zoila','Zambrano','0968686448','Calle 23 Av. 34','leiburgess@gmail.com');
insert into doctor values('4055446415','0501675946','Marco','Zambonino','0931324654','Calle 32 Av. 12','apreddyfcs@gmail.com');
insert into doctor values('4132165625','1713580221','José','Bowen','0916313535','Calle 563 Av. 6','battamatta0121@gmail.com');
insert into doctor values('5464646854','1714818299','David','Vásquez','0985231265','Calle 345 Av. 120','siesubz@gmail.com');
insert into doctor values('5466464645','1103756134','Víctor','Aguinsaca','0935626589','Calle 52 Av. 98','andan1987@gmail.com');
insert into doctor values('6543667535','0401197298','Darwin','Aguilar','0932145682','Calle 17 Av. 6','mallows15@gmail.com');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: DOCTOR_ASIGNACION                                     */
/*==============================================================*/
create table DOCTOR_ASIGNACION (
DOC_ASIG_ID          INT2                 not null,
HUERFANO_ID          VARCHAR(10)          not null,
DOCTOR_ID            VARCHAR(10)          not null,
DOC_ASIG_FECHA       DATE                 null,
DOC_DIAGNOSTICO      VARCHAR(150)         null,
DOC_SINTOMAS         VARCHAR(100)         null,
constraint PK_DOCTOR_ASIGNACION primary key (DOC_ASIG_ID)
);
insert into doctor_asignacion values(11536,'563142','4055446415','2018-10-12','Error en la realización de una cirugía, un procedimiento o una prueba','El niño no puede caminar bien y sufre de dolores constantes.');
insert into doctor_asignacion values(15132,'546561','2135164652','2019-05-08','Error en el método o la dosis de los medicamento','Padece de enfermedades constantes debido a sus defensas bajas por metodos erroneos de medicamentos.');
insert into doctor_asignacion values(15322,'565051','4132165625','2021-07-22','Seguimiento del tratamiento inadecuado','El paciente no ha tenido tratamientos adecuados para su crecimiento normal.');
insert into doctor_asignacion values(21051,'465655','1684446835','2019-12-18','Cuidado inapropiado o no indicado','Tiene problemas desorden alimenticio y otros factores');
insert into doctor_asignacion values(21458,'168485','0354351235','2018-11-17','El niño se encentra bien, solo un par de destalles a los se necesito vigilar con el tiempo.','Tiene diabetes, Esta un poco desnutrido');
insert into doctor_asignacion values(23215,'681651','5464646854','2020-05-21','Uso de de prueba terapéuticas desactualizadas','El paciente padece de lesiones musculares por tecnicas desactualizadas.');
insert into doctor_asignacion values(23598,'898899','6543667535','2021-10-21','Se encuentra en buena forma','Es muy sano igualemente hacer seguimientos para ver su evolución');
insert into doctor_asignacion values(25241,'688841','5466464645','2019-06-10','Se encuentra en buena forma es muy sano','Esta en buena forma, pero hacer seguimientos para ver su evolución.');

insert into doctor_asignacion values(1,'1','4055446415','2019-06-10','Se encuentra en buena forma es muy sano','Esta en buena forma, pero hacer seguimientos para ver su evolución.');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: ESTADO_ACTIVIDAD                                      */
/*==============================================================*/
create table ESTADO_ACTIVIDAD (
ESTADOACTI_ID        INT2                 not null,
ESTADOACTI_DESCRIPCION VARCHAR(100)         null,
constraint PK_ESTADO_ACTIVIDAD primary key (ESTADOACTI_ID)
);
insert into estado_actividad values(1,'Todos los niños juegos a las atrapadas con los tutores');
insert into estado_actividad values(2,'Todos los niños juegan al Basquetbol');
insert into estado_actividad values(3,'Todos los niños juegan al Tenis');
insert into estado_actividad values(4,'Todos los niños juegan en la piscina');
insert into estado_actividad values(5,'Se dividen entre grupos y acampan con su tutor');
insert into estado_actividad values(6,'Todos los niños van a los carruceles');
insert into estado_actividad values(7,'Los niños se preparan para jugar balonmano');
insert into estado_actividad values(8,'Los niños hacen prácticas de baile');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: ESTIP_MENSUAL                                         */
/*==============================================================*/
create table ESTIP_MENSUAL (
ESTIPENDIO_ID        VARCHAR(10)          not null,
HUERFANO_ID          VARCHAR(10)          not null,
ESTIPENDIO_MESADA    NUMERIC(3,2)         null,
ESTIPENDIO_DESCRIPCION VARCHAR(40)          null,
constraint PK_ESTIP_MENSUAL primary key (ESTIPENDIO_ID)
);
insert into estip_mensual values('115651','168485',9.99,'Por su cumpleaños');
insert into estip_mensual values('116685','681651',9.99,'Por su cumpleaños');
insert into estip_mensual values('124656','565051',9.99,'Para ir de paseo con los compañeros');
insert into estip_mensual values('135165','688841',9.99,'Para gastos de una fista');
insert into estip_mensual values('142146','546561',9.99,'Para gasto de un viaje');
insert into estip_mensual values('425454','465655',9.99,'Para gastos de una fiesta');
insert into estip_mensual values('445455','563142',9.99,'Por su cumpleaños');
insert into estip_mensual values('654651','898899',9.99,'Para gasto de un viajes');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: GRUPO                                                 */
/*==============================================================*/
create table GRUPO (
GRUPO_ID             INT2                 not null,
ORFANATO_ID          INT2                 not null,
CUIDADORES_ID        VARCHAR(10)          not null,
GRUPO_DESCRIPCION    VARCHAR(50)          null,
GRUPO_OBSERVACION    VARCHAR(50)          null,
constraint PK_GRUPO primary key (GRUPO_ID)
);
insert into grupo values(1,12,'156985456','Grupo 1 cuida a los niños','Observa a los niños y los mantiene cuidados');
insert into grupo values(2,12,'323111541','Grupo 2 cuida a las niñas','Observa a los niñas y los mantiene cuidados');
insert into grupo values(3,12,'463235782','Grupo 3 cuida a los jovenes hombres','Observan a los jovenes que no den problemas');
insert into grupo values(4,12,'499720807','Grupo 4 cuisa a los jovenes mujeres','Observan a las mujeres para su cuidado');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: GRUPO_ASIGACION                                       */
/*==============================================================*/
create table GRUPO_ASIGACION (
GA_ID                INT2                 not null,
GRUPO_ID             INT2                 not null,
HUERFANO_ID          VARCHAR(10)          not null,
GA_FECHA             DATE                 null,
constraint PK_GRUPO_ASIGACION primary key (GA_ID)
);
insert into grupo_asigacion values(1,1,'168485','1998-06-30');
insert into grupo_asigacion values(2,2,'465655','1998-06-04');
insert into grupo_asigacion values(3,3,'546561','1999-07-05');
insert into grupo_asigacion values(4,4,'563142','1999-09-15');
insert into grupo_asigacion values(5,1,'565051','1998-06-30');
insert into grupo_asigacion values(6,1,'681651','1998-06-30');
insert into grupo_asigacion values(7,1,'688841','1998-06-30');
insert into grupo_asigacion values(8,1,'898899','1998-06-30');
insert into grupo_asigacion values(9,1,'1','1998-06-30');
insert into grupo_asigacion values(10,1,'2','1998-06-30');
insert into grupo_asigacion values(11,1,'3','1998-06-30');
insert into grupo_asigacion values(12,1,'4','1998-06-30');
insert into grupo_asigacion values(13,1,'5','1998-06-30');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: HUERFANO                                              */
/*==============================================================*/
create table HUERFANO (
HUERFANO_ID          VARCHAR(10)          not null,
HUERFANO_CEDULA      VARCHAR(10)          null,
HUERFANO_NOMBRE      VARCHAR(15)          null,
HUERFANO_APELLIDO    VARCHAR(15)          null,
HUERFANO_GENERO      VARCHAR(10)          null,
HUERFANO_FECHA_NACIMIENTO DATE                 null,
HUERFANO_NACIONALIDAD VARCHAR(30)          null,
HUERFANO_FECHA_INGRESO DATE                 null,
HUERFANO_DETALLE_COMPORTAMIENTO VARCHAR(30)          null,
constraint PK_HUERFANO primary key (HUERFANO_ID)
);
insert into huerfano values('168485','0102684529','Marco','Ayora','Hombre','2009-01-20','Venezolano','2018-10-17','Bueno');
insert into huerfano values('465655','1309108395','Laura','Barreiro','Mujer','2005-08-25','Peruano','2019-11-18','Bueno');
insert into huerfano values('546561','0201338829','Katherine','Ballesteros','Mujer','2008-03-14','Ecuatoriano','2019-04-08','Bueno');
insert into huerfano values('563142','0601899396','Marcelo','Calderon','Hombre','2005-11-15','Ecuatoriano','2018-09-12','Bueno');
insert into huerfano values('565051','0104177407','María','Castro','Mujer','2006-07-16','Venezolano','2021-06-22','Bueno');
insert into huerfano values('681651','1709784613','Liz','Barrera','Mujer','2007-04-10','Peruano','2020-04-21','Bueno');
insert into huerfano values('688841','0104032610','Luis','Barahona','Hombre','2006-12-10','Ecuatoriano','2019-05-10','Bueno');
insert into huerfano values('898899','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');
insert into huerfano values('1','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');
insert into huerfano values('2','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');
insert into huerfano values('3','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');
insert into huerfano values('4','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');
insert into huerfano values('5','1713984274','Simon','Cedeño','Hombre','2009-08-18','Ecuatoriano','2021-09-21','Bueno');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: ORFANATO                                              */
/*==============================================================*/
create table ORFANATO (
ORFANATO_ID          INT2                 not null,
ORFANATO_DIRECCION   VARCHAR(40)          null,
ORFANATO_TELEFONO    VARCHAR(10)          null,
ORFANATO_CORREO      VARCHAR(25)          null,
ORFANATO_ANO         DATE                 null,
constraint PK_ORFANATO primary key (ORFANATO_ID)
);
insert into orfanato values(12,'Av.Principal Esmeraldas','0978235148','orfanaoEsme@gmail.com','1998-05-15');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: PADRES_ADOPTIVOS                                      */
/*==============================================================*/
create table PADRES_ADOPTIVOS (
ADOPTANTE_ID         VARCHAR(10)          not null,
ADOPTANTE_CEDULA     VARCHAR(10)          null,
ADOPTANTE_NOMBRES    VARCHAR(25)          null,
ADOPTANTE_APELLIDOS  VARCHAR(25)          null,
ADOPTANTE_TELEFONO   VARCHAR(10)          null,
ADOPTANTE_TEFCONVENCIONAL VARCHAR(10)          null,
ADOPTANTE_CORREO     VARCHAR(20)          null,
ADOPTANTE_DIRECCION  VARCHAR(40)          null,
constraint PK_PADRES_ADOPTIVOS primary key (ADOPTANTE_ID)
);
insert into padres_adoptivos values('155454','0700849235','Freddy','Bello','0923154789','04268-3307','mariejohan@gmail.com','Calle los Manzanos');
insert into padres_adoptivos values('315445','1400313365','Carmen','Barrera','0980757605','04268-3123','untiwar@gmail.com','Avenida 404');
insert into padres_adoptivos values('324352','1304679465','Lucitania','Betancourt','0937916458','08452-8516','vince1121@gmail.com','Calle San Pedro');
insert into padres_adoptivos values('510656','1310905904','Juan','Bermudez','0931526478','04544-4654','vasquezm@gmail.com','Via Rocafuerte');
insert into padres_adoptivos values('648655','0905805578','Miryan','Beltrán','0936251482','07582-1513','shines@gmail.com','Calle San Martin');
insert into padres_adoptivos values('656512','1801877729','Alzira','Benitez','0987264925','06845-2315','aalishaq@gmail.com','Avenida America');
insert into padres_adoptivos values('844852','1715664643','Geovanny','Borja','0908301579','03261-8542','dywaie@gmail.com','Avenida Lucis');
insert into padres_adoptivos values('846415','1102121850','Fernando','Brayanes','0922014590','08634-5461','lydiacer22@gmail.com','Calle Maldonado');

-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: TIPO_ACTIVIDAD                                        */
/*==============================================================*/
create table TIPO_ACTIVIDAD (
ACTIVIDAD_ID         INT2                 not null,
ACTIVIDAD_DESCRIPCION VARCHAR(100)         null,
constraint PK_TIPO_ACTIVIDAD primary key (ACTIVIDAD_ID)
);
insert into tipo_actividad values('1','Juego de Fútbol');
insert into tipo_actividad values('2','Basketball');
insert into tipo_actividad values('3','Juego de Tenis');
insert into tipo_actividad values('4','Salidas a la piscina');
insert into tipo_actividad values('5','Salidas a acampar');
insert into tipo_actividad values('6','Salidas a los carruceles');
insert into tipo_actividad values('7','Juego balonmano');
insert into tipo_actividad values('8','Juego de baile');


-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: TRATAMIENTO                                           */
/*==============================================================*/
create table TRATAMIENTO (
TRATAMIENTO_ID       VARCHAR(5)           not null,
DOC_ASIG_ID          INT2                 not null,
TRATAMIENTO_DESCRIPCION VARCHAR(100)         null,
TRATAMIENTO_RAZON    VARCHAR(100)         null,
constraint PK_TRATAMIENTO primary key (TRATAMIENTO_ID)
);
insert into tratamiento values('A78f2','15132','Debido al procedimiento malos de dosis de medicamento','Padece de enfermedades constantes debido a sus defensas bajas.');
insert into tratamiento values('Z90d4','15322','Sus antiguos cuidadores no siguieron un tratamiento adecuado','El paciente no ha tenido tratamientos adecuados para su crecimiento.');
insert into tratamiento values('V43p6','21051','Tuvo un cuidado inapropiado o no indicado','Tiene problemas de desorden alimenticio y con otros factores.');
insert into tratamiento values('M3yg6','21458','El paciente se encuentra no muy bien, vigilar detalles a su alimentacion','Tiene diabetes, esta un poco desnutrido.');
insert into tratamiento values('L4588','23215','Uso de las pruebas terapéuticas desactualizadas provoca daños a largo plazo','Padece de lesiones musculares por tecnicas desactualizadas.');
insert into tratamiento values('J930l','23598','El paciente se encuentra en buena forma','Es sano igualmente hacer seguimiento y ver como evoluciona');
insert into tratamiento values('F441h','25241','El paciente se encuentra en buena condición y no tiene enfermedades','Esta en muy buenas condiciones');
insert into tratamiento values('S54c1','11536','Tiene un error debido a una cirugía mal hecha en el pie','El niño no puede caminar adecuadamente.');


/*==============================================================================================================================*/

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

