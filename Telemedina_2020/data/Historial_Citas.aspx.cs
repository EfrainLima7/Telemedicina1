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
    public partial class Historial_Citas : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();
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


        protected void grvCitas_SelectedIndexChanged(object sender, EventArgs e)
        {
            //try
        //    {
        //    GridViewRow row = grvCitas.SelectedRow;
        //    string idCita = grvCitas.DataKeys[row.RowIndex].Value.ToString();
        //    DataTable tabla = new DataTable();
        //    tabla = consulta.extrae("Cancelar_Cita", "@idCita", idCita);
        //        rr.Text = idCita;
        //    }
        //    catch (Exception ex)
        //    {
        //        mensaje.Text = (ex.Message);

            //    }


            }

        public void ListarTodaLasCitasxId()
        {
            grvCitas.DataSource = consulta.extrae("buscar_citas_por_idusuario", "@Idusuario",mio.Text);
            grvCitas.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                int idcam = Convert.ToInt32(insertid.Text);
                consulta.extrae("Cancelar_Cita", "@idCita", idcam);
            }
            catch (Exception ex)
            {
                mensaje.Text = (ex.Message);

            }
}
    }
}