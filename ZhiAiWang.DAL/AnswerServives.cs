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
   public class AnswerServives
    {
       public static DataTable SelectAnswer(int cofsId)
       {
           string sql = string.Format(@"select (select UserInfo.petname from UserInfo where  ansUserID=UserInfo.userId) name,Answer.ansContent,ansID,ansDatetime
 from Answer where cofsID='{0}'", cofsId);
           DataSet ds = SQLHelper.Query(sql);
           DataTable dt = ds.Tables[0];
           return dt;
       }
    }
}
