# EvaluacionWebApp
Web app para Evaluaciones nutriciones del hospital clinico magallanes

Aplicación web Responsiva para realizar evaluaciones nutricionales a los pacientes del area de nutrición
del Hospital Clínico Magallanes, XII Región de Chile.

Aplicación capaz de desempeñarse tanto en dispositivos de escritorio como tambien en tablets y Smartphones.
Cuenta con el registro y administración de cuentas de usuario, registro y administracion de pacientes, registro de Evaluacion
nutricional mediante el ingreso de datos y con calculos automaticos de varios parametros requeridos como el IMC entre otros.

Tecnologias utilizadas:
- Asp.net webforms
- Lenguaje de backend C#
- Frontend Materialize CSS, Jquery y JS
- Base de datos Sql Server con Sql server Management Studio
- Entity Framework como ORM (Mapeo relacional de objetos)
- IDE Visual Studio 2017

Para utilizar el proyecto al 100%, clone el repositorio en su proyecto inicial en Visual Studio. Al utilizar Entity Framework
Podra generar la base de datos desde el modelo ubicado en la carpeta modelo entidades en la seccion de EvaluacionWebApp.Logica con el nombre de "db_nutricionEntity.edmx".
Es importante crear previamente en Sql server management una base de datos con el nombre "db_nutricion", ya que es este nombre al que apunta el modelo creado con entity framework.

Posteriormente debe agregar los Procedimientos almacenados LoginUsuario y RegistrarUsuario, archivos que podra consultar
en el repositorio del proyecto.




