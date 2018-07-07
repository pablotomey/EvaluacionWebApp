using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionWebApp.Logica.Interfaces
{
    /**
     * Clase Puente para listar la entidad Usuarios.
     */
    public class UsuariosInterface
    {
        public int id_usuario { get; set; }
        public Nullable <int> rut { get; set; }
        public String nombre { get; set; }
        public String apepat { get; set; }
        public String apemat { get; set; }
        public String estado { get; set; }
        public Nullable <DateTime> fecha_creacion { get; set; }
        public String login { get; set; }
        public String rol { get; set; }
    }
}
