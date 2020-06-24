using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telemedina_2020.admin
{
    public partial class Historial_Citas_Especialista : System.Web.UI.Page
    {
        Consulta consulta = new Consulta();
        string idusuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cita.DataSource = consulta.extrae("Listar_citas_Historial");
                cita.DataBind();
                if (Session["username"] == null)
                    Response.Redirect("login.aspx");
                username.Text = "" + Session["username"];
                idusuario = username.Text;
                //Recuperaridusarioporcorreo();

                if (username.Text == "")
                    Response.Redirect("login.aspx");
            }
        }

        protected void cita_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                GridViewRow row = cita.SelectedRow;
                string idCita = cita.DataKeys[row.RowIndex].Value.ToString();
                //DataTable tabla = new DataTable();
                consulta.extrae("Cita_Completada", "@idCita", idCita);
            }
            catch (Exception ex)
            {
                mensaje.Text = (ex.Message);

            }
        }
    }
}