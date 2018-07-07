using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvaluacionWebApp.Vistas
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        /**
         * Valida la session de usuario y carga el usuername en el navbar.
         */
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserSession.Text = Session["usuario"].ToString();
        }

        /**
         * Metodo que ciera la sesion de usaurio y 
         * devuelve al login, esta vinculado al elemento HTML 
         * <a> con la propiedad OnServerClick.
         */
        protected void cerrarSession(object sender, EventArgs e)
        {
            Session.Remove("rol");
            Session.Remove("usuario");
            Response.Redirect("/Vistas/Login.aspx");
        }
    }
}