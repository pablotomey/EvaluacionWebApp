using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;

namespace EvaluacionWebApp.Vistas.Admin
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        /**
         * Al cargar la vista adminDefault esta llena los labels contadores con los metodos
         * cuentasActivas(),cuentasAdmin() y cuantasUser().
         * 
         * Estos metodos devuelven un 'int' con el total de cuentas correspondientes.
         * 
         * Se validan las variables de sesion enviadas desde el logueo de la aplicación.
         */
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String typeRol = Session["rol"].ToString();
                if (!typeRol.Equals("administrador"))
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

            if (!IsPostBack)
            {
                clsUsuario userAccount = new clsUsuario();

                lblCountCuentas.Text = userAccount.cuentasActivas().ToString();

                lblCountAdmin.Text = userAccount.cuentasAdmin().ToString();

                lblCountUser.Text = userAccount.cuentasUser().ToString();
            }

        }
    }
}