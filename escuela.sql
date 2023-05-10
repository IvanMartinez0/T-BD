
CREATE TABLE `alumno` (

  `id_alum` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_alum` varchar(50) NOT NULL,
  `apellido_alum` varchar(50) NOT NULL,
  `cuil_alum` varchar(50) NOT NULL,
  `genero_alum` int(5) NOT NULL,
  `fecnac_alum` date NOT NULL,
  `correo_alum` varchar(50) NOT NULL,
  `telefono_alum` varchar(50) NOT NULL,
  `curso_alum` int(50) NOT NULL,
  `turno_alum` int(50) NOT NULL,
  `barrio_alum` int(50) NOT NULL,
  `ciudad_alum` int(50) NOT NULL,
  `calle_alum` varchar(50) NOT NULL,
  `altura_alum` varchar(50) NOT NULL,
  `manzana_alum` varchar(10) NOT NULL,
  `dpto_alum` varchar(10) NOT NULL,
  `piso_alum` varchar(10) NOT NULL,
  `codpos_alum` varchar(10) NOT NULL,
  `materia_alum`int(50) NOT NULL,
  `prov_alum`int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `barrio` (
  `id_barrio` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_barrio` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE `cargo` (
  `id_cargo` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `ciudad` (
  `id_ciudad` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `curso` (
  `id_curso` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_curso` varchar(50) NOT NULL,
  `esp_curso` int(5) NOT NULL,
  `ciclo_curso` int(5) NOT NULL,
  `aula_curso` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `nota` (
  `id_nota` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `aula` (
  `id_aula` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `numero_aula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE `provincia` (
  `id_prov` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `especialidad` (
  `id_esp` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_esp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE `horario` (
  `id_horario` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `curso_id` int(5) NOT NULL,
  `aula_id` varchar(50) NOT NULL,
  `inicio_horario` varchar(50) NOT NULL,
  `final_horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE `genero` (
  `id_genero` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_genero` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE `materia` (
  `id_materia` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_materia` varchar(255) NOT NULL,
  `nota_materia`int (50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE `personal` (
  `id_pers` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_pers` varchar(30) NOT NULL,
  `apellido_pers` varchar(30) NOT NULL,
  `cuil_pers` varchar(30) NOT NULL,
  `fecNac_pers` date NOT NULL,
  `telefono_pers` varchar(30) NOT NULL,
  `correo_pers` varchar(30) NOT NULL,
  `genero_pers` int(5) NOT NULL,
  `barrio_pers` int(50) NOT NULL,
  `calle_pers` varchar(30) NOT NULL,
  `ciudad_pers` int(50) NOT NULL,
  `codpos_pers` varchar(10) NOT NULL,
  `piso_pers` varchar(10) NOT NULL,
  `dpto_pers` varchar(11) NOT NULL,
  `cargo_pers` int(11) NOT NULL,
  `curso_pers` int(11) NOT NULL,
  `turno_pers` int(10) NOT NULL,
  `altura_pers` varchar(10) NOT NULL,
  `manzana_pers` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `turno` (
  `id_turno` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nombre_turno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


ALTER TABLE `alumno`
  ADD KEY `curso_alum` (`curso_alum`),
  ADD KEY `genero_alum` (`genero_alum`),
  ADD KEY `turno_alum` (`turno_alum`),
  ADD KEY `barrio_alum` (`barrio_alum`),
  ADD KEY `ciudad_alum` (`ciudad_alum`),
  ADD KEY `prov_alum` (`prov_alum`),
  ADD KEY `materia_alum` (`materia_alum`);

ALTER TABLE `personal`
  ADD KEY `genero_Pers` (`genero_pers`),
  ADD KEY `barrio_Pers` (`barrio_pers`),
  ADD KEY `ciudad_Pers` (`ciudad_pers`),
  ADD KEY `cargo_Pers` (`cargo_pers`),
  ADD KEY `curso_pers` (`curso_pers`),
  ADD KEY `turno_Pers` (`turno_pers`);

  ALTER TABLE `curso`
  ADD KEY `esp_curso` (`esp_curso`),
  ADD KEY `ciclo_curso` (`ciclo_curso`),
  ADD KEY `aula_curso` (`aula_curso`);





ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`turno_alum`) REFERENCES `turno` (`id_turno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`curso_alum`) REFERENCES `cursos` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_3` FOREIGN KEY (`genero_alum`) REFERENCES `genero` (`id_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_4` FOREIGN KEY (`barrio_alum`) REFERENCES `barrio` (`id_barrio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_5` FOREIGN KEY (`ciudad_alum`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_8` FOREIGN KEY (`materia_alum`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_10` FOREIGN KEY (`prov_alum`) REFERENCES `provincia` (`id_prov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`cargo_pers`) REFERENCES `cargo` (`id_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_2` FOREIGN KEY (`turno_pers`) REFERENCES `turno` (`id_turno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_3` FOREIGN KEY (`barrio_pers`) REFERENCES `barrio` (`id_barrio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_4` FOREIGN KEY (`ciudad_pers`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_5` FOREIGN KEY (`curso_pers`) REFERENCES `cursos` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_6` FOREIGN KEY (`genero_pers`) REFERENCES `genero` (`id_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION;