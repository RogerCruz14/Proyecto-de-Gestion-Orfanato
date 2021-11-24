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

-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: ESTADO_ACTIVIDAD                                      */
/*==============================================================*/
create table ESTADO_ACTIVIDAD (
ESTADOACTI_ID        INT2                 not null,
ESTADOACTI_DESCRIPCION VARCHAR(100)         null,
constraint PK_ESTADO_ACTIVIDAD primary key (ESTADOACTI_ID)
);

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

-------------------------------------------------------------------------------------------------------------------------------
/*==============================================================*/
/* Table: TIPO_ACTIVIDAD                                        */
/*==============================================================*/
create table TIPO_ACTIVIDAD (
ACTIVIDAD_ID         INT2                 not null,
ACTIVIDAD_DESCRIPCION VARCHAR(100)         null,
constraint PK_TIPO_ACTIVIDAD primary key (ACTIVIDAD_ID)
);

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

