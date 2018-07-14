using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EvaluacionWebApp.Logica.ModeloEntidades;

namespace EvaluacionWebApp.Logica.Clases
{
    public class clsEvaluacion
    {
        public class clsPaciente
        {
            /**
             * Metodo para guardar un nuevo paciente en la Base de datos, devuelve un string como mensaje de exito.
             */
            public string guardarEvaluacion()
            {
                try
                {
                    using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                    {
                        Evaluaciones evaluacion = new Evaluaciones
                        {

                        };

                        dbEntity.Evaluaciones.Add(evaluacion);
                        dbEntity.SaveChanges();
                    }
                }
                catch (Exception ex)
                {

                    throw ex;
                }

                return "Ebaluaci Guardados exitosamente";
            }
        }
    }
}
