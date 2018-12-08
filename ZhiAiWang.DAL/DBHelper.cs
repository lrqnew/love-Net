using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace ZhiAiWang.DAL
{
    public class DBHelper
    {
        private DBHelper() { }

        public static DBHelper Instance()
        {
            return new DBHelper();
        }

        //private static string connStr = ConfigurationManager.ConnectionStrings["connStr"].ToString();
        private static string connStr = "server=.;uid=sa;pwd=123456;database=ByloveDB";
        private SqlConnection conn;

        public SqlConnection Conn
        {
            get
            {
                if (conn == null)
                {
                    conn = new SqlConnection(connStr);
                }

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                if (conn.State == ConnectionState.Broken)
                {
                    conn.Close();
                    conn.Open();
                }
                return conn;
            }
        }

        public DataTable ExecuteSqlOrProc(string sqlOrProcName, SqlParameter[] sqlParams)
        {
            using (Conn)
            {
                SqlCommand com = new SqlCommand(sqlOrProcName, Conn);

                if (sqlParams != null)
                {
                    com.CommandType = CommandType.StoredProcedure;
                    if (sqlParams.Length > 0)
                    {
                        com.Parameters.AddRange(sqlParams);
                    }
                }

                SqlDataAdapter da = new SqlDataAdapter(com);

                DataTable dt = new DataTable();

                da.Fill(dt);

                return dt;
            }
        }

        public bool ExecuteNonQuery(string sqlOrProcName, SqlParameter[] sqlParams)
        {
            using (Conn)
            {
                SqlCommand com = new SqlCommand(sqlOrProcName, Conn);

                if (sqlParams != null)
                {
                    com.CommandType = CommandType.StoredProcedure;
                    if (sqlParams.Length > 0)
                    {
                        com.Parameters.AddRange(sqlParams);
                    }
                }

                return com.ExecuteNonQuery() > 0;
            }
        }
        public object ExecuteScalar(string sql)
        {
            using (Conn)
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                return cmd.ExecuteScalar();
            }

        }


    }
}
