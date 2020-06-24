using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Telemedina_2020.admin
{
    public partial class Nuevos_Especialistas : System.Web.UI.Page
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
                Listar.DataSource = consulta.extrae("Lista_Medicos_Agregar");
                Listar.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (correo.Text == "" || contraseña.Text == "")
                lblErrorMessage.Text = "Por favor complete los campos obligatorios";
            else if (contraseña.Text != contraseñarep.Text)
                lblErrorMessage.Text = "La contraseña no coincide";
            else
            {
                if (nombres.Text != "")
                    if (FileSubirimagen.HasFile) //
                    {
                        string archi = FileSubirimagen.FileName;
                        FileSubirimagen.SaveAs(MapPath("~/admin/images/team/" + archi));
                        image1.ImageUrl = "~/admin/images/team/" + archi;
                    }
                {
                    try
                    {
                        string path = Server.MapPath("~/admin/images/team/") + FileSubirimagen.PostedFile.FileName.Trim();
                        FileSubirimagen.SaveAs(path);
                        image1.ImageUrl = "~/admin/images/team/" + FileSubirimagen.PostedFile.FileName.Trim();
                        string mio = "~/admin/images/team/" + FileSubirimagen.PostedFile.FileName.Trim();
                        //obener datos de imagen
                        //int tamanio = fupload.PostedFile.ContentLength;
                        //byte[] ImagenOriginal = new byte[tamanio];
                        //fupload.PostedFile.InputStream.Read(ImagenOriginal, 0, tamanio);
                        //Bitmap ImagenOriginalBinaria = new Bitmap(fupload.PostedFile.InputStream);

                        SqlConnection con = new SqlConnection();
                        con.ConnectionString = CONEXION.CONEXIONMAESTRA.conexion;
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd = new SqlCommand("insertar_especialista", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@nombres", nombres.Text);
                        cmd.Parameters.AddWithValue("@apellidos", apellidos.Text);
                        cmd.Parameters.AddWithValue("@Telefono", telefono.Text);
                        cmd.Parameters.AddWithValue("@Especialidad", especialidad.Text);
                        cmd.Parameters.AddWithValue("@Descripcion", Descripcion.Text);
                        cmd.Parameters.AddWithValue("@Correo", correo.Text);
                        cmd.Parameters.AddWithValue("@Password", contraseña.Text);
                        cmd.Parameters.AddWithValue("@imagen", SqlDbType.VarChar).Value = mio;
                        //System.IO.MemoryStream ms = new System.IO.MemoryStream();
                        //image..Save(ms, ICONO.Image.RawFormat);

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
        void Clear()
        {
            nombres.Text = ""; telefono.Text = ""; especialidad.Text = ""; correo.Text = ""; contraseña.Text = ""; Descripcion.Text = "";

        }
    }
}