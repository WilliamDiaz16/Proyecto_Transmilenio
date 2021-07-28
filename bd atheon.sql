drop database BDAtheon;

	Create database BDAtheon;
	use BDAtheon;

	create table Procesador (
	Id_procesador int primary key,
	Marca_procedador varchar (20) not null,
	Frecuencia_procesador varchar (20) not null,
	Referencia varchar (20) not null,
	Numero_nucleos int not null
	 );

	create table Teclado  (
	Id_teclado int primary key,
	Tipo_teclado	varchar (20) not null,
	Marca varchar (20) not null
	);

	create table Disco_duro  (
	Id_disco int primary key,
	Cantidad_discos varchar (20) not null,
	Capacidad_discos varchar (20) not null,
	Tipos_discos varchar (20) not null
	);

	create table Memoria_ram (
	Id_ram int primary key,
	Tipo_ram varchar (20) not null,
	Frecuencias varchar (20) not null,
	Cantidad_memoria varchar (20) not null
	);

	create table Tarjeta_m(
	Id_tarjeta int primary key,
	Tipo_placa varchar (20) not null,
	Tipo_socket varchar (20) not null
	);

	create table Monitor  (
	Id_monitor int primary key,
	Tipo_monitor varchar (20) not null,
	Tamaño_monitor varchar (20) not null,
	Resolucion varchar (30) not null

	);

	create table  Tarjeta_video (
	Id_video int primary key,
	Tipo_video varchar (20) not null,
	Marca varchar (20) not null,
	Vram varchar (20) not null
	);

	create table Tarjeta_red (
	Id_red int primary key,
	Tipo_t_red varchar (30) not null,
	Referencia varchar (30) not null,
	 Marca varchar (30) not null
	);

	create table Lector_tarjeta(
	Id_lector int primary key,
	Tipo_lector varchar (20) not null,
	Marca varchar (20) not null
	);

	create table Mouse (
	Id_mouse int primary key,
	Tipo_mouse varchar (20) not null,
	Marca varchar (30) not null
	);

	create table  Equipo  (
	Id_equipo int primary key,
	Tipo_eqipo varchar (20) not null,
	Marc_equipo varchar (20) not null,
	Modelo_equipo varchar (20) not null,
	Estado_equipo varchar (20) not null,
	Id_procesador_FK int,
	Id_teclado_FK int,
	Id_disco_FK int,
	Id_ram_FK int,
	Id_tarjeta_FK int,
	Id_monitor_FK int,
	Id_video_FK int,
	Id_red_FK int,
	Id_lector_FK int,
	Id_mouse_FK int,
    Id_hoja_vida_FK int
	);
    

	create table Hoja_vida (
	Id_hoja_vida int primary key,
	Id_test_entrada_FK int,
	Id_test_salida_FK int,
	Id_informe_FK int,
	Id_usuario_FK int,
	Id_software_FK int,
    Id_bitacora_Fk int
	);

	create table Usuario (
	Id_usuario int primary key,
	Tipo_ususario Varchar (30) not null,
	Email_ususario Varchar (40) not null,
	Telefono_usuario Varchar (30) not null
	);

	create table Test_entrada (
	Id_test_entrada int primary key,
	Fecha_ingreso  date not null,
	Tipo_de_mantenimiento Varchar (30) not null
	);

	create table Estado_software (
	Id_software int primary key,
	Tipo_software Varchar (20) not null,
	Particiones_en_disco Varchar (20) not null,
	Numero_licencia Varchar (20) not null,
	Version_software Varchar (20) not null
	);


	create table Bitacora_de_incidencias (
	Id_bitacora int primary key,
	Id_equipo_FK int,
	Fecha date,
	Incidencia Varchar (100) not null,
	Ubicacion Varchar (20) not null
	);


	create table Informe_tecnico_conectividad (
	Id_informe int primary key,
	Tipo_de_conexion_equipo Varchar (20) not null,
	Dns Varchar (20) not null,
	Adaptador_de_red Varchar (20) not null,
	Mascara_de_subred Varchar (20) not null,
	Direccion_ip Varchar (20) not null,
	Adaptador_lan Varchar (20) not null
	);

	create table Test_salida  (
	Id_test_salida int primary key,
	Fecha_ingreso date not null, 
	Fecha_salida date not null,
	Entregado Varchar (20) not null
	);


	Alter table Equipo 
	add constraint Equipo_Procesador_FK	
	foreign key (Id_procesador_fk)
	references Procesador (Id_procesador);


	Alter table Equipo
	add constraint Equipo_Teclado_FK
	foreign key (Id_teclado_fk)
	references Teclado (Id_teclado);


	Alter table Equipo 
	add constraint Equipo_Disco_duro_FK
	foreign key  (Id_disco_FK)
	references Disco_duro (Id_disco);

	Alter table Equipo
	add constraint Equipo_Memoria_ram_FK
	foreign key  (Id_ram_FK)
	references Memoria_ram (Id_ram);

	Alter table Equipo
	add constraint Equipo_Tarjeta_m_FK
	foreign key (Id_tarjeta_FK)
	references Tarjeta_m (Id_tarjeta);

	Alter table Equipo
	add constraint Equipo_Monitor_FK
	foreign key (Id_monitor_FK)
	references Monitor (Id_monitor);

	Alter table Equipo
	add constraint Equipo_Tarjeta_red_FK
	foreign key (Id_red_FK)
	references Tarjeta_red (Id_red);

	Alter table Equipo
	add constraint  Equipo_Tarjeta_video_FK
	foreign key (Id_video_FK)
	references Tarjeta_video (Id_video);

	Alter table Equipo
	add constraint Equipo_Lector_tarjeta_FK
	foreign key (Id_lector_FK)
	references Lector_tarjeta (Id_Lector);

	Alter table Equipo
	add constraint Equipo_Mouse_FK 
	foreign key (Id_mouse_fk)
	references Mouse (Id_mouse);

	Alter table Equipo
	add constraint Equipo_Hoja_vida_FK
	foreign key (Id_hoja_vida_FK)
	references Hoja_vida (Id_hoja_vida);

	----

	Alter table Hoja_vida
	add constraint Hoja_vida_Test_entrada_FK
	foreign key (Id_test_entrada_FK)
	references Test_entrada (Id_test_entrada);



	Alter table Hoja_vida
	add constraint Hoja_vida_Test_salida_FK
	foreign key (Id_test_salida_FK)
	references Test_salida (Id_test_salida);


	Alter table Hoja_vida
	add constraint Hoja_vida_Informe_tecnico_conectividad_FK
	foreign key (Id_informe_FK)
	references Informe_tecnico_conectividad (Id_informe);

	Alter table Hoja_vida
	add constraint  Hoja_vida_Usuario_FK
	foreign key  (Id_usuario_FK)
	references Usuario (Id_usuario);

	Alter table Hoja_vida
	add constraint Hoja_vida_Estado_software_FK
	foreign key (Id_software_FK)
	references Estado_software (Id_software);

	Alter table Hoja_vida
	add constraint Hoja_vida_Bitacora_de_incidencias_FK
	foreign key (Id_bitacora_FK)
	references Bitacora_de_incidencias (Id_bitacora);