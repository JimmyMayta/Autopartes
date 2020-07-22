mysql -h localhost -u root -p


DROP DATABASE AutoDatabase;
DROP USER Auto@localhost;
QUIT;

CREATE USER 'Auto'@'localhost' IDENTIFIED BY 't3brg2z';
GRANT ALL PRIVILEGES ON *.* TO 'Auto'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
COMMIT;
SELECT USER, HOST FROM mysql.USER;
CREATE DATABASE AutoDatabase DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON AutoDatabase.* TO 'Auto'@'localhost';
FLUSH PRIVILEGES;
COMMIT;
QUIT;


mysql  -u Auto -pt3brg2z -h localhost
USE AutoDatabase;

SELECT user, host, db, command  FROM information_schema.processlist;



CREATE TABLE Personal (
  IDPer INTEGER NOT NULL,
  PerIDUsu INTEGER NOT NULL,
  PerCI VARCHAR(128) NOT NULL,
  PerIDDep INTEGER NOT NULL,
  PerNombres VARCHAR(300) NOT NULL,
  PerApellidos VARCHAR(300) NOT NULL,
  PerIDGen INTEGER NOT NULL,
  PerImagen VARCHAR(300) NULL,
  PerMail VARCHAR(300) NOT NULL,
  PerFechaNacimiento DATE NOT NULL,
  PerIDEst INTEGER NOT NULL,
  PerIDGru INTEGER NOT NULL,
  PerCurriculumVitae VARCHAR(300) NULL,
  PerFechaInicioSesion DATETIME NOT NULL,
  PerIDPer INTEGER NOT NULL,
  PerFechaCreacion DATETIME NOT NULL,
  PerFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Personal VALUES (1, 1, '32164798', 1, 'Adam', 'Montesco', 2, '',
'adam@gmail.com', '1993-12-12', 1, 1, '','2020-07-22 16:34:00', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Estados (
  IDEst INTEGER NOT NULL,
  EstEstado VARCHAR(128) NOT NULL,
  EstDescripcion VARCHAR(300) NOT NULL,
  EstIDPer INTEGER NOT NULL,
  EstFechaCreacion DATETIME NOT NULL,
  EstFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Estados VALUES (1, 'Activado', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Estados VALUES (2, 'Desactivado', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Usuarios (
  IDUsu INTEGER NOT NULL,
  UsuUsuario VARCHAR(300) NOT NULL,
  UsuContrasena VARCHAR(300) NOT NULL,
  UsuIDEst INTEGER NOT NULL,
  UsuIDPer INTEGER NOT NULL,
  UsuFechaCreacion DATETIME NOT NULL,
  UsuFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Usuarios VALUES (1, 'adam', '123', 1, 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Departamentos (
  IDDep INTEGER NOT NULL,
  DepDepartamento VARCHAR(128) NOT NULL,
  DepDescripcion VARCHAR(300) NOT NULL,
  DepIDPer INTEGER NOT NULL,
  DepFechaCreacion DATETIME NOT NULL,
  DepFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Departamentos VALUES (1, 'Beni', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (2, 'Chuquisaca', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (3, 'Cochabamba', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (4, 'La Paz', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (5, 'Oruro', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (6, 'Pando', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (7, 'Potosí', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (8, 'Santa Cruz', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Departamentos VALUES (9, 'Tarija', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Generos (
  IDGen INTEGER NOT NULL,
  GenGenero VARCHAR(128) NOT NULL,
  GenDescripcion VARCHAR(300) NOT NULL,
  GenIDPer INTEGER NOT NULL,
  GenFechaCreacion DATETIME NOT NULL,
  GenFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Generos VALUES (1, 'Dama', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');
INSERT INTO Generos VALUES (2, 'Caballero', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Grupos (
  IDGru INTEGER NOT NULL,
  GruGrupo VARCHAR(128) NOT NULL,
  GruDescripcion VARCHAR(300) NOT NULL,
  GruIDPer INTEGER NOT NULL,
  GruFechaCreacion DATETIME NOT NULL,
  GruFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Grupos VALUES (1, 'Admin', 'Administrador', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Clientes (
  IDCli INTEGER NOT NULL,
  CliCI VARCHAR( 128) NOT NULL,
  CliIDDep INTEGER NOT NULL,
  CliNomApe VARCHAR(300) NOT NULL,
  CliMail VARCHAR(300) NOT NULL,
  CliCelTel VARCHAR(128) NOT NULL,
  CliDireccion VARCHAR(300) NOT NULL,
  CliFechaNacimiento DATE NOT NULL,
  CliIDPer INTEGER NOT NULL,
  CliFechaCreacion DATETIME NOT NULL,
  CliFechaActualizacion DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
INSERT INTO Clientes VALUES (1, '487253', 1, 'Rosa Montesco', 'rosa@gmail.com',
'72828282', 'Ave. Libertad Num 2', '1993-12-01', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Caja (
  IDCaj INTEGER NOT NULL,
  CajCaja DECIMAL(10,2) NOT NULL,
  CajFecha DATE NOT NULL,
  CajHora TIME NOT NULL,
  CajIDPer INTEGER NOT NULL,
  CajFechaCreacion DATETIME NOT NULL,
  CajFechaActualizacion DATETIME NOT NULL
);
INSERT INTO Caja VALUES (1, '12312523.34', '2020-07-22', '18:12:00', 1,
'2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE Provedores (
  IDP INTEGER NOT NULL,
  PNomApe VARCHAR(300) NOT NULL,
  PCelTel VARCHAR(128) NOT NULL,
  PMail VARCHAR(300) NOT NULL,
  PCompania VARCHAR(300) NULL,
  PDescripcion VARCHAR(300) NOT NULL,
  PIDPer INTEGER NOT NULL,
  PFechaCreacion DATETIME NOT NULL,
  PFechaActualizacion DATETIME NOT NULL
);
INSERT INTO Provedores VALUES (1, 'BELINA MARTINES', '7838383',
'belina@gmail.com', 'Belina company', '', 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');

CREATE TABLE ProvedoresProductos (
  IDPPro INTEGER NOT NULL,
  PProProducto VARCHAR(300) NOT NULL,
  PProDescripcion VARCHAR(300) NULL,
  PProPrecio DECIMAL(10,2) NOT NULL,
  PProIDP INTEGER NOT NULL,
  PProIDPer INTEGER NOT NULL,
  PProFechaCreacion DATETIME NOT NULL,
  PProFechaActualizacion DATETIME NOT NULL
);
INSERT INTO ProvedoresProductos VALUES
(1, 'Espejos', 'Espejos grandes', '12312312.23', 1, 1, '2020-07-22 16:34:00', '2020-07-22 16:34:00');


CREATE TABLE Ventas (
  IDVen INTEGER NOT NULL,
  VenIDCli INTEGER NOT NULL,
  VenIDPer INTEGER NOT NULL,
  VenFecha DATETIME NOT NULL,
  VenNIT VARCHAR(300) NOT NULL,
  VenNumFactura VARCHAR(300) NOT NULL,
  VenNumAutorizacion VARCHAR(300) NOT NULL,
  VenNumero VARCHAR(300) NOT NULL,
  VenCodigo VARCHAR(300) NOT NULL,
  VenDetalle VARCHAR(300) NOT NULL, 
  VenFechaCreacion DATETIME NOT NULL, 
  VenFechaActualizacion DATETIME NOT NULL
);


ALTER TABLE Personal ADD PRIMARY KEY (IDPer);
ALTER TABLE Estados ADD PRIMARY KEY (IDEst);
ALTER TABLE Usuarios ADD PRIMARY KEY (IDUsu);
ALTER TABLE Departamentos ADD PRIMARY KEY (IDDep);
ALTER TABLE Generos ADD PRIMARY KEY (IDGen);
ALTER TABLE Grupos ADD PRIMARY KEY (IDGru);

ALTER TABLE Personal MODIFY IDPer INTEGER NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE Personal ADD FOREIGN KEY (PerIDUsu) REFERENCES Usuarios (IDUsu);
ALTER TABLE Personal ADD FOREIGN KEY (PerIDDep) REFERENCES Departamentos (IDDep);
ALTER TABLE Personal ADD FOREIGN KEY (PerIDGen) REFERENCES Generos (IDGen);
ALTER TABLE Personal ADD FOREIGN KEY (PerIDEst) REFERENCES Estados (IDEst);
ALTER TABLE Personal ADD FOREIGN KEY (PerIDGru) REFERENCES Grupos (IDGru);
ALTER TABLE Personal ADD FOREIGN KEY (PerIDPer) REFERENCES Personal (IDPer);








































