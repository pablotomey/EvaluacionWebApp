using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;
using EvaluacionWebApp.Logica.ModeloEntidades;

namespace EvaluacionWebApp.Vistas.Admin
{
    public partial class AdminAccount : System.Web.UI.Page
    {
        /**
         * Page load carga el dropdownlist con los roles de usuario de la entidad roles de la base de datos.
         * (El dropdownlist se encuentra en la ventana modal que muestra el formulario para modificar una cuenta de usuario).
         */
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (db_nutricionEntities dbEntity = new db_nutricionEntities())
                {
                    lsdRolMod.DataSource = dbEntity.Roles.ToList();
                    lsdRolMod.DataTextField = "rol";
                    lsdRolMod.DataValueField = "id_rol";
                    lsdRolMod.DataBind();
                }
            }

        }
        /**
         * Evento Click que llama al metodo Mostrar usuarios, y llena un grid con la informacion
         * de los usuarios y sus cuentas.
         */
        public void btnBuscarTodos_Click(object sender, EventArgs e)
        {
            try
            {
                clsUsuario usuario = new clsUsuario();
                grdTablaUsuarios.DataSource = usuario.mostrarUsuarios();
                grdTablaUsuarios.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        /**
         * Evento Row Command captura el indice al hacer click en el icono Modificar o desactivar de cada elemento del grid.
         * Modificar: carga los datos de la cuenta en un formulario modal para su posterior modificación.
         * Desactivar: llama al evento desactivarUsuario, este cambia el estado del usuario de activo a inactivo.
         */ 
        protected void grdTablaUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int indice = Convert.ToInt32(e.CommandArgument);

                if (e.CommandName == "Modificar")
                {
                    txtIdUserMod.Text = ((Label)grdTablaUsuarios.Rows[indice].FindControl("lblIdUser")).Text;
                    txtNombreMod.Text = grdTablaUsuarios.Rows[indice].Cells[2].Text;
                    txtApepatMod.Text = grdTablaUsuarios.Rows[indice].Cells[3].Text;
                    txtApematMod.Text = grdTablaUsuarios.Rows[indice].Cells[4].Text;
                    txtLoginMod.Text = grdTablaUsuarios.Rows[indice].Cells[7].Text;
                    lsdRolMod.SelectedIndex = lsdRolMod.Items.IndexOf(lsdRolMod.Items.FindByText(grdTablaUsuarios.Rows[indice].Cells[8].Text));
                    mpeModificar.Show();
                }
                else if(e.CommandName =="Desactivar")
                {
                    clsUsuario usuario = new clsUsuario();
                    int idUser = int.Parse(((Label)grdTablaUsuarios.Rows[indice].FindControl("lblIdUser")).Text);
                    String mensaje = usuario.desactivarUsuario(idUser);
                    lblDesactivar.Text = mensaje;
                    
                    mpeDesactivar.Show();
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        /**
         * Evento Click que muestra mensaje de exito de la desactivacion del usuario
         * Esconde la ventana modal del mensaje de exito y recarga el gridview los datos 
         * de las cuentas de usuario.
         */
        public void btnOkDesactivar_Click(object sender, EventArgs e)
        {
            mpeDesactivar.Hide();
            btnBuscarTodos_Click(btnBuscarTodos, new EventArgs());
        }
        /**
         * Evento Click el cual Modifica Los datos de una cuenta de usuario y los guarda en la base de datos.
         */
        public void btnOkModificar_Click(object sender, EventArgs e)
        {
            try
            {
                clsUsuario usuario = new clsUsuario();

                usuario.modificarUsuario(int.Parse(txtIdUserMod.Text), txtNombreMod.Text, txtApepatMod.Text, txtApematMod.Text, txtLoginMod.Text, int.Parse(lsdRolMod.SelectedValue));
                btnBuscarTodos_Click(btnBuscarTodos, new EventArgs());
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