using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020.admin
{
    public partial class Empezar_Telemedicina : System.Web.UI.Page
    {
        Consulta consulta = new Consulta();
        string idusuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["username"] == null)
                    Response.Redirect("login.aspx");
                username.Text = "" + Session["username"];
                idusuario = username.Text;
                Recuperaridespecialistaporcorreo();
                ListarTodaLasCitasxId();

            }
        }
        public void Recuperaridespecialistaporcorreo()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
            SqlCommand da = new SqlCommand("buscar_IdEspecialista_por_correo", con);
            da.CommandType = CommandType.StoredProcedure;
            da.Parameters.AddWithValue("@Correo", idusuario);
            con.Open();
            mio.Text = Convert.ToString(da.ExecuteScalar());
            con.Close();
        }
        public void ListarTodaLasCitasxId()
        {
            try
            {
                //mis.Text = DateTime.Today.ToString("yyyy-MM-dd");
                DataTable tabla = new DataTable();
                tabla = consulta.extrae("citas_actuales_videollamada_para_medico", "@Idmedicoesp", mio.Text);
                idcita.Text = tabla.Rows[0][0].ToString();
                nombres.Text = tabla.Rows[0][1].ToString();
                fecha.Text = tabla.Rows[0][2].ToString();
                hora.Text = tabla.Rows[0][3].ToString();
                estado.Text = tabla.Rows[0][4].ToString();
                url.Text = tabla.Rows[0][5].ToString();

            }
            catch (Exception ex)
            {
                mis.Text = (ex.Message);
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (url.Text == "")
            {

            }
            else
            {
                Response.Redirect("https://tellemedicina.com/" + url.Text);
            }
        }
    }
}