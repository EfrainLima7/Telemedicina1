using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Telemedina_2020.CONEXION
{
    public class DetalleCitaCrear
    {
        CONEXIONMAESTRA cn = new CONEXIONMAESTRA();
        public int idPedido, idCliente;
        public int detallePedidoCrear(int idped, int idprod) //recibe dos pararmetros tipo ent
        {
            int canfilas = 0;                               //para saber si tuvo o no exito esta operacion
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            cmd.Connection = cn.cad;
            cmd.CommandType = CommandType.StoredProcedure; //tipo de comando
            cmd.CommandText = "tempdetalle_crear"; //procedimiento almacenado
            cmd.Parameters.Add("@idvehiculo", SqlDbType.Int).Value = idprod;
            cmd.Parameters.Add("@idAlquiler", SqlDbType.Int).Value = idped;
            cn.conecta();
            canfilas = cmd.ExecuteNonQuery(); //resultado que me devuelve la ejecucion 
            cn.desconecta();
            return canfilas;//devuelve filas
        }
    }
}