using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.ModeloEntidades;
using EvaluacionWebApp.Logica.Clases;

namespace EvaluacionWebApp.Vistas.Admin
{
    public partial class UserAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using(db_nutricionEntities dbEntity=new db_nutricionEntities())
                {
                    lsdRol.DataSource = dbEntity.Roles.ToList();
                    lsdRol.DataTextField = "rol";
                    lsdRol.DataValueField = "id_rol";
                    lsdRol.DataBind();
                }
            }
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            clsUsuario usuario = new clsUsuario();
            String nombreUsaurio = txtNombreUsuario.Text;
            String apepat = txtApepat.Text;
            String apemat = txtApemat.Text;
            DateTime fecha = DateTime.Now;
            String rut = txtRutUsuario.Text;
            String login = txtLogin.Text;
            String contraseña = txtContraseña.Text;
            int idRol = int.Parse(lsdRol.SelectedValue);
            
            bool rutValido = usuario.validarRut(rut);
            if (rutValido)
            {
                char guion = '-';
                String[] rutAll = rut.Split(guion);
                rut = rutAll[0];
                //lblResultado.Text = rut;
                lblResultado.Text = usuario.guardarUsuario(nombreUsaurio, int.Parse(rut), apepat, apemat, fecha, login, contraseña, idRol);
            }
            else
            {
                lblResultado.Text = "rut no es valido";
            }
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            //Response.Write("<script LANGUAGE='JavaScript'>alert('Record Inserted Successfully') </script>");
            
            //limpiar();
        }

        void limpiar()
        {
            txtNombreUsuario.Text = "";
            txtRutUsuario.Text = "";
            txtApepat.Text = "";
            txtApemat.Text = "";
            txtLogin.Text = "";
            lsdRol.SelectedItem.Value = "0";
            lblResultado.Text = "";
        }
    }
}