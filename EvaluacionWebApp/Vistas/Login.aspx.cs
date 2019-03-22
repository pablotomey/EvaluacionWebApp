using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;
using EvaluacionWebApp.Logica.ModeloEntidades;

namespace EvaluacionWebApp.Vistas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        /**
         * Evento click el cual permite el ingreso del usuario a la aplicación mediante el ingreso de su
         * username y password.
         * Ademas entrega variables de session.
         */
        protected void btnIngresar_Click1(object sender, EventArgs e)
        {
            clsUsuario usuario = new clsUsuario();
            String userName = txtUserName.Text;
            String password = txtPassword.Text;

            // Validamos el rol del usuario si la funcion validarUsuario() devuelve = 1,2 o 0
            if (usuario.validarUsuario(userName,password) == 1)
            {
                Session["rol"] = "administrador";
                Session["usuario"] = txtUserName.Text;
                Response.Redirect("../Vistas/Admin/AdminDefault.aspx");
            }
            else if (usuario.validarUsuario(userName,password) == 2)
            {
                Session["rol"] = "usuario";
                Session["usuario"] = txtUserName.Text;
                Response.Redirect("../Vistas/User/UserDefault.aspx");
            }
            else
            {
                lblResultado.Text = "Usuario no registrado";
            }
        }
    }
}