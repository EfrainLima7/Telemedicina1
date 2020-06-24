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
    public partial class Citas : System.Web.UI.Page
    {
        DetalleCitaCrear1 detalle = new DetalleCitaCrear1();
        Conexion cn = new Conexion();
        Consulta consulta = new Consulta();
        string idusuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                
                lstMedicosEspecialista.DataSource = consulta.extrae("Listar_Medico_Especialista");
                lstMedicosEspecialista.DataBind();
                //lstMedicosEspecialista1.DataSource = consulta.extrae("Listar_Medico_Especialista");
                //lstMedicosEspecialista1.DataBind();
                //lstMedicosEspecialista2.DataSource = consulta.extrae("Listar_Medico_Especialista");
                //lstMedicosEspecialista2.DataBind();

                if (Session["username"] == null)
                    Response.Redirect("../login.aspx");
                    username.Text = "" + Session["username"];
                    idusuario = username.Text;
                    Recuperaridusarioporcorreo();               
                
            }
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}

        }

        protected void SeleccionarEspecialista(object source, DataListCommandEventArgs e)
        {            
            int idMedicoEsp = int.Parse(lstMedicosEspecialista.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("~/data/ConfirmarCita.aspx?idMedicoEsp=" + idMedicoEsp);
        }
        //protected void SeleccionarEspecialista1(object source, DataListCommandEventArgs e)
        //{ 
        //    int idMedicoEsp = int.Parse(lstMedicosEspecialista1.DataKeys[e.Item.ItemIndex].ToString());
        //    Response.Redirect("~/data/ConfirmarCita.aspx?idMedicoEsp=" + idMedicoEsp);
        //}
        //protected void SeleccionarEspecialista2(object source, DataListCommandEventArgs e)
        //{

        //    int idMedicoEsp = int.Parse(lstMedicosEspecialista2.DataKeys[e.Item.ItemIndex].ToString());
        //    Response.Redirect("~/data/ConfirmarCita.aspx?idMedicoEsp=" + idMedicoEsp);
        //}
        public void Recuperaridusarioporcorreo()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
            SqlCommand da = new SqlCommand("buscar_IdUSUARIO_por_correo", con);
            da.CommandType = CommandType.StoredProcedure;
            da.Parameters.AddWithValue("@Correo",idusuario);
            con.Open();
            mio.Text = Convert.ToString(da.ExecuteScalar());
            con.Close();

        }
    }

}