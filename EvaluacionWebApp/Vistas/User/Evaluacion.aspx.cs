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
            idPaciente.Text = Request.QueryString["idPaciente"];
            //---------------Calculos para antropometria--------------------------
            txtPeso.Attributes.Add("onkeyup", "calcularImc()");           
            txtTalla.Attributes.Add("onkeyup", "calcularImc();calcularPesoIdeal()");
            ddlFactor.Attributes.Add("onkeyup", "calcularPesoIdeal()");

            //---------------Calculos para Composicion Corporal-------------------
            txtPT.Attributes.Add("onkeyup", "calcularPliegues();calcularCMB()");
            txtPB.Attributes.Add("onkeyup", "calcularPliegues()");
            txtPSI.Attributes.Add("onkeyup", "calcularPliegues()");
            txtPSE.Attributes.Add("onkeyup", "calcularPliegues()");

            //txtPT.Attributes.Add("onkeyup", "calcularCMB()");
            txtCB.Attributes.Add("onkeyup", "calcularCMB()");

            txtCHOPorcInicio.Attributes.Add("onkeyup", "choGrInicial()");
            txtLIPPorcInicio.Attributes.Add("onkeyup", "lipGrInicial()");

            txtCHOPorcTermino.Attributes.Add("onkeyup", "choGrFinal()");
            txtLIPPorcTermino.Attributes.Add("onkeyup", "lipGrFinal()");
            //txtAMB.Attributes.Add("onfocus", "calcularAMB()");

            //txtAGB.Attributes.Add("onfocus", "calcularAGB()");

            //---------------Calculos para Requerimientos nutricionales-------------------
            /*ddlFactorKcal.Attributes.Add("onkeyup", "calcularEnergia()");
            txtPesoIdeal.Attributes.Add("onkeyup", "calcularEnergia()");
            txtEnergia.Attributes.Add("onfocus", "calcularEnergia()");*/

            // Atributo Placeholder, Pattern, class=validate
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

            txtPliegues.Attributes.Add("pattern", "^[0-9]+(.[0-9]*)?$");

            txtPliegues.Attributes.Add("class", "validate");

            
            
        }
    }
}