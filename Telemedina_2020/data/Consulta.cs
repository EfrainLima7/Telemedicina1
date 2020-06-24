using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Telemedina_2020.data
{
    public class Consulta
    {
        Conexion con = new Conexion();        
        //public DataTable extrae(String nomproc, String nomparam, int valorparam)
        //{
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    SqlCommand cmd = new SqlCommand();

        //    cmd.Connection = con.cad;
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.CommandText = nomproc;
        //    cmd.Parameters.Add(nomparam, SqlDbType.Int).Value = valorparam;

        //    con.Conecta();
        //    da.SelectCommand = cmd;
        //    da.Fill(dt);
        //    con.Desconecta();

        //    return dt;
        //}
        public DataTable extrae(String nombreDelSP, string nombreParametro, int valorParametro)
        {
            SqlCommand cmd = new SqlCommand();
            DataTable dataTable = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter();
            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nombreDelSP;
            cmd.Parameters.Add(nombreParametro, SqlDbType.Int).Value = valorParametro;
            con.GetHashCode();
            dataAdapter.SelectCommand = cmd;
            dataAdapter.Fill(dataTable);
            con.Desconecta();
            return dataTable;

        }

        public DataTable extrae(String nomproc, String nomparam, DateTime valorparam)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomproc;
            cmd.Parameters.Add(nomparam, SqlDbType.DateTime).Value = valorparam;

            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();

            return dt;
        }
        public DataTable extrae(string nomsp, string nomparam, string valorparam)
        {
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomsp;
            cmd.Parameters.Add(nomparam, SqlDbType.VarChar).Value = valorparam;
            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();
            return dt;
        }
        public DataTable extrae(String nomproc, String nomparam, String valorparam,
                String nomparam_2, int valorparam_2)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomproc;
            cmd.Parameters.Add(nomparam, SqlDbType.VarChar).Value = valorparam;
            cmd.Parameters.Add(nomparam_2, SqlDbType.VarChar).Value = valorparam_2;

            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();

            return dt;
        }

        public DataTable extrae(string nomsp, string nomparam1, string valorparam1, string nomparam2, string valorparam2)
        {
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomsp;
            cmd.Parameters.Add(nomparam1, SqlDbType.VarChar).Value = valorparam1;
            cmd.Parameters.Add(nomparam2, SqlDbType.VarChar).Value = valorparam2;
            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();
            return dt;

        }
        public DataTable extrae(String nomproc, String nomparam, int valorparam,
                String nomparam_2, decimal valorparam_2,
                String nomparam_3, decimal valorparam_3)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomproc;
            cmd.Parameters.Add(nomparam, SqlDbType.VarChar).Value = valorparam;
            cmd.Parameters.Add(nomparam_2, SqlDbType.Decimal).Value = valorparam_2;
            cmd.Parameters.Add(nomparam_3, SqlDbType.Decimal).Value = valorparam_3;

            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();

            return dt;
        }

        public DataTable extrae(string nomsp)
        {
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomsp;
            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();
            return dt;
        }

        public void RellenaLista(string nombresp, string campover, string campovalor, DropDownList lista)
        {
            lista.DataSource = extrae(nombresp);
            lista.DataTextField = campover;
            lista.DataValueField = campovalor;
            lista.DataBind();
        }
        public DataTable extrae(string nomsp, string nomparam1, int valorparam1, string nomparam2, string valorparam2)
        {
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomsp;
            cmd.Parameters.Add(nomparam1, SqlDbType.Int).Value = valorparam1;
            cmd.Parameters.Add(nomparam2, SqlDbType.VarChar).Value = valorparam2;
            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();
            return dt;

        }

        public string getvalor(string nomsp, string nomparam, string valorparam)
        {
            string res = "?";
            DataTable dt1 = new DataTable();
            dt1 = extrae(nomsp, nomparam, valorparam);
            int nrows = dt1.Rows.Count;
            if (nrows >= 1) res = dt1.Rows[0][0].ToString();
            return res;
        }
        public DataTable extrae(String nomproc, String nomparam, int valorparam, String nomparam2, int valorparam2, String nomparam3, String valorparam3)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomproc;
            cmd.Parameters.Add(nomparam, SqlDbType.VarChar).Value = valorparam;
            cmd.Parameters.Add(nomparam2, SqlDbType.VarChar).Value = valorparam2;
            cmd.Parameters.Add(nomparam3, SqlDbType.VarChar).Value = valorparam3;
            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();
            return dt;
        }

        public DataTable extrae(String nomproc,
               String nomparam, int valorparam,
               String nomparam_2, String valorparam_2,
               String nomparam_3, decimal valorparam_3,
               String nomparam_4, decimal valorparam_4)

        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con.cad;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = nomproc;
            cmd.Parameters.Add(nomparam, SqlDbType.Int).Value = valorparam;
            cmd.Parameters.Add(nomparam_2, SqlDbType.VarChar).Value = valorparam_2;
            cmd.Parameters.Add(nomparam_3, SqlDbType.Decimal).Value = valorparam_3;
            cmd.Parameters.Add(nomparam_4, SqlDbType.Decimal).Value = valorparam_4;

            con.Conecta();
            da.SelectCommand = cmd;
            da.Fill(dt);
            con.Desconecta();

            return dt;
        }
    }
}