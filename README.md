# servilimar-basededatos
# Proyecto Base de Datos - Servicios LiMar

## Descripción

Este proyecto consiste en la creación y despliegue de una base de datos PostgreSQL utilizando Docker y pgAdmin para el sistema de generación de turnos LiMar.

## Tecnologías utilizadas

* Docker
* PostgreSQL 14
* pgAdmin 4
  
## Pasos para desplegar la base de datos

### 1. Levantar el contenedor de PostgreSQL
```bash
docker run -d \
  --name postgres_servilimar \
  -e POSTGRES_USER=ulimar \
  -e POSTGRES_PASSWORD=ex4men_db \
  -p 5432:5432 \
  postgres:14

### 2. Levantar el contenedor de pgAdmin
docker run -d \
  --name pgadmin_servilimar \
  -e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com \
  -e PGADMIN_DEFAULT_PASSWORD=limar#123 \
  -p 5050:80 \
  dpage/pgadmin4

### 3. Acceder a pgAdmin
* URL: http://localhost:5050
* Email: usuario@servilimar.com
* Contraseña: limar#123

## Base de datos

La base de datos creada fue:

CREATE DATABASE servilimar;

## Contenido del repositorio

* ddl.sql → creación de tablas
* dml.sql → inserción de registros

## Autor
Vanessa Ruano 


Leidy Vanessa Ruano Canacuan
