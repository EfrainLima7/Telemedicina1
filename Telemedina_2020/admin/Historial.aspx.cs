using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telemedina_2020.admin
{
    public partial class Historial : System.Web.UI.Page
    {
        Consulta consulta = new Consulta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (nombres.Text == "" || apellidos.Text == "" || historia.Text == "")
                lblErrorMessage.Text = "Por favor complete los campos obligatorios";
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
                        cmd = new SqlCommand("insertar_historial", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@nombres", nombres.Text);
                        cmd.Parameters.AddWithValue("@apellidos", apellidos.Text);
                        cmd.Parameters.AddWithValue("@historia", historia.Text);
                        cmd.Parameters.AddWithValue("@motivo", motivo.Text);
                        cmd.Parameters.AddWithValue("@antecper", antecper.Text);
                        cmd.Parameters.AddWithValue("@antecfam", antecfam.Text);
                        cmd.Parameters.AddWithValue("@enfermedadactual", enfermedadactual.Text);
                        cmd.Parameters.AddWithValue("@revisionactual", revisionactual.Text);
                        cmd.Parameters.AddWithValue("@consultamedica", consultamedica.Text);
                        cmd.Parameters.AddWithValue("@diagnostico1", diagnostico1.Text);
                        cmd.Parameters.AddWithValue("@diagnostico2", diagnostico2.Text);
                        cmd.Parameters.AddWithValue("@plan1", plan1.Text);
                        cmd.Parameters.AddWithValue("@plan2", plan2.Text);
                        cmd.Parameters.AddWithValue("@nombremedico", nombremedico.Text);
                        cmd.Parameters.AddWithValue("@apellidomedico", apellidomedico.Text);
                        cmd.Parameters.AddWithValue("@codigomedico", codigomedico.Text);
                        cmd.Parameters.AddWithValue("@receta1", receta1.Text);
                        cmd.Parameters.AddWithValue("@receta2", receta2.Text);
                        cmd.Parameters.AddWithValue("@receta3", receta3.Text);
                        cmd.Parameters.AddWithValue("@receta4", receta4.Text);
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
            nombres.Text = ""; apellidos.Text = "";historia.Text = "";motivo.Text = "";antecper.Text = "";antecfam.Text = ""; enfermedadactual.Text = "";revisionactual.Text = "";consultamedica.Text = "";
            diagnostico1.Text = ""; diagnostico2.Text = "";plan1.Text = "";plan2.Text = "";nombremedico.Text = "";apellidomedico.Text = "";codigomedico.Text = "";receta1.Text = "";receta2.Text = "";receta3.Text = "";receta4.Text = "";
        }
    }
}