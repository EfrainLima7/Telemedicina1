using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Telemedina_2020.data
{
    public partial class Correo_Recuperar_Contraseña : System.Web.UI.Page
    {
        string recuperacion;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            mostrar_usuarios_por_correo();
            EnviarCorreo("efrainlima7@gmail.com", "50ABE6A4", "Su Contraseña es:"+recuperacion + "SISTEMA DE TELEMEDICINA", "Solicitud de Contraseña", correo.Text, "");
        }

       private void EnviarCorreo(string emisor, string password, string mensaje, string asunto, string destinatario, string ruta)
       {
            try
            {
                MailMessage correos = new MailMessage();
                SmtpClient envios = new SmtpClient();
                correos.To.Clear();
                correos.Body = "";
                correos.Subject = "";
                correos.Body = mensaje;
                correos.Subject = asunto;
                correos.IsBodyHtml = true;
                correos.To.Add((destinatario));
                correos.From = new MailAddress(emisor);
                envios.Credentials = new NetworkCredential(emisor, password);

                envios.Host = "smtp.gmail.com";
                envios.Port = 587;
                envios.EnableSsl = true;

                envios.Send(correos);
                lblEstado_de_envio.Text = "LA CONTRASEÑA DE RECUPERACION SE HA ENVIADO A SU CORREO";
            }
            catch (Exception )
            {

                lblEstado_de_envio.Text = "Correo no registrado";
            }
       }

        private void mostrar_usuarios_por_correo()
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
                SqlCommand da = new SqlCommand("buscar_USUARIO_por_correo", con);
                da.CommandType = CommandType.StoredProcedure;
                da.Parameters.AddWithValue("@Correo", correo.Text);

                con.Open();
                recuperacion = Convert.ToString(da.ExecuteScalar());//contraseña.text=
                con.Close();
            }
            catch (Exception ex)
            {
                messaje.Text = (ex.Message);

            }

        }
    }
}