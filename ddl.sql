CREATE TABLE Ciudad(
    ciudad_id SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(50),
    codigo_postal VARCHAR(10)
);

CREATE TABLE Usuario(
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    tipo_usuario VARCHAR(30),
    condiciones VARCHAR(100),
    ciudad_id INT,
    codigo_postal VARCHAR(10),
    FOREIGN KEY(ciudad_id)
    REFERENCES Ciudad(ciudad_id)
);

CREATE TABLE Empleado(
    empleado_id SERIAL PRIMARY KEY,
    usuario_id INT,
    cargos VARCHAR(50),
    departamentos VARCHAR(50),
    FOREIGN KEY(usuario_id)
    REFERENCES Usuario(usuario_id)
);

CREATE TABLE Servicio(
    servicio_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(100),
    estado VARCHAR(20)
);

CREATE TABLE Medio(
    medio_id SERIAL PRIMARY KEY,
    nombre_medio VARCHAR(50)
);

CREATE TABLE Notificacion(
    notificacion_id SERIAL PRIMARY KEY,
    usuario_id INT,
    medio_id INT,
    mensaje VARCHAR(200),
    fecha_envio DATE,
    estado VARCHAR(20),
    FOREIGN KEY(usuario_id)
    REFERENCES Usuario(usuario_id),
    FOREIGN KEY(medio_id)
    REFERENCES Medio(medio_id)
);

CREATE TABLE Turno(
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(20),
    nombre_servicio VARCHAR(50),
    FOREIGN KEY(usuario_id)
    REFERENCES Usuario(usuario_id),
    FOREIGN KEY(servicio_id)
    REFERENCES Servicio(servicio_id),
    FOREIGN KEY(empleado_id)
    REFERENCES Empleado(empleado_id)
);
