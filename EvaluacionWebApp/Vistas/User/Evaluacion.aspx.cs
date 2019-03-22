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
            
            //---------------Calculos para antropometria--------------------------
            txtPeso.Attributes.Add("onkeyup", "calcularImc()");           
            txtTalla.Attributes.Add("onkeyup", "calcularImc();calcularPesoIdeal()");
            ddlFactor.Attributes.Add("onkeyup", "calcularPesoIdeal()");

            //---------------Calculos para Composicion Corporal-------------------
            txtPT.Attributes.Add("onkeyup", "calcularPliegues();calcularCMB()");
            txtPB.Attributes.Add("onkeyup", "calcularPliegues()");
            txtPSI.Attributes.Add("onkeyup", "calcularPliegues()");
            txtPSE.Attributes.Add("onkeyup", "calcularPliegues()");
            txtCB.Attributes.Add("onkeyup", "calcularCMB()");

            //----------------Calculos para Requerimientos-------------------------
            txtCHOPorcInicio.Attributes.Add("onkeyup", "choGrInicial()");
            txtLIPPorcInicio.Attributes.Add("onkeyup", "lipGrInicial()");

            txtCHOPorcTermino.Attributes.Add("onkeyup", "choGrFinal()");
            txtLIPPorcTermino.Attributes.Add("onkeyup", "lipGrFinal()");

            //------------Atributo Placeholder-----------------------------
            txtPeso.Attributes.Add("placeholder", "Kg");
            txtTalla.Attributes.Add("placeholder", "Mt");
            txtImc.Attributes.Add("placeholder", "");
            txtPesoIdeal.Attributes.Add("placeholder", "Kg");
            txtPliegues.Attributes.Add("placeholder", "");
            txtCB.Attributes.Add("placeholder", "P");
            txtPT.Attributes.Add("placeholder", "P");
            txtCMB.Attributes.Add("placeholder", "P");
            txtAMB.Attributes.Add("placeholder", "P");
            txtAGB.Attributes.Add("placeholder", "P");
            txtEnergia.Attributes.Add("placeholder", "Kcal/día");
            txtProtInicio.Attributes.Add("placeholder", "Gr/día");
            txtInicio.Attributes.Add("placeholder", "");
            txtEnergiaTermino.Attributes.Add("placeholder", "Kcal/día");
            txtTermino.Attributes.Add("placeholder", "");
            txtProtTermino.Attributes.Add("placeholder", "Gr/día");
            txtCHOGrInicio.Attributes.Add("placeholder", "");
            txtLIPGrInicio.Attributes.Add("placeholder", "");
            txtCHOGrTermino.Attributes.Add("placeholder", "");
            txtLIPGrTermino.Attributes.Add("placeholder", "");

            //-------- Atributo Pattern - Title - Validate -------------------------
            txtPeso.Attributes.Add("pattern", value:"^[0-9]+([.][0-9]*)?$");
            txtPeso.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtPeso.Attributes.Add("class", "validate");

            txtTalla.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtTalla.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtTalla.Attributes.Add("class", "validate");

            txtCB.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$"); txtPT.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtCB.Attributes.Add("title", "Solo numeros enteros o decimales con (.)"); txtPT.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtCB.Attributes.Add("class", "validate"); txtPT.Attributes.Add("class", "validate");

            txtPB.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$"); txtPSI.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtPB.Attributes.Add("title", "Solo numeros enteros o decimales con (.)"); txtPSI.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtPB.Attributes.Add("class", "validate"); txtPSI.Attributes.Add("class", "validate");

            txtPSE.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$"); txtCC.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtPSE.Attributes.Add("title", "Solo numeros enteros o decimales con (.)"); txtCC.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtPSE.Attributes.Add("class", "validate"); txtCC.Attributes.Add("class", "validate");

            txtCarpo.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtCarpo.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtCarpo.Attributes.Add("class", "validate");

            txtCHOPorcInicio.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$"); txtLIPPorcInicio.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtCHOPorcInicio.Attributes.Add("title", "Solo numeros enteros o decimales con (.)"); txtLIPPorcInicio.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtCHOPorcInicio.Attributes.Add("class", "validate"); txtLIPPorcInicio.Attributes.Add("class", "validate");

            txtCHOPorcTermino.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$"); txtLIPPorcTermino.Attributes.Add("pattern", "^[0-9]+([.][0-9]*)?$");
            txtCHOPorcTermino.Attributes.Add("title", "Solo numeros enteros o decimales con (.)"); txtLIPPorcTermino.Attributes.Add("title", "Solo numeros enteros o decimales con (.)");
            txtCHOPorcTermino.Attributes.Add("class", "validate"); txtLIPPorcTermino.Attributes.Add("class", "validate");
            

            txtImc.Attributes.Add("readonly", "true");
            txtPesoIdeal.Attributes.Add("readonly", "true");
            txtPliegues.Attributes.Add("readonly", "true");
            txtAGB.Attributes.Add("readonly", "true");
            txtAMB.Attributes.Add("readonly", "true");
            txtCMB.Attributes.Add("readonly", "true");
            txtInicio.Attributes.Add("readonly", "true");
            txtTermino.Attributes.Add("readonly", "true");
            txtEnergia.Attributes.Add("readonly", "true");
            txtProtInicio.Attributes.Add("readonly", "true");
            txtEnergiaTermino.Attributes.Add("readonly", "true");
            txtProtTermino.Attributes.Add("readonly", "true");
            txtCHOGrInicio.Attributes.Add("readonly", "true");
            txtLIPGrInicio.Attributes.Add("readonly", "true");
            txtCHOGrTermino.Attributes.Add("readonly", "true");
            txtLIPGrTermino.Attributes.Add("readonly", "true");
        }

        protected void btnGuardarEvaluacion_Click(object sender, EventArgs e)
        {
            try
            {
                String fecha = txtFecha.Text;

                String peso = txtPeso.Text; String talla = txtTalla.Text;
                String imc = txtImc.Text; String pesoIdeal = txtPesoIdeal.Text;
                String factorPeso = ddlFactor.SelectedItem.ToString();

                String cb = txtCB.Text; String pb = txtPB.Text;
                String pse = txtPSE.Text; String cc = txtCC.Text;
                String pt = txtPT.Text; String psi = txtPSI.Text;
                String pliegues = txtPliegues.Text; String carpo = txtCarpo.Text;
                String cmb = txtCMB.Text; String amb = txtAMB.Text;
                String agb = txtAGB.Text;

                String albulimia = txtAlbulimia.Text;
                String creatinina = txtCreatinina.Text; String balance = txtBalh.Text;
                String pco2 = txtPco2.Text; String pafi = txtPafi.Text;
                String leucocitos = txtLeuc.Text; String protCreact = txtPC_react.Text;
                String hemoglobina = txtHemog.Text; String hematrocito = txtHemat.Text;
                String trigliceridos = txtTriglic.Text; String glicemia = txtGlicemia.Text;
                String lactato = txtLactato.Text; String urea = txtUrea.Text;
                String otrosEx = txtOtrosEx.Text;

                String diagnosticoNutr = ddlDiagnNut.SelectedItem.ToString() + " " + txtDiagNut.Text;

                String reqInicial = txtInicio.Text; String energiaInicial = txtEnergia.Text;
                String factorKcalInicial = ddlFactorKcal.SelectedItem.ToString(); String choPorc = txtCHOPorcInicio.Text;
                String choGr = txtCHOGrInicio.Text; String proteinaInicial = txtProtInicio.Text;
                String factorProtInicial = ddlFactorProtInicio.SelectedItem.ToString(); String lipPorcInicial = txtLIPPorcInicio.Text;
                String lipGrInicial = txtLIPGrInicio.Text;

                String reqFinal = txtTermino.Text; String energiaFinal = txtEnergiaTermino.Text;
                String factorKcalFinal = ddlFactorKcalTermino.SelectedItem.ToString(); String choPorcFinal = txtCHOPorcTermino.Text;
                String choGrFinal = txtCHOGrTermino.Text; String proteinaFinal = txtProtTermino.Text;
                String factorProtFinal = ddlFactorProtTermino.Text; String lipPorcFinal = txtLIPPorcTermino.Text;
                String lipGrFinal = txtLIPGrTermino.Text;
                
                String metaNutricional = txtMetaNut.Text;

                String observaciones = txtObservacion.Text;

                clsEvaluacion evaluacion = new clsEvaluacion();

                //Rescatamos el id del paciente desde la queryString creada en el proceso de registro del paciente
                int idPaciente= Convert.ToInt32(Request.QueryString["idPaciente"]);

                //validamos si los campos no vienen vacios, y guardamos la evaluación nutricional en la BD
                if(fecha=="" || peso=="" || talla=="" || ddlFactor.SelectedValue=="0" || ddlDiagnNut.SelectedValue=="0" || txtDiagNut.Text=="" || ddlFactorKcal.SelectedValue=="0" 
                    || ddlFactorProtInicio.SelectedValue=="0" || choPorc=="" || lipPorcInicial=="" || ddlFactorKcalTermino.SelectedValue=="0" || ddlFactorProtTermino.SelectedValue=="0"
                    || choPorcFinal=="" || lipPorcFinal=="")
                {
                    lblErrorMessage.Text = "Falta completar datos importantes (*)";
                    mpeSendError.Show();
                }
                else
                {
                    String mensaje = evaluacion.guardarEvaluacion(fecha, peso, talla, imc, pesoIdeal, factorPeso, cb, pt, pb, psi, pse, pliegues, cc, carpo, cmb, amb,
                                            agb, albulimia, creatinina, balance, pco2, pafi, leucocitos, protCreact, hemoglobina, hematrocito,
                                            trigliceridos, glicemia, lactato, urea, otrosEx, diagnosticoNutr, metaNutricional, observaciones,
                                            idPaciente, idUser(), reqInicial, energiaInicial, proteinaInicial, factorKcalInicial, factorProtInicial,
                                            choPorc, choGr, lipPorcInicial, lipGrInicial, reqFinal, energiaFinal, proteinaFinal, factorKcalFinal, factorProtFinal,
                                            choPorcFinal, choGrFinal, lipPorcFinal, lipGrFinal);
                    mpeConfirmar.Show();
                    lblConfirmacion.Text = mensaje;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        /* Para guardar y vincular la evaluaciòn con el nutricionista encargado, sacamos su id desde su variable de session donde tenemos
         * su username, este dato lo usamos en la función idUsuario para consultar el id y vincularlo en la funcion guardarEvaluacion
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

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            mpeConfirmar.Hide();
            Response.Redirect("UserDefault.aspx");
        }

        protected void btnAceptarSendError_Click(object sender, EventArgs e)
        {
            mpeSendError.Hide();
        }
    }
}