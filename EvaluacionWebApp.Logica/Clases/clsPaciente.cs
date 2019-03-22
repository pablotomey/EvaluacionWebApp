using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using EvaluacionWebApp.Logica.ModeloEntidades;
using EvaluacionWebApp.Logica.Interfaces;

namespace EvaluacionWebApp.Logica.Clases
{
    public class clsPaciente
    {
        /**
         * Metodo para guardar un nuevo paciente en la Base de datos, devuelve un string como mensaje de exito.
         */
        public string guardarPaciente(String nombrePaciente, String apepat, String apemat, int rut, int edad, String sexo, 
                                      String diagnostico,int fichaMedica, DateTime fecha, int idUsuario)
        {
            try
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    Pacientes paciente = new Pacientes
                    {
                        nombre = nombrePaciente,
                        apepat = apepat,
                        apemat = apemat,
                        rut = rut,
                        edad = edad,
                        sexo = sexo,
                        diagnostico = diagnostico,
                        ficha_medica = fichaMedica,
                        estado = "activo",
                        fecha_creacion = fecha,
                        id_usuario = idUsuario
                    };

                    dbEntity.Pacientes.Add(paciente);
                    dbEntity.SaveChanges();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

            return "Datos del Paciente Guardados exitosamente";
        }
        /**
         * Metodo Que lista la tabla Pacientes desde el modelo de la base de datos
         * este metodo se usa para llenar los gridview de la capa de presentación
         */
        public List<PacientesInterface> mostrarPacientes()
        {
            try
            {
                using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                {
                    List<PacientesInterface> queryPacientes = (from patients in dbEntity.Pacientes
                                                             from users in dbEntity.Usuarios
                                                             where patients.estado == "activo"
                                                             where patients.id_usuario == users.id_usuario
                                                             select new PacientesInterface
                                                             {
                                                                 id_paciente = patients.id_paciente,
                                                                 nombrePaciente = patients.nombre,
                                                                 apepatPaciente = patients.apepat,
                                                                 apematPaciente = patients.apemat,
                                                                 rutPaciente = patients.rut,
                                                                 edadPaciente = patients.edad,
                                                                 SexoPaciente = patients.sexo,
                                                                 diagnosticoPaciente = patients.diagnostico,
                                                                 numFicha=patients.ficha_medica,
                                                                 FechaCreacion=patients.fecha_creacion,
                                                                 usuario=users.nombre+" "+users.apepat
                                                             }).ToList();

                    return queryPacientes;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        /**
         * Metodo para realizar la validacion del rut del paciente.
         * Valida la expresion regular ingresada y devuelve el rut sin el codigo verificador
         */
        public String validarRut(String rut)
        {
            Regex exp = new Regex("^[0-9]+-[0-9k]$");


            if (!exp.IsMatch(rut))
            {
                return "Rut invalido";
            }
            String dv = rut.Substring(rut.Length - 1, 1);
            char guion = '-';
            String[] rutAll = rut.Split(guion);

            if (dv != validarDv(int.Parse(rutAll[0])))
            {
                return "Rut invalido";
            }

            return rutAll[0];

        }
        /**
         * Metodo para validar el digito verificador del rut
         */
        public String validarDv(int rut)
        {
            int suma = 0;
            int multiplicador = 1;

            char[] num = rut.ToString().ToCharArray();

            for (int i = rut.ToString().Length - 1; i >= 0; i--)
            {
                multiplicador++;
                if (multiplicador == 8)
                {
                    multiplicador = 2;
                }
                suma += int.Parse(num[i].ToString()) * multiplicador;
            }

            int dv = 11 - (suma % 11);

            if (dv == 11)
            {
                return "0";
            }
            else if (dv == 10)
            {
                return "k";
            }
            else
            {
                return dv.ToString();
            }
        }
    }
}
