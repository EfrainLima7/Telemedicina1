using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020.data{
    
    public partial class ConfirmarCita : System.Web.UI.Page
    {        
        Consulta consulta = new Consulta();
        string idusuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SeleccionarEspecialistaxId();
                rellenaCombo();
                if (Session["username"] == null)
                    Response.Redirect("../login.aspx");
                    username.Text = "" + Session["username"];
                    idusuario = username.Text;
                    Recuperaridusarioporcorreo();
            }
        }

        public void SeleccionarEspecialistaxId()
        {
                int idMedicoEsp = int.Parse(Request.QueryString["idMedicoEsp"].ToString());
                DataTable tabla = new DataTable();
                tabla = consulta.extrae("ListarEspecialista", "@IdMedicoEspecialista", idMedicoEsp);
                IdMedicoEspecialista.Text = tabla.Rows[0][0].ToString();
                nombre.Text = tabla.Rows[0][1].ToString();
                apellido.Text = tabla.Rows[0][2].ToString();
                correo.Text = tabla.Rows[0][3].ToString();
                especialidad.Text = tabla.Rows[0][4].ToString();
                descripcion.Text = tabla.Rows[0][5].ToString();
                imagen.ImageUrl = tabla.Rows[0][6].ToString(); 
            
        }

        protected void aceptar_Click(object sender, EventArgs e)
        {

            int idcita = Convert.ToInt32(IdMedicoEspecialista.Text);
            //string fecha = Convert.ToString(Fechas.Text);
            //InsertarCita(idcita);
            if (Fechas.Text == "")
                Mensajes.Text = "Por favor elija una fecha";
            else
            if (DwHoras.Text != "")
            {
                try
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd = new SqlCommand("InsertarCita", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@IdMedicoEsp", SqlDbType.Int).Value = idcita;
                    cmd.Parameters.Add("@IdUsuario", SqlDbType.Int).Value = mio.Text;
                    cmd.Parameters.Add("@Fecha", SqlDbType.Date).Value = Fechas.Text;
                    cmd.Parameters.AddWithValue("@hora",SqlDbType.VarChar).Value = DwHoras.SelectedValue ;
                    cmd.ExecuteNonQuery();
                    Mensajes.Text = "Registrado satisfactoriamente";
                    Response.Redirect("~/data/FinalizarCita.aspx?idUsuario=" + mio.Text);
                    con.Close();
                }
                catch (Exception ex)
                {
                    Mensajes.Text = (ex.Message);

                }
            }
            
            
        }

        public void rellenaCombo()
        {
            DwHoras.DataSource = consulta.extrae("selecionarHora");
            DwHoras.DataTextField = "Horas";//lo que va a mostrar
            DwHoras.DataValueField = "IdHorario";//que columna tomar como valor -> lo que va a devolver al seleccionar 
            DwHoras.DataBind();
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
    }
}