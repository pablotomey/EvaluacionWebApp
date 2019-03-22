using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionWebApp.Logica.Interfaces
{
    public class EvaluacionesInterface
    {
        public int id_evaluacion { get; set; }
        public string fecha { get; set; }
        public string peso_antr { get; set; }
        public string talla_antr { get; set; }
        public string imc_antr { get; set; }
        public string peso_ideal_antr { get; set; }
        public string factor_peso_antr { get; set; }
        public string cb_corp { get; set; }
        public string pt_corp { get; set; }
        public string pb_corp { get; set; }
        public string psi_corp { get; set; }
        public string pse_corp { get; set; }
        public string pliegues_corp { get; set; }
        public string cc_corp { get; set; }
        public string carpo_corp { get; set; }
        public string cmb_corp { get; set; }
        public string amb_corp { get; set; }
        public string agb_corp { get; set; }
        public string albumina { get; set; }
        public string creatinina { get; set; }
        public string balance_hidrico { get; set; }
        public string pco2 { get; set; }
        public string pafi { get; set; }
        public string leucocitos { get; set; }
        public string pc_reactiva { get; set; }
        public string hemoglobina { get; set; }
        public string hematrocito { get; set; }
        public string trigliceridos { get; set; }
        public string glicemia { get; set; }
        public string lactato { get; set; }
        public string urea { get; set; }
        public string otros_examenes { get; set; }
        public string diagnostico_nutricional { get; set; }
        public string meta_nutricional { get; set; }
        public string observaciones { get; set; }
    }
}
