using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020.data
{
    public partial class Telemedicina : System.Web.UI.Page
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
                    Recuperaridusarioporcorreo();
                    ListarTodaLasCitasxId();
                
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (url.Text=="")
            {
                
            }
            else
            {
                Response.Redirect("https://tellemedicina.com/" + url.Text);
            }
            
        }
        public void Recuperaridusarioporcorreo()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
            SqlCommand da = new SqlCommand("buscar_IdUSUARIO_por_correo", con);
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
                tabla = consulta.extrae("buscar_citas_actuales_videollamada", "@Idusuario", mio.Text);
                idcita.Text = tabla.Rows[0][0].ToString();
                nombres.Text = tabla.Rows[0][1] + tabla.Rows[0][2].ToString();
                especialidad.Text = tabla.Rows[0][3].ToString();
                fecha.Text = tabla.Rows[0][4].ToString();
                hora.Text = tabla.Rows[0][5].ToString();
                estado.Text = tabla.Rows[0][6].ToString();
                url.Text = tabla.Rows[0][7].ToString();
                imagen.ImageUrl = tabla.Rows[0][8].ToString();

            }
            catch (Exception ex)
            {
                mis.Text = (ex.Message);
            }
        }
    }
}