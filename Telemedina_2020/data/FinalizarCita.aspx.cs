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
    public partial class FinalizarCita : System.Web.UI.Page
    {
        Consulta consulta = new Consulta();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            SeleccionarCitaXIdUs();
            if (!Page.IsPostBack)
            {                
                if (Session["username"] == null)
                    Response.Redirect("../login.aspx");
                    username.Text = "|" + Session["username"];                
            }

        }
        public void SeleccionarCitaXIdUs()
        {
            try
            {
            int idUsuario = int.Parse(Request.QueryString["idUsuario"].ToString());
            DataTable tabla = new DataTable();
            tabla = consulta.extrae("selecionarCitasxIdUsuario", "@idUsuario", idUsuario);
            idCita.Text = tabla.Rows[0][0].ToString();
            name.Text = tabla.Rows[0][1].ToString();            
            apellido.Text = tabla.Rows[0][2].ToString();
            especialidad.Text = tabla.Rows[0][3].ToString();
            correo.Text = tabla.Rows[0][4].ToString();
            fecha.Text = tabla.Rows[0][5].ToString();
            }
            catch (Exception ex)
            {
                mensajes.Text = (ex.Message);

            }
        }
        public void EliminarCita()
        {
            int idUsuario = int.Parse(Request.QueryString["idUsuario"].ToString());
            string iduser = Convert.ToString(idUsuario);
            int idcita = Convert.ToInt32(idCita.Text);
            consulta.extrae("EliminarCita", "@IdUsuario",iduser , "@IdMedicoEsp", idcita);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //EliminarCita();
            SeleccionarCitaXIdUs();
            Response.Redirect("~/data/Citas.aspx");
        }
        public void insertarCitaFinal()
        {
            int idUsuario = int.Parse(Request.QueryString["idUsuario"].ToString());
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            cmd.Connection = conexion.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertCitaFinal";
            SqlParameter outParam = cmd.Parameters.Add("@idCita", SqlDbType.Int);
            outParam.Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@idUsuario", SqlDbType.Int).Value = idUsuario;
            conexion.Conecta();
            cmd.ExecuteNonQuery();
            conexion.Desconecta();
            mensajes.Text = "Cita creada exitosamente";
        }

        protected void acetpar_Click(object sender, EventArgs e)
        {
            insertarCitaFinal();
            if (mensajes.Text=="" )            
            {
                
            }
            else
            {
                Response.Redirect("~/data/Citas.aspx");
            }
                

        }
    }
}