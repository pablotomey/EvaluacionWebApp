using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionWebApp.Logica.Interfaces
{
    /**
     * Clase Puente para listar la entidad Pacientes.
     */
    public class PacientesInterface
    {
        public int id_paciente { get; set; }
        public String nombrePaciente { get; set; }
        public String apepatPaciente { get; set; }
        public String apematPaciente { get; set; }
        public Nullable <int> rutPaciente { get; set; }
        public Nullable<int> edadPaciente { get; set; }
        public String SexoPaciente { get; set; }
        public String diagnosticoPaciente { get; set; }
        public Nullable<int> numFicha { get; set; }
        public String estadoPaciente { get; set; }
        public Nullable<DateTime> FechaCreacion { get; set; }
        public String usuario { get; set; }

    }
}
