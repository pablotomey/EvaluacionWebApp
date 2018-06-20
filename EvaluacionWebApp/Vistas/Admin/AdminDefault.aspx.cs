using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvaluacionWebApp.Vistas.Admin
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String typeRol = Session["rol"].ToString();
                if (!typeRol.Equals("administrador"))
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
    }
}