using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020
{
    public class Conexion
    {
        public SqlConnection cad = new
        //SqlConnection("Data Source = telemedicinarural.database.windows.net; User ID = telemedicina; Password=Limabrasiuperu.1");
        SqlConnection("Data Source =.; Initial Catalog = BASEADACURSO; Integrated Security = True");
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