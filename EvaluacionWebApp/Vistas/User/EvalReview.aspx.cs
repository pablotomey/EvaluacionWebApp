using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaluacionWebApp.Logica.Clases;
using EvaluacionWebApp.Logica.ModeloEntidades;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;

namespace EvaluacionWebApp.Vistas.User
{
    public partial class EvalReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Se validan las variables de session desde el logeo de la aplicación
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
            
            // guardamos en una variable el string que devuelve el metodo validar rut
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

                // Si el rut es valido validamos en la base de datos si esta registrado
                try
                {
                    using (
                        db_nutricionEntities dbentity = new db_nutricionEntities())
                    {
                        List<int?> rutPat = (from pat in dbentity.Pacientes
                                             select pat.rut).ToList();

                        List<String> estadoPat = (from pat in dbentity.Pacientes
                                                  select pat.estado).ToList();
                        bool rutMatch = false;
                        bool estadoMatch = false;
                        foreach (var findRut in rutPat)
                        {
                            if (findRut == rutPaciente)
                            {
                                foreach (var findEstado in estadoPat)
                                {
                                    if (findEstado == "activo")
                                    {
                                        rutMatch = true;
                                        estadoMatch = true;
                                        break;
                                    }
                                }
                            }
                        }

                        if (rutMatch && estadoMatch)
                        {
                            grdPaciente.DataSource = paciente.mostrarPacienteEvaluado(rutPaciente);
                            grdPaciente.DataBind();
                            lblTitlePaciente.Visible = true;

                            btnExportPDF.Visible = true;
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

                // Si el rut esta registrado se llaman a los metodos mostrar de la clase evaluación para consultar la evaluación nutricional del paciente
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

        protected void ExportarPDF(object sender, EventArgs e)
        {
            Response.ContentType = "aplication/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Evaluacion.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            panelPDF.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document docPDF = new Document(PageSize.LETTER,10f,10f,10f,10f);
            PdfWriter writer= PdfWriter.GetInstance(docPDF, Response.OutputStream);

            docPDF.Open();
            //iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance("../../EvaluacionWebApp/Content/img/Logo_Hospital.png");
            //docPDF.Add(img);
            XMLWorkerHelper.GetInstance().ParseXHtml(writer, docPDF, sr);
            docPDF.Close();

            Response.Write(docPDF);
            Response.End();

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }
    }
}