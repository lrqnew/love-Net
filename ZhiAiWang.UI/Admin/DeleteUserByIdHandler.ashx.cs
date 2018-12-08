using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//
using ZhiAiWang.BLL;
namespace ZhiAiWang.UI.Admin
{
    /// <summary>
    /// DeleteUserByIdHandler 的摘要说明
    /// </summary>
    public class DeleteUserByIdHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
           int id=Convert.ToInt32(context.Request["id"]);

           if (UserInfoManager.DeleteUserById(id) >= 1)
           {
               context.Response.Write(0);
           }
           else
           {
               context.Response.Write(1);
           }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}