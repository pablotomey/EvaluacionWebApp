using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;

namespace EvaluacionWebApp.Vistas.User
{
    public partial class Evaluacion : System.Web.UI.Page
    {
        /**
         * Se validan las variables de sesion enviadas desde el logueo de la aplicación.
         */
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String typeRol = Session["rol"].ToString();
                if (!typeRol.Equals("usuario"))
                {
                    Response.Redirect("../Login.aspx");
                }
                else
                {

                }
            }
            catch (Exception)
            {
                Response.Redirect("../Login.aspx");
                throw;
            }
        }


    }
}