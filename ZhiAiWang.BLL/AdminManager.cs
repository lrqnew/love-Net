using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//
using System.Data;
using ZhiAiWang.DAL;
namespace ZhiAiWang.BLL
{
    public class AdminManager
    {
        /// <summary>
        /// 管理员登录
        /// </summary>
        /// <param name="uid"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public static DataTable AdminLogin(string uid, string pwd)
        {
          
            return AdminServices.AdminLogin(uid,pwd);
        }
    }
}
