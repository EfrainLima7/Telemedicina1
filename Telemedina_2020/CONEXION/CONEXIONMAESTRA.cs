using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020.CONEXION
{
    public class CONEXIONMAESTRA
    {
        public SqlConnection cad = new SqlConnection();
        //public static string conexion = "Data Source = telemedicinaprovincial.database.windows.net; Initial Catalog = BASEADACURSO; User ID = telemedicina; Password=Limabrasiuperu.1";
        public static string conexion = @"Data source =.;Initial Catalog=BASEADACURSO;Integrated Security=True";

        public void conecta()
        {
            cad.Open();
        }

        public void desconecta()
        {
            cad.Close();
        }
    }
}