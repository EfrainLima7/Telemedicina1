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
    public partial class RegistroUsuario : System.Web.UI.Page
    {        
        //Conexion con = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {            
            if (email.Text == "" || password.Text == "")
                lblErrorMessage.Text = "Por favor complete los campos obligatorios";
            else if (password.Text != passwordrep.Text)
                lblErrorMessage.Text = "La contraseña no coincide";
            else
            {
                if (nombres.Text != "")
                {
                    try
                    {
                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd = new SqlCommand("insertar_usuario", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@nombres", nombres.Text);
                        cmd.Parameters.AddWithValue("@Telefono", telefono.Text);
                        cmd.Parameters.AddWithValue("@especialidad", especialidad.Text);
                        cmd.Parameters.AddWithValue("@Correo", email.Text);
                        cmd.Parameters.AddWithValue("@Password", password.Text);

                        cmd.Parameters.AddWithValue("@Rol", "usuario");
                        //System.IO.MemoryStream ms = new System.IO.MemoryStream();
                        //ICONO.Image.Save(ms, ICONO.Image.RawFormat);

                        //cmd.Parameters.AddWithValue("@Icono", ms.GetBuffer());
                        //cmd.Parameters.AddWithValue("@Nombre_de_icono", lblnumeroIcono.Text);
                        cmd.Parameters.AddWithValue("@Estado", "ACTIVO");
                        cmd.ExecuteNonQuery();
                        lblSuccessMessage.Text = "Registrado satisfactoriamente";                        
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
            }            
        }
        void  Clear()
        {
            nombres.Text = ""; telefono.Text = ""; especialidad.Text = ""; email.Text = ""; password.Text = ""; passwordrep.Text = "";
            
        }
    }
}

