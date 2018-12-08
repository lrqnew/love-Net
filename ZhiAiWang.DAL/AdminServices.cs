using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using System.Data;
using System.Data.SqlClient;
using ZhiAiWang.Model;
namespace ZhiAiWang.DAL
{
   public class AdminServices
    {
       /// <summary>
       /// 管理员登录
       /// </summary>
       /// <param name="uid"></param>
       /// <param name="pwd"></param>
       /// <returns></returns>
       public static DataTable AdminLogin(string uid,string pwd)
       {
           string sql = string.Format("select * from Admins where number='{0}' and pwd='{1}'", uid, pwd);
           DataSet ds= SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           return dt;
       }
    }
}
