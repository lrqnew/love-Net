using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Data.Common;
/// <summary>
/// SQLHelper 的摘要说明
/// </summary>
///<summary>
/// Enterprise Library 2.0 数据访问进一步封装类
/// Copyright (C) 2006-2008 LiTianPing
/// All rights reserved
///</summary>
public abstract class SQLHelper
{
    public SQLHelper()
    {
    }

//region公用方法
    ///<summary>
    ///获取表某个字段的最大值
    ///</summary>
    ///<param name="FieldName"></param>
    ///<param name="TableName"></param>
    ///<returns></returns>
    public static int GetMaxID(string FieldName, string TableName)
    {
        string strSql = "select max(" + FieldName + ")+1 from " + TableName;
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        object obj = db.ExecuteScalar(dbCommand);
        if ((Object.Equals(obj, null)) || (Object.Equals(obj, System.DBNull.Value)))
        {
            return 1;
        }
        else
        {
            return int.Parse(obj.ToString());
        }
    }
 

    ///<summary>
    ///加载参数
    ///</summary>
    public static void BuildDBParameter(Database db, DbCommand dbCommand, params SqlParameter[] cmdParms)
    {
        foreach (SqlParameter sp in cmdParms)
        {
            db.AddInParameter(dbCommand, sp.ParameterName, sp.DbType, sp.Value);
        }
    }



    ///<summary>
    ///执行SQL语句，返回影响的记录数
    ///</summary>
    ///<param name="strSql">SQL语句</param>
    ///<returns>影响的记录数</returns>
    public static int ExecuteSql(string strSql)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        return db.ExecuteNonQuery(dbCommand);
    }
    ///<summary>
    ///执行SQL语句，返回影响的记录数(对于长时间查询的语句，设置等待时间避免查询超时)
    ///</summary>
    ///<param name="strSql"></param>
    ///<param name="Times"></param>
    ///<returns></returns>
    public static int ExecuteSqlByTime(string strSql, int Times)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        dbCommand.CommandTimeout = Times;
        return db.ExecuteNonQuery(dbCommand);

    }
    ///<summary>
    ///执行查询语句，返回DataSet
    ///</summary>
    ///<param name="strSql">查询语句</param>
    ///<returns>DataSet</returns>
    public static DataSet Query(string strSql)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        return db.ExecuteDataSet(dbCommand);

    }
    //(对于长时间查询的语句，设置等待时间避免查询超时)
    public static DataSet Query(string strSql, int Times)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        dbCommand.CommandTimeout = Times;
        return db.ExecuteDataSet(dbCommand);
    }





    ///<summary>
    ///执行SQL语句，返回影响的记录数
    ///</summary>
    ///<param name="strSql">SQL语句</param>
    ///<returns>影响的记录数</returns>
    public static int ExecuteSql(string strSql, params SqlParameter[] cmdParms)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        BuildDBParameter(db, dbCommand, cmdParms);
        return db.ExecuteNonQuery(dbCommand);
    }


    ///<summary>
    ///执行多条SQL语句，实现数据库事务。
    ///</summary>
    ///<param name="SQLStringList">SQL语句的哈希表（key为sql语句，value是该语句的SqlParameter[]）</param>
    public static void ExecuteSqlTran(Hashtable SQLStringList)
    {
        Database db = DatabaseFactory.CreateDatabase();
        using (DbConnection dbconn = db.CreateConnection())
        {
            dbconn.Open();
            DbTransaction dbtran = dbconn.BeginTransaction();
            try
            {
                //执行语句
                foreach (DictionaryEntry myDE in SQLStringList)
                {
                    string strsql = myDE.Key.ToString();
                    SqlParameter[] cmdParms = (SqlParameter[])myDE.Value;
                    if (strsql.Trim().Length > 1)
                    {
                        DbCommand dbCommand = db.GetSqlStringCommand(strsql);
                        BuildDBParameter(db, dbCommand, cmdParms);
                        db.ExecuteNonQuery(dbCommand);
                    }
                }
                dbtran.Commit();
            }
            catch
            {
                dbtran.Rollback();
            }
            finally
            {
                dbconn.Close();
            }
        }
    }


  
    ///<summary>
    ///执行查询语句，返回DataSet
    ///</summary>
    ///<param name="strSql">查询语句</param>
    ///<returns>DataSet</returns>
    public static DataSet Query(string strSql, params SqlParameter[] cmdParms)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetSqlStringCommand(strSql);
        BuildDBParameter(db, dbCommand, cmdParms);
        return db.ExecuteDataSet(dbCommand);
    }


    private static void PrepareCommand(SqlCommand cmd, SqlConnection conn, SqlTransaction trans, string cmdText, SqlParameter[] cmdParms)
    {
        if (conn.State != ConnectionState.Open)
            conn.Open();
        cmd.Connection = conn;
        cmd.CommandText = cmdText;
        if (trans != null)
            cmd.Transaction = trans;
        cmd.CommandType = CommandType.Text;//cmdType;
        if (cmdParms != null)
        {
            foreach (SqlParameter parameter in cmdParms)
            {
                if ((parameter.Direction == ParameterDirection.InputOutput || parameter.Direction == ParameterDirection.Input) &&
                     (parameter.Value == null))
                {
                    parameter.Value = DBNull.Value;
                }
                cmd.Parameters.Add(parameter);
            }
        }
    }





    ///<summary>
    ///执行存储过程，返回影响的行数      
    ///</summary>      
    public static int RunProcedure(string storedProcName)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetStoredProcCommand(storedProcName);
        return db.ExecuteNonQuery(dbCommand);
    }

    ///<summary>
    ///执行存储过程，返回输出参数的值和影响的行数      
    ///</summary>
    ///<param name="storedProcName">存储过程名</param>
    ///<param name="parameters">存储过程参数</param>
    ///<param name="OutParameter">输出参数名称</param>
    ///<param name="rowsAffected">影响的行数</param>
    ///<returns></returns>
    public static object RunProcedure(string storedProcName, IDataParameter[] InParameters, SqlParameter OutParameter, int rowsAffected)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetStoredProcCommand(storedProcName);
        BuildDBParameter(db, dbCommand, (SqlParameter[])InParameters);
        db.AddOutParameter(dbCommand, OutParameter.ParameterName, OutParameter.DbType, OutParameter.Size);
        rowsAffected = db.ExecuteNonQuery(dbCommand);
        return db.GetParameterValue(dbCommand, "@" + OutParameter.ParameterName); //得到输出参数的值
    }

   
    ///<summary>
    ///执行存储过程，返回DataSet
    ///</summary>
    ///<param name="storedProcName">存储过程名</param>
    ///<param name="parameters">存储过程参数</param>
    ///<param name="tableName">DataSet结果中的表名</param>
    ///<returns>DataSet</returns>
    //public static DataSet RunProcedure(string storedProcName, IDataParameter[] parameters, string tableName)
    //{
    //    Database db = DatabaseFactory.CreateDatabase();
    //    DbCommand dbCommand = db.GetStoredProcCommand(storedProcName, parameters);
    //    //BuildDBParameter(db, dbCommand, parameters);
    //    return db.ExecuteDataSet(dbCommand);
    //}
    public static DataSet RunProcedure(string storedProcName, IDataParameter[] parameters)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetStoredProcCommand(storedProcName, parameters);
        //BuildDBParameter(db, dbCommand, parameters);
        return db.ExecuteDataSet(dbCommand);
    }
 
 
}