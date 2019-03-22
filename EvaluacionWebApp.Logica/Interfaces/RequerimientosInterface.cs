using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionWebApp.Logica.Interfaces
{
    public class RequerimientosInterface
    {
        public int id_requerimiento { get; set; }
        public string tipo { get; set; }
        public string requerimiento { get; set; }
        public string energia { get; set; }
        public string proteina { get; set; }
        public string factor_kcal { get; set; }
        public string factor_prot { get; set; }
        public string cho_porc { get; set; }
        public string cho_gr { get; set; }
        public string lip_porc { get; set; }
        public string lip_gr { get; set; }
        public int id_evaluacion { get; set; }
    }
}
