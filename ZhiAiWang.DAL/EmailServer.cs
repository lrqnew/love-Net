using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using ZhiAiWang.Model;
namespace ZhiAiWang.DAL
{
   public class EmailServer
    {
        /// <summary>
        /// 查找邮箱
        /// </summary>
        /// <returns></returns>
        public static DataTable selectEmail()
        {
            string sql = string.Format("select * from Email");
            DataSet da = SQLHelper.Query(sql);
            DataTable dt =da.Tables[0];
            return dt;
        }
        /// <summary>
        /// 更改邮箱
        /// </summary>
        /// <returns></returns>
        public static int UpdateEmail(Email email)
        {
            string sql = string.Format("update Email set emailContent='{0}',smtp='{1}',emailUid='{2}',emailPwd='{3}',emailName='{4}'",email.emailContent,email.smtp,email.emailUid,email.emailPwd,email.emailName);
            return SQLHelper.ExecuteSql(sql);
        }
    }
}
