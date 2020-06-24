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
    public partial class login : System.Web.UI.Page
    {
        Conexion cn = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = cn.cad;
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.CommandText = "iniciarsesionadmin";
                cmd1.Parameters.Add("@Correo", SqlDbType.VarChar).Value = correo.Text.ToString();
                cmd1.Parameters.Add("@Password", SqlDbType.VarChar).Value = contraseña.Text.ToString();
                cn.Conecta();
                cmd1.ExecuteNonQuery();

                bool correcto = Convert.ToInt32(cmd1.ExecuteScalar()) > 0;
                if (correcto)
                {
                    Session["username"] = correo.Text.Trim();
                    Response.Redirect("index.aspx?idUsuario=" + correo.Text);
                    lblMessaje.Visible = true;
                    lblMessaje.Text = "Bienvenido";
                }
                else
                {
                    lblMessaje.Visible = true;
                    lblMessaje.Text = "La contraseña o Usuario Incorrecto";

                    contraseña.Text = "";

                }
            }
            catch (Exception ex)
            {
                message.Text = (ex.Message);

            }
        }
    }
}