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
    public partial class Agregar_Horarios : System.Web.UI.Page
    {
        //string idusuario;
        Consulta consulta = new Consulta();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (Session["username"] == null)
                //    Response.Redirect("login.aspx");
                //username.Text = "" + Session["username"];
                //idusuario = username.Text;
                ////Recuperaridusarioporcorreo();

                //if (username.Text == "")
                //    Response.Redirect("login.aspx");
                Listar.DataSource = consulta.extrae("Lista_Horarios_Agregar");
                Listar.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Insertar_Horario", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Horario", hora.Text);
                //cmd.Parameters.AddWithValue("@Estado", "ACTIVO");
                cmd.ExecuteNonQuery();
                lblSuccessMessage.Text = "Nuevo Horario Registrado satisfactoriamente";
                con.Close();
                Clear();
                lblErrorMessage.Text = "";
                //mostrar();
                //panel4.Visible = false;
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = (ex.Message);
                lblSuccessMessage.Text = "";
            }
        }
        void Clear()
        {
            hora.Text = ""; 

        }
    }
}