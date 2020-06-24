using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020.data
{
    public class DetalleCitaCrear1
    {
        Conexion cn = new Conexion();
        public int idPedido, idCliente;
        public int DetCitaCrear(int idped, int idprod) //recibe dos pararmetros tipo ent
        {
            int canfilas = 0;                               //para saber si tuvo o no exito esta operacion
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            cmd.Connection = cn.cad;
            cmd.CommandType = CommandType.StoredProcedure; //tipo de comando
            cmd.CommandText = "Temp_Cita_Crear"; //procedimiento almacenado
            cmd.Parameters.Add("@idMedicoEspecialista", SqlDbType.Int).Value = idprod;
            cmd.Parameters.Add("@idCita", SqlDbType.Int).Value = idped;
            cn.Conecta();
            canfilas = cmd.ExecuteNonQuery(); //resultado que me devuelve la ejecucion 
            cn.Desconecta();
            return canfilas;//devuelve filas
        }
    }
}