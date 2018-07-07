using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;

namespace EvaluacionWebApp.Vistas.User
{
    public partial class UserDefault : System.Web.UI.Page
    {
        /**
         * Se validan las variables de sesion enviadas desde el logueo de la aplicación.
         * 
         * Se carga el Gridview con los datos de los pacientes ingresados en el sistema.
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

        /**
         * Evento click para guardar un paciente en la base de datos
         */
        protected void btnSavePaciente_Click(object sender, EventArgs e)
        {
            clsPaciente paciente = new clsPaciente();

            String nomPaciente = txtNombrePaciente.Text;
            String apepatPaciente = txtApepatPaciente.Text;
            String apematPaciente = txtApematPaciente.Text;
            String edadPaciente = txtEdadPaciente.Text;
            String numFicha = txtNumFicha.Text;
            String diagnosticoPaciente = txtDiagnostico.Text;
            DateTime fecha = DateTime.Now;
            String sexo = "";

            if (rbMasculino.Checked)
            {
                sexo = "M";
            }
            if (rbFemenino.Checked)
            {
                sexo = "F";
            }

            String rut = paciente.validarRut(txtRutPaciente.Text);

            if (rut.Equals("Rut invalido"))
            {
                lblRutInvalido.Text = rut;

            }
            else
            {
                lblRutInvalido.Text = "";
            }

            if (nomPaciente == "" || apepatPaciente == "" || apematPaciente == "" || edadPaciente == "" || numFicha == "" || diagnosticoPaciente == "" || rut.Equals("Rut invalido"))
            {
                lblResultado.Text = "Complete los campos requeridos(*)";
                modalAddPaciente.Show();
            }
            else
            {
                paciente.guardarPaciente(nomPaciente, apepatPaciente, apematPaciente, Convert.ToInt32(rut),
                                         Convert.ToInt32(edadPaciente), sexo, diagnosticoPaciente, Convert.ToInt32(numFicha), fecha, idUser());
                modalAddPaciente.Hide();
                limpiar();
                updateGrid_Click(updateGrid, new EventArgs());
            }
        }

        /**
         * Evencto click el cual cancela el guardado de un nuevo paciente y esconde la ventana modal del formulario.
         */
        protected void btnCancelSave_Click(object sender, EventArgs e)
        {
            
            modalAddPaciente.Hide();
            limpiar();
        }

        /**
         * Obtiene el indice de la fila del gridview con con los pacientes ingresados, al hacer click en el icono evaluación,
         * este envia al usuario al la vista con el formulario de evaluación nutricional.
         */
        protected void grdTablaPacientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        /**
         * Metodo para limpiar el formulario de
         * ingreso de paciente.
         */
        public void limpiar()
        {
            txtNombrePaciente.Text = "";
            txtApepatPaciente.Text = "";
            txtApematPaciente.Text = "";
            txtEdadPaciente.Text = "";
            txtRutPaciente.Text = "";
            txtNumFicha.Text = "";
            txtDiagnostico.Text = "";
            rbMasculino.Checked = false;
            rbFemenino.Checked = false;
            lblResultado.Text = "";
            lblRutInvalido.Text = "";
        }

        /**
         * Metodo que envia el username desde la variable de sesion que la contiene
         * hacia el evento idUsuario(). Este devuelve el id del usuario desde la base de datos
         */
        public int idUser()
        {
            try
            {
                clsUsuario usuario = new clsUsuario();
                String username = Session["usuario"].ToString();
                int id = usuario.idUsuario(username);

                return id;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /**
         * Evento click fantasma: Representa un boton oculto  que gatilla el updatepanel
         * para el gridview al insertar un nuevo paciente en la ventana modal de registro
         */
        protected void updateGrid_Click(object sender, EventArgs e)
        {
            clsPaciente paciente = new clsPaciente();
            grdTablaPacientes.DataSource = paciente.mostrarPacientes();
            grdTablaPacientes.DataBind();
        }
    }
}