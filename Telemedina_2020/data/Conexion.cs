using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace telemedicina
{
    public class Conexion
    {
        public SqlConnection cad = new
        //SqlConnection("Data Source = telemedicinaprovincial.database.windows.net; Initial Catalog = BASEADACURSO; User ID = telemedicina; Password=Limabrasiuperu.1");
        SqlConnection("Data source =.;Initial Catalog=BASEADACURSO;Integrated Security=True");
       
        public void Conecta()
        {
            cad.Open();
        }

        public void Desconecta()
        {
            cad.Close();
        }
    }
}