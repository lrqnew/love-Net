using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using ZhiAiWang.DAL;
using ZhiAiWang.Model;
namespace ZhiAiWang.BLL
{
   public class EmailManage
    {
        public static DataTable selectEmail()
        {
            
            return EmailServer.selectEmail();
        }
        /// <summary>
        /// 更改邮箱
        /// </summary>
        /// <returns></returns>
        public static int UpdateEmail(Email email)
        {
            
            return EmailServer.UpdateEmail(email);
        }
    }
}
