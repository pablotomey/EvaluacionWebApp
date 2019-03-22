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
    public partial class EvalReview : System.Web.UI.Page
    {
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
        }

        protected void btnRutFind_Click(object sender, EventArgs e)
        {
            clsPaciente paciente = new clsPaciente();
            

            String rut = paciente.validarRut(txtRutFind.Text);

            if (rut.Equals("Rut invalido"))
            {
                lblRutInvalido.Text = rut;

            }
            else
            {
                lblRutInvalido.Text = "";

                clsEvaluacion evaluacion = new clsEvaluacion();
                clsRequerimiento requerimiento = new clsRequerimiento();
            
                int rutPaciente = Convert.ToInt32(rut);

                try
                {
                    using (db_nutricionEntities dbentity = new db_nutricionEntities())
                    {
                        List<int?> rutPat = (from pat in dbentity.Pacientes
                                                 select pat.rut).ToList();
                        bool rutMatch = false;
                        foreach(var findRut in rutPat)
                        {
                            if (findRut == rutPaciente)
                            {
                                rutMatch = true;
                                break;
                            }
                            else
                            {
                                rutMatch = false;
                            }
                        }

                        if (rutMatch)
                        {
                            String nomPaciente = (from pat in dbentity.Pacientes
                                                  where pat.rut == rutPaciente
                                                  select pat.nombre + " " + pat.apepat).First();

                            lblPacienteFind.Text = "Paciente: " + nomPaciente;
                        }
                        else
                        {
                            lblRutInvalido.Text = "Rut ingresado no existe";
                        }

                    }
                }
                catch (Exception ex)
                {

                    throw ex;
                }

                grdAntropometria.DataSource = evaluacion.mostrarAntropometria(rutPaciente);
                grdAntropometria.DataBind();
                lblTitleAntr.Visible = true;

                grdComposicion.DataSource = evaluacion.mostrarComposicion(rutPaciente);
                grdComposicion.DataBind();
                lblTitleCC.Visible = true;

                grdExamenes.DataSource = evaluacion.mostrarExamenes(rutPaciente);
                grdExamenes.DataBind();
                lblTitleExamen.Visible = true;

                grdDiagnostico.DataSource = evaluacion.mostrarDiagNutr(rutPaciente);
                grdDiagnostico.DataBind();
                lblTitleDiagn.Visible = true;

                grdReqInicial.DataSource = requerimiento.mostrarReqInicial(rutPaciente);
                grdReqInicial.DataBind();
                lblTitleReqInicial.Visible = true;

                grdReqFinal.DataSource = requerimiento.mostrarReqFinal(rutPaciente);
                grdReqFinal.DataBind();
                lblTitleReqFinal.Visible = true;

                grdMetaNutr.DataSource = evaluacion.mostrarMetaNutr(rutPaciente);
                grdMetaNutr.DataBind();
                lblTitleMeta.Visible = true;

                grdObservacion.DataSource = evaluacion.mostrarObservaciones(rutPaciente);
                grdObservacion.DataBind();
                lblTitleObs.Visible = true;
            }           
        }
    }
}