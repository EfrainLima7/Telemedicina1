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
    public partial class index : System.Web.UI.Page
    {
        Conexion cn = new Conexion();
        Consulta consulta = new Consulta();
        string idusuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                contar();
                if (Session["username"] == null)
                    Response.Redirect("login.aspx");
                username.Text = "" + Session["username"];
                idusuario = username.Text;
                //Recuperaridusarioporcorreo();

                if (username.Text == "")
                    Response.Redirect("login.aspx");
            }
        }
        public void contar()
        {
            try
            {
                DataTable tabla = new DataTable();
                tabla = consulta.extrae("contar_especialistas");
                espcialista.Text = tabla.Rows[0][0].ToString();
                tabla = consulta.extrae("contar_especialidad");
                especialidades.Text = tabla.Rows[0][0].ToString();
                tabla = consulta.extrae("contar_medico");
                medicos.Text = tabla.Rows[0][0].ToString();
                tabla = consulta.extrae("contar_cita");
                citas.Text = tabla.Rows[0][0].ToString();
            }
            catch
            {
            }
        }
        public void Recuperaridmedicoesxporcorreo()
        {
            SqlConnection con = new SqlConnection();
            SqlCommand da = new SqlCommand("buscar_IdUSUARIO_por_correo", con);
            da.CommandType = CommandType.StoredProcedure;
            da.Parameters.AddWithValue("@Correo", idusuario);
            con.Open();
            //mio.Text = Convert.ToString(da.ExecuteScalar());
            con.Close();
        }
    }
}