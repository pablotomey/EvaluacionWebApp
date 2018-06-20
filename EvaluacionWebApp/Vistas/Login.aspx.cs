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

        protected void btnIngresar_Click1(object sender, EventArgs e)
        {
            clsUsuario usuario = new clsUsuario();
            int rol= usuario.validarUsuario(txtUserName.Text, txtPassword.Text);

            if (rol == 1)
            {
                Session["rol"] = "administrador";
                Session["usuario"] = txtUserName.Text;
                Response.Redirect("../Vistas/Admin/AdminDefault.aspx");
            }
            else if (rol==2)
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