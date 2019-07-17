using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;
using EvaluacionWebApp.Logica.ModeloEntidades;

namespace EvaluacionWebApp.Vistas.User
{
    public partial class AdminPatients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    clsPaciente paciente = new clsPaciente();
                    grdTablaPacientes.DataSource = paciente.mostrarPacientes();
                    grdTablaPacientes.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }

        }

        protected void grdTablaPacientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int indice = Convert.ToInt32(e.CommandArgument);

                if (e.CommandName == "Modificar")
                {
                    txtIdUserMod.Text = ((Label)grdTablaPacientes.Rows[indice].FindControl("lblIdPatients")).Text;
                    txtNombreMod.Text = grdTablaPacientes.Rows[indice].Cells[1].Text;
                    txtApepatMod.Text = grdTablaPacientes.Rows[indice].Cells[2].Text;
                    txtApematMod.Text = grdTablaPacientes.Rows[indice].Cells[3].Text;
                    txtEdadMod.Text = grdTablaPacientes.Rows[indice].Cells[5].Text;
                    txtSexoMod.Text = grdTablaPacientes.Rows[indice].Cells[6].Text;
                    txtDiagnosticoMod.Text = grdTablaPacientes.Rows[indice].Cells[7].Text;
                    mpeModificar.Show();
                }
                else if (e.CommandName == "Desactivar")
                {
                    clsPaciente paciente = new clsPaciente();
                    int idPaciente = int.Parse(((Label)grdTablaPacientes.Rows[indice].FindControl("lblIdPatients")).Text);
                    String mensaje = paciente.desactivarPaciente(idPaciente);
                    lblDesactivar.Text = mensaje;

                    mpeDesactivar.Show();
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void btnOkDesactivar_Click(object sender, EventArgs e)
        {
            mpeDesactivar.Hide();
        }
        /**
         * Evento Click el cual Modifica Los datos de una cuenta de usuario y los guarda en la base de datos.
         */
        public void btnOkModificar_Click(object sender, EventArgs e)
        {
            try
            {
                clsPaciente paciente = new clsPaciente();

                paciente.modificarPaciente(int.Parse(txtIdUserMod.Text), txtNombreMod.Text, txtApepatMod.Text, txtApematMod.Text, int.Parse(txtEdadMod.Text), txtSexoMod.Text, txtDiagnosticoMod.Text);
                mpeModificar.Hide();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        /**
         * Evento Click el cual cancela la modificacion del Usuario y esconde la ventana modal con el formulario
         * para modificar los datos del usuario.
         */
        public void btnCancelModificar_Click(object sender, EventArgs e)
        {
            mpeModificar.Hide();
        }
    }
}